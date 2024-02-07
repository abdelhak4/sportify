// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
mixin _$Status {
  String get long => throw _privateConstructorUsedError;
  String get short => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
  @useResult
  $Res call({String long, String short});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? long = null,
    Object? short = null,
  }) {
    return _then(_value.copyWith(
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      short: null == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatusImplCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$StatusImplCopyWith(
          _$StatusImpl value, $Res Function(_$StatusImpl) then) =
      __$$StatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String long, String short});
}

/// @nodoc
class __$$StatusImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusImpl>
    implements _$$StatusImplCopyWith<$Res> {
  __$$StatusImplCopyWithImpl(
      _$StatusImpl _value, $Res Function(_$StatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? long = null,
    Object? short = null,
  }) {
    return _then(_$StatusImpl(
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      short: null == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusImpl implements _Status {
  const _$StatusImpl({required this.long, required this.short});

  factory _$StatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusImplFromJson(json);

  @override
  final String long;
  @override
  final String short;

  @override
  String toString() {
    return 'Status(long: $long, short: $short)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusImpl &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.short, short) || other.short == short));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, long, short);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      __$$StatusImplCopyWithImpl<_$StatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusImplToJson(
      this,
    );
  }
}

abstract class _Status implements Status {
  const factory _Status(
      {required final String long, required final String short}) = _$StatusImpl;

  factory _Status.fromJson(Map<String, dynamic> json) = _$StatusImpl.fromJson;

  @override
  String get long;
  @override
  String get short;
  @override
  @JsonKey(ignore: true)
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
