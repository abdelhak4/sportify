import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sportify/repository/soccer_repository.dart';

final teamProvider = Provider<SoccerTeamRepository>((ref) {
  return SoccerRepositoryImpl();
});