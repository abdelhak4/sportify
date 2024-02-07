// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teams_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Teams _$TeamsFromJson(Map<String, dynamic> json) {
  return _Teams.fromJson(json);
}

/// @nodoc
mixin _$Teams {
  Home get home => throw _privateConstructorUsedError;
  Away get away => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamsCopyWith<Teams> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamsCopyWith<$Res> {
  factory $TeamsCopyWith(Teams value, $Res Function(Teams) then) =
      _$TeamsCopyWithImpl<$Res, Teams>;
  @useResult
  $Res call({Home home, Away away});

  $HomeCopyWith<$Res> get home;
  $AwayCopyWith<$Res> get away;
}

/// @nodoc
class _$TeamsCopyWithImpl<$Res, $Val extends Teams>
    implements $TeamsCopyWith<$Res> {
  _$TeamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = null,
    Object? away = null,
  }) {
    return _then(_value.copyWith(
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Home,
      away: null == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as Away,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeCopyWith<$Res> get home {
    return $HomeCopyWith<$Res>(_value.home, (value) {
      return _then(_value.copyWith(home: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AwayCopyWith<$Res> get away {
    return $AwayCopyWith<$Res>(_value.away, (value) {
      return _then(_value.copyWith(away: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeamsImplCopyWith<$Res> implements $TeamsCopyWith<$Res> {
  factory _$$TeamsImplCopyWith(
          _$TeamsImpl value, $Res Function(_$TeamsImpl) then) =
      __$$TeamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Home home, Away away});

  @override
  $HomeCopyWith<$Res> get home;
  @override
  $AwayCopyWith<$Res> get away;
}

/// @nodoc
class __$$TeamsImplCopyWithImpl<$Res>
    extends _$TeamsCopyWithImpl<$Res, _$TeamsImpl>
    implements _$$TeamsImplCopyWith<$Res> {
  __$$TeamsImplCopyWithImpl(
      _$TeamsImpl _value, $Res Function(_$TeamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = null,
    Object? away = null,
  }) {
    return _then(_$TeamsImpl(
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Home,
      away: null == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as Away,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamsImpl implements _Teams {
  const _$TeamsImpl({required this.home, required this.away});

  factory _$TeamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamsImplFromJson(json);

  @override
  final Home home;
  @override
  final Away away;

  @override
  String toString() {
    return 'Teams(home: $home, away: $away)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamsImpl &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.away, away) || other.away == away));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, home, away);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamsImplCopyWith<_$TeamsImpl> get copyWith =>
      __$$TeamsImplCopyWithImpl<_$TeamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamsImplToJson(
      this,
    );
  }
}

abstract class _Teams implements Teams {
  const factory _Teams({required final Home home, required final Away away}) =
      _$TeamsImpl;

  factory _Teams.fromJson(Map<String, dynamic> json) = _$TeamsImpl.fromJson;

  @override
  Home get home;
  @override
  Away get away;
  @override
  @JsonKey(ignore: true)
  _$$TeamsImplCopyWith<_$TeamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
