import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sportify/model/soccer_team.dart';
import 'package:sportify/model/team_next_match_model.dart';
import 'package:sportify/model/team_players.dart';
import 'package:sportify/providers/soccer_providers.dart';
import 'package:sportify/repository/soccer_repository.dart';

class SoccerViewModel extends ChangeNotifier {
  bool isLoaded = true;
  List<SoccerTeam> soccerTeams = [];
  List<TeamPlayers> teamPlayers = [];
  NextMatch? nextMatch;
  final SoccerTeamRepository soccerTeamRepository;

  SoccerViewModel({
    required this.soccerTeamRepository,
  });

  Future<void> fetchSoccerTeam(String teamName) async {
    try {
      isLoaded = false;
      notifyListeners();
      soccerTeams = await soccerTeamRepository.fetchSoccerTeam(teamName);
      notifyListeners();
    } catch (e) {
      isLoaded = true;
      notifyListeners();
      rethrow;
    }
    isLoaded = true;
    notifyListeners();
  }

  Future<void> fetchNextMatch(String teamId) async {
    try {
      nextMatch = await soccerTeamRepository.fetchNextMatch(teamId);
      notifyListeners();
    } catch (e) {
      rethrow;
    }
    notifyListeners();
  }

  Future<void> fetchTeamPlayers(String teamId) async {
    try {
      teamPlayers = await soccerTeamRepository.fetchTeamPlayers(teamId);
      notifyListeners();
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    notifyListeners();
  }

  Future<void> loadMoreTeamPlayers(String teamId) async {
    try {
      if (!soccerTeamRepository.playersHasMore) return;
      final List<TeamPlayers> morePlayers =
          await soccerTeamRepository.fetchTeamPlayers(teamId);
      teamPlayers.addAll(morePlayers);
      notifyListeners();
    } catch (e) {
      rethrow;
    }
    notifyListeners();
  }
}

final soccerViewModelProvider = ChangeNotifierProvider<SoccerViewModel>((ref) {
  final soccerTeamRepository = ref.watch(teamProvider);
  return SoccerViewModel(soccerTeamRepository: soccerTeamRepository);
});
