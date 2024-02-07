
import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_model.freezed.dart';
part 'status_model.g.dart';

@freezed
class Status with _$Status {
  const factory Status({
    required String long,
    required String short,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}
