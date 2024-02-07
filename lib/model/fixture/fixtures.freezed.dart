// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fixtures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Fixtures _$FixturesFromJson(Map<String, dynamic> json) {
  return _Fixtures.fromJson(json);
}

/// @nodoc
mixin _$Fixtures {
  @JsonKey(name: 'venue')
  Venue get stadium => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FixturesCopyWith<Fixtures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixturesCopyWith<$Res> {
  factory $FixturesCopyWith(Fixtures value, $Res Function(Fixtures) then) =
      _$FixturesCopyWithImpl<$Res, Fixtures>;
  @useResult
  $Res call(
      {@JsonKey(name: 'venue') Venue stadium, Status status, String date});

  $VenueCopyWith<$Res> get stadium;
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$FixturesCopyWithImpl<$Res, $Val extends Fixtures>
    implements $FixturesCopyWith<$Res> {
  _$FixturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stadium = null,
    Object? status = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      stadium: null == stadium
          ? _value.stadium
          : stadium // ignore: cast_nullable_to_non_nullable
              as Venue,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VenueCopyWith<$Res> get stadium {
    return $VenueCopyWith<$Res>(_value.stadium, (value) {
      return _then(_value.copyWith(stadium: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FixturesImplCopyWith<$Res>
    implements $FixturesCopyWith<$Res> {
  factory _$$FixturesImplCopyWith(
          _$FixturesImpl value, $Res Function(_$FixturesImpl) then) =
      __$$FixturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'venue') Venue stadium, Status status, String date});

  @override
  $VenueCopyWith<$Res> get stadium;
  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$FixturesImplCopyWithImpl<$Res>
    extends _$FixturesCopyWithImpl<$Res, _$FixturesImpl>
    implements _$$FixturesImplCopyWith<$Res> {
  __$$FixturesImplCopyWithImpl(
      _$FixturesImpl _value, $Res Function(_$FixturesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stadium = null,
    Object? status = null,
    Object? date = null,
  }) {
    return _then(_$FixturesImpl(
      stadium: null == stadium
          ? _value.stadium
          : stadium // ignore: cast_nullable_to_non_nullable
              as Venue,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FixturesImpl implements _Fixtures {
  const _$FixturesImpl(
      {@JsonKey(name: 'venue') required this.stadium,
      required this.status,
      required this.date});

  factory _$FixturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$FixturesImplFromJson(json);

  @override
  @JsonKey(name: 'venue')
  final Venue stadium;
  @override
  final Status status;
  @override
  final String date;

  @override
  String toString() {
    return 'Fixtures(stadium: $stadium, status: $status, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FixturesImpl &&
            (identical(other.stadium, stadium) || other.stadium == stadium) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stadium, status, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FixturesImplCopyWith<_$FixturesImpl> get copyWith =>
      __$$FixturesImplCopyWithImpl<_$FixturesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FixturesImplToJson(
      this,
    );
  }
}

abstract class _Fixtures implements Fixtures {
  const factory _Fixtures(
      {@JsonKey(name: 'venue') required final Venue stadium,
      required final Status status,
      required final String date}) = _$FixturesImpl;

  factory _Fixtures.fromJson(Map<String, dynamic> json) =
      _$FixturesImpl.fromJson;

  @override
  @JsonKey(name: 'venue')
  Venue get stadium;
  @override
  Status get status;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$FixturesImplCopyWith<_$FixturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
