// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckinState _$CheckinStateFromJson(Map<String, dynamic> json) {
  return _CheckinState.fromJson(json);
}

/// @nodoc
mixin _$CheckinState {
  StartType get startType => throw _privateConstructorUsedError;
  bool get isQRScanned => throw _privateConstructorUsedError;
  PatientState get patientState => throw _privateConstructorUsedError;
  DoctorState get doctorState => throw _privateConstructorUsedError;
  ReasonState get reasonState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckinStateCopyWith<CheckinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckinStateCopyWith<$Res> {
  factory $CheckinStateCopyWith(
          CheckinState value, $Res Function(CheckinState) then) =
      _$CheckinStateCopyWithImpl<$Res, CheckinState>;
  @useResult
  $Res call(
      {StartType startType,
      bool isQRScanned,
      PatientState patientState,
      DoctorState doctorState,
      ReasonState reasonState});

  $PatientStateCopyWith<$Res> get patientState;
  $DoctorStateCopyWith<$Res> get doctorState;
  $ReasonStateCopyWith<$Res> get reasonState;
}

/// @nodoc
class _$CheckinStateCopyWithImpl<$Res, $Val extends CheckinState>
    implements $CheckinStateCopyWith<$Res> {
  _$CheckinStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startType = null,
    Object? isQRScanned = null,
    Object? patientState = null,
    Object? doctorState = null,
    Object? reasonState = null,
  }) {
    return _then(_value.copyWith(
      startType: null == startType
          ? _value.startType
          : startType // ignore: cast_nullable_to_non_nullable
              as StartType,
      isQRScanned: null == isQRScanned
          ? _value.isQRScanned
          : isQRScanned // ignore: cast_nullable_to_non_nullable
              as bool,
      patientState: null == patientState
          ? _value.patientState
          : patientState // ignore: cast_nullable_to_non_nullable
              as PatientState,
      doctorState: null == doctorState
          ? _value.doctorState
          : doctorState // ignore: cast_nullable_to_non_nullable
              as DoctorState,
      reasonState: null == reasonState
          ? _value.reasonState
          : reasonState // ignore: cast_nullable_to_non_nullable
              as ReasonState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientStateCopyWith<$Res> get patientState {
    return $PatientStateCopyWith<$Res>(_value.patientState, (value) {
      return _then(_value.copyWith(patientState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DoctorStateCopyWith<$Res> get doctorState {
    return $DoctorStateCopyWith<$Res>(_value.doctorState, (value) {
      return _then(_value.copyWith(doctorState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReasonStateCopyWith<$Res> get reasonState {
    return $ReasonStateCopyWith<$Res>(_value.reasonState, (value) {
      return _then(_value.copyWith(reasonState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckinStateImplCopyWith<$Res>
    implements $CheckinStateCopyWith<$Res> {
  factory _$$CheckinStateImplCopyWith(
          _$CheckinStateImpl value, $Res Function(_$CheckinStateImpl) then) =
      __$$CheckinStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StartType startType,
      bool isQRScanned,
      PatientState patientState,
      DoctorState doctorState,
      ReasonState reasonState});

  @override
  $PatientStateCopyWith<$Res> get patientState;
  @override
  $DoctorStateCopyWith<$Res> get doctorState;
  @override
  $ReasonStateCopyWith<$Res> get reasonState;
}

/// @nodoc
class __$$CheckinStateImplCopyWithImpl<$Res>
    extends _$CheckinStateCopyWithImpl<$Res, _$CheckinStateImpl>
    implements _$$CheckinStateImplCopyWith<$Res> {
  __$$CheckinStateImplCopyWithImpl(
      _$CheckinStateImpl _value, $Res Function(_$CheckinStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startType = null,
    Object? isQRScanned = null,
    Object? patientState = null,
    Object? doctorState = null,
    Object? reasonState = null,
  }) {
    return _then(_$CheckinStateImpl(
      startType: null == startType
          ? _value.startType
          : startType // ignore: cast_nullable_to_non_nullable
              as StartType,
      isQRScanned: null == isQRScanned
          ? _value.isQRScanned
          : isQRScanned // ignore: cast_nullable_to_non_nullable
              as bool,
      patientState: null == patientState
          ? _value.patientState
          : patientState // ignore: cast_nullable_to_non_nullable
              as PatientState,
      doctorState: null == doctorState
          ? _value.doctorState
          : doctorState // ignore: cast_nullable_to_non_nullable
              as DoctorState,
      reasonState: null == reasonState
          ? _value.reasonState
          : reasonState // ignore: cast_nullable_to_non_nullable
              as ReasonState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckinStateImpl implements _CheckinState {
  const _$CheckinStateImpl(
      {this.startType = StartType.first,
      this.isQRScanned = false,
      this.patientState = const PatientState(),
      this.doctorState = const DoctorState(),
      this.reasonState = const ReasonState()});

  factory _$CheckinStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckinStateImplFromJson(json);

  @override
  @JsonKey()
  final StartType startType;
  @override
  @JsonKey()
  final bool isQRScanned;
  @override
  @JsonKey()
  final PatientState patientState;
  @override
  @JsonKey()
  final DoctorState doctorState;
  @override
  @JsonKey()
  final ReasonState reasonState;

  @override
  String toString() {
    return 'CheckinState(startType: $startType, isQRScanned: $isQRScanned, patientState: $patientState, doctorState: $doctorState, reasonState: $reasonState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckinStateImpl &&
            (identical(other.startType, startType) ||
                other.startType == startType) &&
            (identical(other.isQRScanned, isQRScanned) ||
                other.isQRScanned == isQRScanned) &&
            (identical(other.patientState, patientState) ||
                other.patientState == patientState) &&
            (identical(other.doctorState, doctorState) ||
                other.doctorState == doctorState) &&
            (identical(other.reasonState, reasonState) ||
                other.reasonState == reasonState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startType, isQRScanned,
      patientState, doctorState, reasonState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckinStateImplCopyWith<_$CheckinStateImpl> get copyWith =>
      __$$CheckinStateImplCopyWithImpl<_$CheckinStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckinStateImplToJson(
      this,
    );
  }
}

abstract class _CheckinState implements CheckinState {
  const factory _CheckinState(
      {final StartType startType,
      final bool isQRScanned,
      final PatientState patientState,
      final DoctorState doctorState,
      final ReasonState reasonState}) = _$CheckinStateImpl;

  factory _CheckinState.fromJson(Map<String, dynamic> json) =
      _$CheckinStateImpl.fromJson;

  @override
  StartType get startType;
  @override
  bool get isQRScanned;
  @override
  PatientState get patientState;
  @override
  DoctorState get doctorState;
  @override
  ReasonState get reasonState;
  @override
  @JsonKey(ignore: true)
  _$$CheckinStateImplCopyWith<_$CheckinStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
