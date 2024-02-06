import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_players.freezed.dart';
part 'team_players.g.dart';

@freezed
class TeamPlayers with _$TeamPlayers {
  factory TeamPlayers({
    required String name,
    required String photo,
  }) = _TeamPlayers;

  factory TeamPlayers.fromJson(Map<String, dynamic> json) =>
      _$TeamPlayersFromJson(json);
}
