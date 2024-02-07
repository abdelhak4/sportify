// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_opponent_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Home _$HomeFromJson(Map<String, dynamic> json) {
  return _Home.fromJson(json);
}

/// @nodoc
mixin _$Home {
  String get name => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeCopyWith<Home> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCopyWith<$Res> {
  factory $HomeCopyWith(Home value, $Res Function(Home) then) =
      _$HomeCopyWithImpl<$Res, Home>;
  @useResult
  $Res call({String name, String logo, int id});
}

/// @nodoc
class _$HomeCopyWithImpl<$Res, $Val extends Home>
    implements $HomeCopyWith<$Res> {
  _$HomeCopyWithImpl(this._value, this._then);

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
abstract class _$$HomeImplCopyWith<$Res> implements $HomeCopyWith<$Res> {
  factory _$$HomeImplCopyWith(
          _$HomeImpl value, $Res Function(_$HomeImpl) then) =
      __$$HomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String logo, int id});
}

/// @nodoc
class __$$HomeImplCopyWithImpl<$Res>
    extends _$HomeCopyWithImpl<$Res, _$HomeImpl>
    implements _$$HomeImplCopyWith<$Res> {
  __$$HomeImplCopyWithImpl(_$HomeImpl _value, $Res Function(_$HomeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? logo = null,
    Object? id = null,
  }) {
    return _then(_$HomeImpl(
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
class _$HomeImpl implements _Home {
  const _$HomeImpl({required this.name, required this.logo, required this.id});

  factory _$HomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeImplFromJson(json);

  @override
  final String name;
  @override
  final String logo;
  @override
  final int id;

  @override
  String toString() {
    return 'Home(name: $name, logo: $logo, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeImpl &&
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
  _$$HomeImplCopyWith<_$HomeImpl> get copyWith =>
      __$$HomeImplCopyWithImpl<_$HomeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeImplToJson(
      this,
    );
  }
}

abstract class _Home implements Home {
  const factory _Home(
      {required final String name,
      required final String logo,
      required final int id}) = _$HomeImpl;

  factory _Home.fromJson(Map<String, dynamic> json) = _$HomeImpl.fromJson;

  @override
  String get name;
  @override
  String get logo;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$HomeImplCopyWith<_$HomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
