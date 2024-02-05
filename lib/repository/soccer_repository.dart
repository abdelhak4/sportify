import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sportify/model/soccer_team.dart';

import 'package:http/http.dart' as http;

abstract class SoccerTeamRepository {
  Future<List<SoccerTeam>> fetchSoccerTeam(String teamName);
}

class SoccerRepositoryImpl implements SoccerTeamRepository {
  final Map<String, String> header = {
    'x-rapidapi-host': 'v3.football.api-sports.io',
    'x-rapidapi-key': 'api_key', // TODO remove it
  };

  // final _dioClient = http();
  @override
  Future<List<SoccerTeam>> fetchSoccerTeam(String teamName) async {
    try {
      final uri = Uri.https(
          'v3.football.api-sports.io', '/teams', {'search': teamName});
      final response = await http.get(
        uri,
        headers: header,
      );

      Map<String, dynamic> data = jsonDecode(response.body);
      if (data['errors'] != null || data['errors'].isNotEmpty) {
        throw Exception('An error occurred while fetching data');
      }
      final t = data['response']
          .map<SoccerTeam>((e) => SoccerTeam.fromJson(e['team']))
          .toList();
      return t;
    } catch (e) {
      debugPrint(e.runtimeType.toString());
      debugPrint(e.toString());
      rethrow;
    }
  }
}
