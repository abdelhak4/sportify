// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_next_match_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NextMatch _$NextMatchFromJson(Map<String, dynamic> json) {
  return _NextMatch.fromJson(json);
}

/// @nodoc
mixin _$NextMatch {
  Fixtures get fixture => throw _privateConstructorUsedError;
  Teams get teams => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NextMatchCopyWith<NextMatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextMatchCopyWith<$Res> {
  factory $NextMatchCopyWith(NextMatch value, $Res Function(NextMatch) then) =
      _$NextMatchCopyWithImpl<$Res, NextMatch>;
  @useResult
  $Res call({Fixtures fixture, Teams teams});

  $FixturesCopyWith<$Res> get fixture;
  $TeamsCopyWith<$Res> get teams;
}

/// @nodoc
class _$NextMatchCopyWithImpl<$Res, $Val extends NextMatch>
    implements $NextMatchCopyWith<$Res> {
  _$NextMatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fixture = null,
    Object? teams = null,
  }) {
    return _then(_value.copyWith(
      fixture: null == fixture
          ? _value.fixture
          : fixture // ignore: cast_nullable_to_non_nullable
              as Fixtures,
      teams: null == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as Teams,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FixturesCopyWith<$Res> get fixture {
    return $FixturesCopyWith<$Res>(_value.fixture, (value) {
      return _then(_value.copyWith(fixture: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamsCopyWith<$Res> get teams {
    return $TeamsCopyWith<$Res>(_value.teams, (value) {
      return _then(_value.copyWith(teams: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NextMatchImplCopyWith<$Res>
    implements $NextMatchCopyWith<$Res> {
  factory _$$NextMatchImplCopyWith(
          _$NextMatchImpl value, $Res Function(_$NextMatchImpl) then) =
      __$$NextMatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fixtures fixture, Teams teams});

  @override
  $FixturesCopyWith<$Res> get fixture;
  @override
  $TeamsCopyWith<$Res> get teams;
}

/// @nodoc
class __$$NextMatchImplCopyWithImpl<$Res>
    extends _$NextMatchCopyWithImpl<$Res, _$NextMatchImpl>
    implements _$$NextMatchImplCopyWith<$Res> {
  __$$NextMatchImplCopyWithImpl(
      _$NextMatchImpl _value, $Res Function(_$NextMatchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fixture = null,
    Object? teams = null,
  }) {
    return _then(_$NextMatchImpl(
      fixture: null == fixture
          ? _value.fixture
          : fixture // ignore: cast_nullable_to_non_nullable
              as Fixtures,
      teams: null == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as Teams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NextMatchImpl implements _NextMatch {
  const _$NextMatchImpl({required this.fixture, required this.teams});

  factory _$NextMatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$NextMatchImplFromJson(json);

  @override
  final Fixtures fixture;
  @override
  final Teams teams;

  @override
  String toString() {
    return 'NextMatch(fixture: $fixture, teams: $teams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextMatchImpl &&
            (identical(other.fixture, fixture) || other.fixture == fixture) &&
            (identical(other.teams, teams) || other.teams == teams));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fixture, teams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NextMatchImplCopyWith<_$NextMatchImpl> get copyWith =>
      __$$NextMatchImplCopyWithImpl<_$NextMatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NextMatchImplToJson(
      this,
    );
  }
}

abstract class _NextMatch implements NextMatch {
  const factory _NextMatch(
      {required final Fixtures fixture,
      required final Teams teams}) = _$NextMatchImpl;

  factory _NextMatch.fromJson(Map<String, dynamic> json) =
      _$NextMatchImpl.fromJson;

  @override
  Fixtures get fixture;
  @override
  Teams get teams;
  @override
  @JsonKey(ignore: true)
  _$$NextMatchImplCopyWith<_$NextMatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
