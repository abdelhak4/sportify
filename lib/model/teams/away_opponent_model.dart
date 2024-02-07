
import 'package:freezed_annotation/freezed_annotation.dart';

part 'away_opponent_model.freezed.dart';
part 'away_opponent_model.g.dart';

@freezed
class Away with _$Away {
  const factory Away({
    required String name,
    required String logo,
    required int id,
  }) = _Away;

  factory Away.fromJson(Map<String, dynamic> json) => _$AwayFromJson(json);
}