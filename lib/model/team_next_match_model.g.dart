// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_next_match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NextMatchImpl _$$NextMatchImplFromJson(Map<String, dynamic> json) =>
    _$NextMatchImpl(
      fixture: Fixtures.fromJson(json['fixture'] as Map<String, dynamic>),
      teams: Teams.fromJson(json['teams'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NextMatchImplToJson(_$NextMatchImpl instance) =>
    <String, dynamic>{
      'fixture': instance.fixture,
      'teams': instance.teams,
    };
