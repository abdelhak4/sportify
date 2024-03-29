// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_players.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamPlayers _$TeamPlayersFromJson(Map<String, dynamic> json) {
  return _TeamPlayers.fromJson(json);
}

/// @nodoc
mixin _$TeamPlayers {
  String get name => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamPlayersCopyWith<TeamPlayers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamPlayersCopyWith<$Res> {
  factory $TeamPlayersCopyWith(
          TeamPlayers value, $Res Function(TeamPlayers) then) =
      _$TeamPlayersCopyWithImpl<$Res, TeamPlayers>;
  @useResult
  $Res call({String name, String photo});
}

/// @nodoc
class _$TeamPlayersCopyWithImpl<$Res, $Val extends TeamPlayers>
    implements $TeamPlayersCopyWith<$Res> {
  _$TeamPlayersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? photo = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamPlayersImplCopyWith<$Res>
    implements $TeamPlayersCopyWith<$Res> {
  factory _$$TeamPlayersImplCopyWith(
          _$TeamPlayersImpl value, $Res Function(_$TeamPlayersImpl) then) =
      __$$TeamPlayersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String photo});
}

/// @nodoc
class __$$TeamPlayersImplCopyWithImpl<$Res>
    extends _$TeamPlayersCopyWithImpl<$Res, _$TeamPlayersImpl>
    implements _$$TeamPlayersImplCopyWith<$Res> {
  __$$TeamPlayersImplCopyWithImpl(
      _$TeamPlayersImpl _value, $Res Function(_$TeamPlayersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? photo = null,
  }) {
    return _then(_$TeamPlayersImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamPlayersImpl implements _TeamPlayers {
  _$TeamPlayersImpl({required this.name, required this.photo});

  factory _$TeamPlayersImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamPlayersImplFromJson(json);

  @override
  final String name;
  @override
  final String photo;

  @override
  String toString() {
    return 'TeamPlayers(name: $name, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamPlayersImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamPlayersImplCopyWith<_$TeamPlayersImpl> get copyWith =>
      __$$TeamPlayersImplCopyWithImpl<_$TeamPlayersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamPlayersImplToJson(
      this,
    );
  }
}

abstract class _TeamPlayers implements TeamPlayers {
  factory _TeamPlayers(
      {required final String name,
      required final String photo}) = _$TeamPlayersImpl;

  factory _TeamPlayers.fromJson(Map<String, dynamic> json) =
      _$TeamPlayersImpl.fromJson;

  @override
  String get name;
  @override
  String get photo;
  @override
  @JsonKey(ignore: true)
  _$$TeamPlayersImplCopyWith<_$TeamPlayersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
