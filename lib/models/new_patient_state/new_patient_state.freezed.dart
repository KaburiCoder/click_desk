// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_patient_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewPatientState _$NewPatientStateFromJson(Map<String, dynamic> json) {
  return _NewPatientState.fromJson(json);
}

/// @nodoc
mixin _$NewPatientState {
  String get suname => throw _privateConstructorUsedError;
  String get jumin => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get postalCode => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get addressDetail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewPatientStateCopyWith<NewPatientState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPatientStateCopyWith<$Res> {
  factory $NewPatientStateCopyWith(
          NewPatientState value, $Res Function(NewPatientState) then) =
      _$NewPatientStateCopyWithImpl<$Res, NewPatientState>;
  @useResult
  $Res call(
      {String suname,
      String jumin,
      String phoneNumber,
      String postalCode,
      String address,
      String addressDetail});
}

/// @nodoc
class _$NewPatientStateCopyWithImpl<$Res, $Val extends NewPatientState>
    implements $NewPatientStateCopyWith<$Res> {
  _$NewPatientStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suname = null,
    Object? jumin = null,
    Object? phoneNumber = null,
    Object? postalCode = null,
    Object? address = null,
    Object? addressDetail = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$NewPatientStateImplCopyWith<$Res>
    implements $NewPatientStateCopyWith<$Res> {
  factory _$$NewPatientStateImplCopyWith(_$NewPatientStateImpl value,
          $Res Function(_$NewPatientStateImpl) then) =
      __$$NewPatientStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String suname,
      String jumin,
      String phoneNumber,
      String postalCode,
      String address,
      String addressDetail});
}

/// @nodoc
class __$$NewPatientStateImplCopyWithImpl<$Res>
    extends _$NewPatientStateCopyWithImpl<$Res, _$NewPatientStateImpl>
    implements _$$NewPatientStateImplCopyWith<$Res> {
  __$$NewPatientStateImplCopyWithImpl(
      _$NewPatientStateImpl _value, $Res Function(_$NewPatientStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suname = null,
    Object? jumin = null,
    Object? phoneNumber = null,
    Object? postalCode = null,
    Object? address = null,
    Object? addressDetail = null,
  }) {
    return _then(_$NewPatientStateImpl(
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
class _$NewPatientStateImpl implements _NewPatientState {
  const _$NewPatientStateImpl(
      {this.suname = "",
      this.jumin = "",
      this.phoneNumber = "",
      this.postalCode = "",
      this.address = "",
      this.addressDetail = ""});

  factory _$NewPatientStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewPatientStateImplFromJson(json);

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
    return 'NewPatientState(suname: $suname, jumin: $jumin, phoneNumber: $phoneNumber, postalCode: $postalCode, address: $address, addressDetail: $addressDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPatientStateImpl &&
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
  int get hashCode => Object.hash(runtimeType, suname, jumin, phoneNumber,
      postalCode, address, addressDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewPatientStateImplCopyWith<_$NewPatientStateImpl> get copyWith =>
      __$$NewPatientStateImplCopyWithImpl<_$NewPatientStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewPatientStateImplToJson(
      this,
    );
  }
}

abstract class _NewPatientState implements NewPatientState {
  const factory _NewPatientState(
      {final String suname,
      final String jumin,
      final String phoneNumber,
      final String postalCode,
      final String address,
      final String addressDetail}) = _$NewPatientStateImpl;

  factory _NewPatientState.fromJson(Map<String, dynamic> json) =
      _$NewPatientStateImpl.fromJson;

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
  _$$NewPatientStateImplCopyWith<_$NewPatientStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
