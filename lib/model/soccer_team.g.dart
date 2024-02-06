// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soccer_team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SoccerTeamImpl _$$SoccerTeamImplFromJson(Map<String, dynamic> json) =>
    _$SoccerTeamImpl(
      name: json['name'] as String,
      logo: json['logo'] as String,
      id: json['id'] as int,
      country: json['country'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$SoccerTeamImplToJson(_$SoccerTeamImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'logo': instance.logo,
      'id': instance.id,
      'country': instance.country,
      'code': instance.code,
    };
