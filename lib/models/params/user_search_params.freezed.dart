// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_search_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserSearchParams _$UserSearchParamsFromJson(Map<String, dynamic> json) {
  return _UserSearchParams.fromJson(json);
}

/// @nodoc
mixin _$UserSearchParams {
  String? get qrCode => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get jumin => throw _privateConstructorUsedError;
  String? get suname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSearchParamsCopyWith<UserSearchParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSearchParamsCopyWith<$Res> {
  factory $UserSearchParamsCopyWith(
          UserSearchParams value, $Res Function(UserSearchParams) then) =
      _$UserSearchParamsCopyWithImpl<$Res, UserSearchParams>;
  @useResult
  $Res call(
      {String? qrCode, String? phoneNumber, String? jumin, String? suname});
}

/// @nodoc
class _$UserSearchParamsCopyWithImpl<$Res, $Val extends UserSearchParams>
    implements $UserSearchParamsCopyWith<$Res> {
  _$UserSearchParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrCode = freezed,
    Object? phoneNumber = freezed,
    Object? jumin = freezed,
    Object? suname = freezed,
  }) {
    return _then(_value.copyWith(
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      jumin: freezed == jumin
          ? _value.jumin
          : jumin // ignore: cast_nullable_to_non_nullable
              as String?,
      suname: freezed == suname
          ? _value.suname
          : suname // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSearchParamsImplCopyWith<$Res>
    implements $UserSearchParamsCopyWith<$Res> {
  factory _$$UserSearchParamsImplCopyWith(_$UserSearchParamsImpl value,
          $Res Function(_$UserSearchParamsImpl) then) =
      __$$UserSearchParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? qrCode, String? phoneNumber, String? jumin, String? suname});
}

/// @nodoc
class __$$UserSearchParamsImplCopyWithImpl<$Res>
    extends _$UserSearchParamsCopyWithImpl<$Res, _$UserSearchParamsImpl>
    implements _$$UserSearchParamsImplCopyWith<$Res> {
  __$$UserSearchParamsImplCopyWithImpl(_$UserSearchParamsImpl _value,
      $Res Function(_$UserSearchParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrCode = freezed,
    Object? phoneNumber = freezed,
    Object? jumin = freezed,
    Object? suname = freezed,
  }) {
    return _then(_$UserSearchParamsImpl(
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      jumin: freezed == jumin
          ? _value.jumin
          : jumin // ignore: cast_nullable_to_non_nullable
              as String?,
      suname: freezed == suname
          ? _value.suname
          : suname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSearchParamsImpl extends _UserSearchParams {
  const _$UserSearchParamsImpl(
      {this.qrCode, this.phoneNumber, this.jumin, this.suname})
      : super._();

  factory _$UserSearchParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSearchParamsImplFromJson(json);

  @override
  final String? qrCode;
  @override
  final String? phoneNumber;
  @override
  final String? jumin;
  @override
  final String? suname;

  @override
  String toString() {
    return 'UserSearchParams(qrCode: $qrCode, phoneNumber: $phoneNumber, jumin: $jumin, suname: $suname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSearchParamsImpl &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.jumin, jumin) || other.jumin == jumin) &&
            (identical(other.suname, suname) || other.suname == suname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, qrCode, phoneNumber, jumin, suname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSearchParamsImplCopyWith<_$UserSearchParamsImpl> get copyWith =>
      __$$UserSearchParamsImplCopyWithImpl<_$UserSearchParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSearchParamsImplToJson(
      this,
    );
  }
}

abstract class _UserSearchParams extends UserSearchParams {
  const factory _UserSearchParams(
      {final String? qrCode,
      final String? phoneNumber,
      final String? jumin,
      final String? suname}) = _$UserSearchParamsImpl;
  const _UserSearchParams._() : super._();

  factory _UserSearchParams.fromJson(Map<String, dynamic> json) =
      _$UserSearchParamsImpl.fromJson;

  @override
  String? get qrCode;
  @override
  String? get phoneNumber;
  @override
  String? get jumin;
  @override
  String? get suname;
  @override
  @JsonKey(ignore: true)
  _$$UserSearchParamsImplCopyWith<_$UserSearchParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
