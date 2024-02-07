// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teams_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamsImpl _$$TeamsImplFromJson(Map<String, dynamic> json) => _$TeamsImpl(
      home: Home.fromJson(json['home'] as Map<String, dynamic>),
      away: Away.fromJson(json['away'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TeamsImplToJson(_$TeamsImpl instance) =>
    <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
    };
