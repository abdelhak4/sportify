import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sportify/model/soccer_team.dart';
import 'package:sportify/providers/soccer_providers.dart';
import 'package:sportify/repository/soccer_repository.dart';

class HomeViewModel extends ChangeNotifier {
  bool isLoaded = false;
  List<SoccerTeam> soccerTeams = [];
  final SoccerTeamRepository soccerTeamRepository;

  HomeViewModel({
    required this.soccerTeamRepository,
  });

  Future<void> fetchSoccerTeam(String teamName) async {
    try {
      isLoaded = true;
      soccerTeams = await soccerTeamRepository.fetchSoccerTeam(teamName);
      notifyListeners();
    } catch (e) {
      debugPrint(e.toString());
    }
    isLoaded = false;
    notifyListeners();
  }
}

final homeViewModelProvider = ChangeNotifierProvider<HomeViewModel>((ref) {
  final soccerTeamRepository = ref.watch(teamProvider);
  return HomeViewModel(soccerTeamRepository: soccerTeamRepository);
});
