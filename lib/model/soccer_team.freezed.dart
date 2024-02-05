// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'soccer_team.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SoccerTeam _$SoccerTeamFromJson(Map<String, dynamic> json) {
  return _SoccerTeam.fromJson(json);
}

/// @nodoc
mixin _$SoccerTeam {
  String get name => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SoccerTeamCopyWith<SoccerTeam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoccerTeamCopyWith<$Res> {
  factory $SoccerTeamCopyWith(
          SoccerTeam value, $Res Function(SoccerTeam) then) =
      _$SoccerTeamCopyWithImpl<$Res, SoccerTeam>;
  @useResult
  $Res call({String name, String logo, int id});
}

/// @nodoc
class _$SoccerTeamCopyWithImpl<$Res, $Val extends SoccerTeam>
    implements $SoccerTeamCopyWith<$Res> {
  _$SoccerTeamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? logo = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SoccerTeamImplCopyWith<$Res>
    implements $SoccerTeamCopyWith<$Res> {
  factory _$$SoccerTeamImplCopyWith(
          _$SoccerTeamImpl value, $Res Function(_$SoccerTeamImpl) then) =
      __$$SoccerTeamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String logo, int id});
}

/// @nodoc
class __$$SoccerTeamImplCopyWithImpl<$Res>
    extends _$SoccerTeamCopyWithImpl<$Res, _$SoccerTeamImpl>
    implements _$$SoccerTeamImplCopyWith<$Res> {
  __$$SoccerTeamImplCopyWithImpl(
      _$SoccerTeamImpl _value, $Res Function(_$SoccerTeamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? logo = null,
    Object? id = null,
  }) {
    return _then(_$SoccerTeamImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoccerTeamImpl implements _SoccerTeam {
  _$SoccerTeamImpl({required this.name, required this.logo, required this.id});

  factory _$SoccerTeamImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoccerTeamImplFromJson(json);

  @override
  final String name;
  @override
  final String logo;
  @override
  final int id;

  @override
  String toString() {
    return 'SoccerTeam(name: $name, logo: $logo, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoccerTeamImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, logo, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SoccerTeamImplCopyWith<_$SoccerTeamImpl> get copyWith =>
      __$$SoccerTeamImplCopyWithImpl<_$SoccerTeamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoccerTeamImplToJson(
      this,
    );
  }
}

abstract class _SoccerTeam implements SoccerTeam {
  factory _SoccerTeam(
      {required final String name,
      required final String logo,
      required final int id}) = _$SoccerTeamImpl;

  factory _SoccerTeam.fromJson(Map<String, dynamic> json) =
      _$SoccerTeamImpl.fromJson;

  @override
  String get name;
  @override
  String get logo;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$SoccerTeamImplCopyWith<_$SoccerTeamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
