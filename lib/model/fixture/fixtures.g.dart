// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixtures.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FixturesImpl _$$FixturesImplFromJson(Map<String, dynamic> json) =>
    _$FixturesImpl(
      stadium: Venue.fromJson(json['venue'] as Map<String, dynamic>),
      status: Status.fromJson(json['status'] as Map<String, dynamic>),
      date: json['date'] as String,
    );

Map<String, dynamic> _$$FixturesImplToJson(_$FixturesImpl instance) =>
    <String, dynamic>{
      'venue': instance.stadium,
      'status': instance.status,
      'date': instance.date,
    };
