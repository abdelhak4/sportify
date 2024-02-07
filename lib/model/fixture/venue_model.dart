
import 'package:freezed_annotation/freezed_annotation.dart';

part 'venue_model.freezed.dart';
part 'venue_model.g.dart';

@freezed
class Venue with _$Venue {
  const factory Venue({
    required String? name,
    required String? city,
  }) = _Venue;

  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);
}
