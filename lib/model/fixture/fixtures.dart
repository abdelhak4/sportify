import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sportify/model/fixture/status_model.dart';
import 'package:sportify/model/fixture/venue_model.dart';
// import 'package:sportify/model/fixtures.dart';

part 'fixtures.g.dart';
part 'fixtures.freezed.dart';

@freezed
class Fixtures with _$Fixtures {
  const factory Fixtures({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'venue') required Venue stadium,
    required Status status,
    required String date,
  }) = _Fixtures;

  factory Fixtures.fromJson(Map<String, dynamic> json) =>
      _$FixturesFromJson(json);
}
