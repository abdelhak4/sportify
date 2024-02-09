import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sportify/model/soccer_team.dart';

import 'package:http/http.dart' as http;
import 'package:sportify/model/team_next_match_model.dart';
import 'package:sportify/model/team_players.dart';

abstract class SoccerTeamRepository {
  Future<List<SoccerTeam>> fetchSoccerTeam(String teamName);
  Future<List<TeamPlayers>> fetchTeamPlayers(
    String teamId, {
    season = '2023',
  });
  Future<NextMatch> fetchNextMatch(String teamId);

  bool playersHasMore = false;
}

class SoccerRepositoryImpl implements SoccerTeamRepository {
  final Map<String, String> header = {
    'x-rapidapi-key': dotenv.env['API_KEY'] ?? "",
  };
  final baseUrl = 'v3.football.api-sports.io';

  @override
  bool playersHasMore = false;
  int _playersPage = 1;

  @override
  Future<List<SoccerTeam>> fetchSoccerTeam(String teamName) async {
    final uri = Uri.https(
      baseUrl,
      '/teams',
      {'search': teamName},
    );
    final response = await http.get(
      uri,
      headers: header,
    );
    Map<String, dynamic> data = jsonDecode(response.body);
    final List<SoccerTeam> teamData = data['response']
        .map<SoccerTeam>((e) => SoccerTeam.fromJson(e['team']))
        .toList();
    if (teamData.isEmpty) throw Exception('No data found');
    return teamData;
  }

  @override
  Future<List<TeamPlayers>> fetchTeamPlayers(
    String teamId, {
    season = '2023',
  }) async {
    final uri = Uri.https(
      baseUrl,
      '/players',
      {'team': teamId, 'season': season, 'page': _playersPage.toString()},
    );
    final response = await http.get(
      uri,
      headers: header,
    );
    Map<String, dynamic> data = jsonDecode(response.body);
    if (data['paging']['total'] != 1 &&
        data['paging']['total'] > _playersPage) {
      playersHasMore = true;
      _playersPage++;
    } else {
      playersHasMore = false;
      _playersPage = 1;
    }
    final List<TeamPlayers> teamPlayers = data['response']
        .map<TeamPlayers>((e) => TeamPlayers.fromJson(e['player']))
        .toList();
    if (teamPlayers.isEmpty) throw Exception('No data found');
    return teamPlayers;
  }

  @override
  Future<NextMatch> fetchNextMatch(String teamId) async {
    final uri = Uri.https(
      baseUrl,
      '/fixtures',
      {'team': teamId, 'next': '1', 'timezone': 'Africa/Casablanca'},
    );
    final response = await http.get(
      uri,
      headers: header,
    );
    Map<String, dynamic> data = jsonDecode(response.body);
    final List<NextMatch> nextMatch =
        data['response'].map<NextMatch>((e) => NextMatch.fromJson(e)).toList();
    if (nextMatch.isEmpty) throw Exception('No data found');
    return nextMatch.first;
  }
}
