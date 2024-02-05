import 'package:freezed_annotation/freezed_annotation.dart';

part 'soccer_team.freezed.dart';
part 'soccer_team.g.dart';

@freezed
class SoccerTeam with _$SoccerTeam {
  factory SoccerTeam({
    required String name,
    required String logo,
    required int id,
  }) = _SoccerTeam;

  factory SoccerTeam.fromJson(Map<String, dynamic> json) =>
      _$SoccerTeamFromJson(json);
}
