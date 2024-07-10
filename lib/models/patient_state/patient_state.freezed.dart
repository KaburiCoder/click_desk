// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientState _$PatientStateFromJson(Map<String, dynamic> json) {
  return _PatientState.fromJson(json);
}

/// @nodoc
mixin _$PatientState {
  int get wjAuto => throw _privateConstructorUsedError;
  String get chart => throw _privateConstructorUsedError;
  String get suname => throw _privateConstructorUsedError;
  String get jumin => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get postalCode => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get addressDetail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientStateCopyWith<PatientState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientStateCopyWith<$Res> {
  factory $PatientStateCopyWith(
          PatientState value, $Res Function(PatientState) then) =
      _$PatientStateCopyWithImpl<$Res, PatientState>;
  @useResult
  $Res call(
      {int wjAuto,
      String chart,
      String suname,
      String jumin,
      String phoneNumber,
      String postalCode,
      String address,
      String addressDetail});
}

/// @nodoc
class _$PatientStateCopyWithImpl<$Res, $Val extends PatientState>
    implements $PatientStateCopyWith<$Res> {
  _$PatientStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wjAuto = null,
    Object? chart = null,
    Object? suname = null,
    Object? jumin = null,
    Object? phoneNumber = null,
    Object? postalCode = null,
    Object? address = null,
    Object? addressDetail = null,
  }) {
    return _then(_value.copyWith(
      wjAuto: null == wjAuto
          ? _value.wjAuto
          : wjAuto // ignore: cast_nullable_to_non_nullable
              as int,
      chart: null == chart
          ? _value.chart
          : chart // ignore: cast_nullable_to_non_nullable
              as String,
      suname: null == suname
          ? _value.suname
          : suname // ignore: cast_nullable_to_non_nullable
              as String,
      jumin: null == jumin
          ? _value.jumin
          : jumin // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetail: null == addressDetail
          ? _value.addressDetail
          : addressDetail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientStateImplCopyWith<$Res>
    implements $PatientStateCopyWith<$Res> {
  factory _$$PatientStateImplCopyWith(
          _$PatientStateImpl value, $Res Function(_$PatientStateImpl) then) =
      __$$PatientStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int wjAuto,
      String chart,
      String suname,
      String jumin,
      String phoneNumber,
      String postalCode,
      String address,
      String addressDetail});
}

/// @nodoc
class __$$PatientStateImplCopyWithImpl<$Res>
    extends _$PatientStateCopyWithImpl<$Res, _$PatientStateImpl>
    implements _$$PatientStateImplCopyWith<$Res> {
  __$$PatientStateImplCopyWithImpl(
      _$PatientStateImpl _value, $Res Function(_$PatientStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wjAuto = null,
    Object? chart = null,
    Object? suname = null,
    Object? jumin = null,
    Object? phoneNumber = null,
    Object? postalCode = null,
    Object? address = null,
    Object? addressDetail = null,
  }) {
    return _then(_$PatientStateImpl(
      wjAuto: null == wjAuto
          ? _value.wjAuto
          : wjAuto // ignore: cast_nullable_to_non_nullable
              as int,
      chart: null == chart
          ? _value.chart
          : chart // ignore: cast_nullable_to_non_nullable
              as String,
      suname: null == suname
          ? _value.suname
          : suname // ignore: cast_nullable_to_non_nullable
              as String,
      jumin: null == jumin
          ? _value.jumin
          : jumin // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetail: null == addressDetail
          ? _value.addressDetail
          : addressDetail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientStateImpl extends _PatientState {
  const _$PatientStateImpl(
      {this.wjAuto = 0,
      this.chart = "",
      this.suname = "",
      this.jumin = "",
      this.phoneNumber = "",
      this.postalCode = "",
      this.address = "",
      this.addressDetail = ""})
      : super._();

  factory _$PatientStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientStateImplFromJson(json);

  @override
  @JsonKey()
  final int wjAuto;
  @override
  @JsonKey()
  final String chart;
  @override
  @JsonKey()
  final String suname;
  @override
  @JsonKey()
  final String jumin;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String postalCode;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String addressDetail;

  @override
  String toString() {
    return 'PatientState(wjAuto: $wjAuto, chart: $chart, suname: $suname, jumin: $jumin, phoneNumber: $phoneNumber, postalCode: $postalCode, address: $address, addressDetail: $addressDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientStateImpl &&
            (identical(other.wjAuto, wjAuto) || other.wjAuto == wjAuto) &&
            (identical(other.chart, chart) || other.chart == chart) &&
            (identical(other.suname, suname) || other.suname == suname) &&
            (identical(other.jumin, jumin) || other.jumin == jumin) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.addressDetail, addressDetail) ||
                other.addressDetail == addressDetail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, wjAuto, chart, suname, jumin,
      phoneNumber, postalCode, address, addressDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientStateImplCopyWith<_$PatientStateImpl> get copyWith =>
      __$$PatientStateImplCopyWithImpl<_$PatientStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientStateImplToJson(
      this,
    );
  }
}

abstract class _PatientState extends PatientState {
  const factory _PatientState(
      {final int wjAuto,
      final String chart,
      final String suname,
      final String jumin,
      final String phoneNumber,
      final String postalCode,
      final String address,
      final String addressDetail}) = _$PatientStateImpl;
  const _PatientState._() : super._();

  factory _PatientState.fromJson(Map<String, dynamic> json) =
      _$PatientStateImpl.fromJson;

  @override
  int get wjAuto;
  @override
  String get chart;
  @override
  String get suname;
  @override
  String get jumin;
  @override
  String get phoneNumber;
  @override
  String get postalCode;
  @override
  String get address;
  @override
  String get addressDetail;
  @override
  @JsonKey(ignore: true)
  _$$PatientStateImplCopyWith<_$PatientStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
