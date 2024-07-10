// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_cert_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientCertState _$PatientCertStateFromJson(Map<String, dynamic> json) {
  return _PatientCertState.fromJson(json);
}

/// @nodoc
mixin _$PatientCertState {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientCertStateCopyWith<$Res> {
  factory $PatientCertStateCopyWith(
          PatientCertState value, $Res Function(PatientCertState) then) =
      _$PatientCertStateCopyWithImpl<$Res, PatientCertState>;
}

/// @nodoc
class _$PatientCertStateCopyWithImpl<$Res, $Val extends PatientCertState>
    implements $PatientCertStateCopyWith<$Res> {
  _$PatientCertStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PatientCertStateImplCopyWith<$Res> {
  factory _$$PatientCertStateImplCopyWith(_$PatientCertStateImpl value,
          $Res Function(_$PatientCertStateImpl) then) =
      __$$PatientCertStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PatientCertStateImplCopyWithImpl<$Res>
    extends _$PatientCertStateCopyWithImpl<$Res, _$PatientCertStateImpl>
    implements _$$PatientCertStateImplCopyWith<$Res> {
  __$$PatientCertStateImplCopyWithImpl(_$PatientCertStateImpl _value,
      $Res Function(_$PatientCertStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$PatientCertStateImpl implements _PatientCertState {
  const _$PatientCertStateImpl();

  factory _$PatientCertStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientCertStateImplFromJson(json);

  @override
  String toString() {
    return 'PatientCertState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PatientCertStateImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientCertStateImplToJson(
      this,
    );
  }
}

abstract class _PatientCertState implements PatientCertState {
  const factory _PatientCertState() = _$PatientCertStateImpl;

  factory _PatientCertState.fromJson(Map<String, dynamic> json) =
      _$PatientCertStateImpl.fromJson;
}
