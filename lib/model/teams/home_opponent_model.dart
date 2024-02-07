
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_opponent_model.freezed.dart';
part 'home_opponent_model.g.dart';

@freezed
class Home with _$Home {
  const factory Home({
    required String name,
    required String logo,
    required int id,
  }) = _Home;

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
}