import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sportify/model/soccer_team.dart';

import 'package:http/http.dart' as http;
import 'package:sportify/model/team_players.dart';

abstract class SoccerTeamRepository {
  Future<List<SoccerTeam>> fetchSoccerTeam(String teamName);
  Future<List<TeamPlayers>> fetchTeamPlayers(String teamId,
      {season = '2023', page = '1'});
}

class SoccerRepositoryImpl implements SoccerTeamRepository {
  final Map<String, String> header = {
    'x-rapidapi-key': dotenv.env['API_KEY'] ?? "",
  };
  final baseUrl = 'v3.football.api-sports.io';
  // final _dioClient = http();
  @override
  Future<List<SoccerTeam>> fetchSoccerTeam(String teamName) async {
    final uri = Uri.https(baseUrl, '/teams', {'search': teamName});
    final response = await http.get(
      uri,
      headers: header,
    );
    Map<String, dynamic> data = jsonDecode(response.body);
    // print(data);
    final List<SoccerTeam> teamData = data['response']
        .map<SoccerTeam>((e) => SoccerTeam.fromJson(e['team']))
        .toList();
    print(teamData);
    if (teamData.isEmpty) throw Exception('No data found');
    return teamData;
  }

  @override
  Future<List<TeamPlayers>> fetchTeamPlayers(String teamId,
      {season = '2023', page = '1'}) async {
    final uri = Uri.https(
        baseUrl, '/players', {'team': teamId, 'season': season, 'page': page});
    final response = await http.get(
      uri,
      headers: header,
    );
    // print(response.body);
    // print('-------------------');

    Map<String, dynamic> data = jsonDecode(response.body);
    // data['response'].forEach((e) {
    //   print(e['player']);
    // });
    final List<TeamPlayers> teamPlayers = data['response']
        .map<TeamPlayers>((e) => TeamPlayers.fromJson(e['player']))
        .toList();
    
    print(teamPlayers);
    if (teamPlayers.isEmpty) throw Exception('No data found');
    return teamPlayers;
  }
}
