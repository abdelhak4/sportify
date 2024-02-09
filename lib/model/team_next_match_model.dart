
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sportify/model/fixture/fixtures.dart';
import 'package:sportify/model/teams/teams_model.dart';

part 'team_next_match_model.freezed.dart';
part 'team_next_match_model.g.dart';

@freezed
class NextMatch with _$NextMatch {
  const factory NextMatch({
    required Fixtures fixture,
    required Teams teams,
  }) = _NextMatch;

  factory NextMatch.fromJson(Map<String, dynamic> json) =>
      _$NextMatchFromJson(json);
}