
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sportify/model/teams/away_opponent_model.dart';
import 'package:sportify/model/teams/home_opponent_model.dart';



part 'teams_model.freezed.dart';
part 'teams_model.g.dart';

@freezed
class Teams with _$Teams {
  const factory Teams({
    required Home home,
    required Away away,
  }) = _Teams;

  factory Teams.fromJson(Map<String, dynamic> json) => _$TeamsFromJson(json);
}




