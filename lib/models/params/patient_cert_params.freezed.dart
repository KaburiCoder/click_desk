// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_cert_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientCertParams _$PatientCertParamsFromJson(Map<String, dynamic> json) {
  return _PatientCertParams.fromJson(json);
}

/// @nodoc
mixin _$PatientCertParams {
  String get chart => throw _privateConstructorUsedError;
  String get suname => throw _privateConstructorUsedError;
  String get jumin => throw _privateConstructorUsedError;
  String get jinchal => throw _privateConstructorUsedError;
  bool get isQRScanned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientCertParamsCopyWith<PatientCertParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientCertParamsCopyWith<$Res> {
  factory $PatientCertParamsCopyWith(
          PatientCertParams value, $Res Function(PatientCertParams) then) =
      _$PatientCertParamsCopyWithImpl<$Res, PatientCertParams>;
  @useResult
  $Res call(
      {String chart,
      String suname,
      String jumin,
      String jinchal,
      bool isQRScanned});
}

/// @nodoc
class _$PatientCertParamsCopyWithImpl<$Res, $Val extends PatientCertParams>
    implements $PatientCertParamsCopyWith<$Res> {
  _$PatientCertParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chart = null,
    Object? suname = null,
    Object? jumin = null,
    Object? jinchal = null,
    Object? isQRScanned = null,
  }) {
    return _then(_value.copyWith(
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
      jinchal: null == jinchal
          ? _value.jinchal
          : jinchal // ignore: cast_nullable_to_non_nullable
              as String,
      isQRScanned: null == isQRScanned
          ? _value.isQRScanned
          : isQRScanned // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientCertParamsImplCopyWith<$Res>
    implements $PatientCertParamsCopyWith<$Res> {
  factory _$$PatientCertParamsImplCopyWith(_$PatientCertParamsImpl value,
          $Res Function(_$PatientCertParamsImpl) then) =
      __$$PatientCertParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String chart,
      String suname,
      String jumin,
      String jinchal,
      bool isQRScanned});
}

/// @nodoc
class __$$PatientCertParamsImplCopyWithImpl<$Res>
    extends _$PatientCertParamsCopyWithImpl<$Res, _$PatientCertParamsImpl>
    implements _$$PatientCertParamsImplCopyWith<$Res> {
  __$$PatientCertParamsImplCopyWithImpl(_$PatientCertParamsImpl _value,
      $Res Function(_$PatientCertParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chart = null,
    Object? suname = null,
    Object? jumin = null,
    Object? jinchal = null,
    Object? isQRScanned = null,
  }) {
    return _then(_$PatientCertParamsImpl(
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
      jinchal: null == jinchal
          ? _value.jinchal
          : jinchal // ignore: cast_nullable_to_non_nullable
              as String,
      isQRScanned: null == isQRScanned
          ? _value.isQRScanned
          : isQRScanned // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientCertParamsImpl implements _PatientCertParams {
  const _$PatientCertParamsImpl(
      {required this.chart,
      required this.suname,
      required this.jumin,
      required this.jinchal,
      required this.isQRScanned});

  factory _$PatientCertParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientCertParamsImplFromJson(json);

  @override
  final String chart;
  @override
  final String suname;
  @override
  final String jumin;
  @override
  final String jinchal;
  @override
  final bool isQRScanned;

  @override
  String toString() {
    return 'PatientCertParams(chart: $chart, suname: $suname, jumin: $jumin, jinchal: $jinchal, isQRScanned: $isQRScanned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientCertParamsImpl &&
            (identical(other.chart, chart) || other.chart == chart) &&
            (identical(other.suname, suname) || other.suname == suname) &&
            (identical(other.jumin, jumin) || other.jumin == jumin) &&
            (identical(other.jinchal, jinchal) || other.jinchal == jinchal) &&
            (identical(other.isQRScanned, isQRScanned) ||
                other.isQRScanned == isQRScanned));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, chart, suname, jumin, jinchal, isQRScanned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientCertParamsImplCopyWith<_$PatientCertParamsImpl> get copyWith =>
      __$$PatientCertParamsImplCopyWithImpl<_$PatientCertParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientCertParamsImplToJson(
      this,
    );
  }
}

abstract class _PatientCertParams implements PatientCertParams {
  const factory _PatientCertParams(
      {required final String chart,
      required final String suname,
      required final String jumin,
      required final String jinchal,
      required final bool isQRScanned}) = _$PatientCertParamsImpl;

  factory _PatientCertParams.fromJson(Map<String, dynamic> json) =
      _$PatientCertParamsImpl.fromJson;

  @override
  String get chart;
  @override
  String get suname;
  @override
  String get jumin;
  @override
  String get jinchal;
  @override
  bool get isQRScanned;
  @override
  @JsonKey(ignore: true)
  _$$PatientCertParamsImplCopyWith<_$PatientCertParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
