// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receive_patient_res_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReceivePatientResState _$ReceivePatientResStateFromJson(
    Map<String, dynamic> json) {
  return _ReceivePatientResState.fromJson(json);
}

/// @nodoc
mixin _$ReceivePatientResState {
  bool get isConsented => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceivePatientResStateCopyWith<ReceivePatientResState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceivePatientResStateCopyWith<$Res> {
  factory $ReceivePatientResStateCopyWith(ReceivePatientResState value,
          $Res Function(ReceivePatientResState) then) =
      _$ReceivePatientResStateCopyWithImpl<$Res, ReceivePatientResState>;
  @useResult
  $Res call({bool isConsented});
}

/// @nodoc
class _$ReceivePatientResStateCopyWithImpl<$Res,
        $Val extends ReceivePatientResState>
    implements $ReceivePatientResStateCopyWith<$Res> {
  _$ReceivePatientResStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConsented = null,
  }) {
    return _then(_value.copyWith(
      isConsented: null == isConsented
          ? _value.isConsented
          : isConsented // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceivePatientResStateImplCopyWith<$Res>
    implements $ReceivePatientResStateCopyWith<$Res> {
  factory _$$ReceivePatientResStateImplCopyWith(
          _$ReceivePatientResStateImpl value,
          $Res Function(_$ReceivePatientResStateImpl) then) =
      __$$ReceivePatientResStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isConsented});
}

/// @nodoc
class __$$ReceivePatientResStateImplCopyWithImpl<$Res>
    extends _$ReceivePatientResStateCopyWithImpl<$Res,
        _$ReceivePatientResStateImpl>
    implements _$$ReceivePatientResStateImplCopyWith<$Res> {
  __$$ReceivePatientResStateImplCopyWithImpl(
      _$ReceivePatientResStateImpl _value,
      $Res Function(_$ReceivePatientResStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConsented = null,
  }) {
    return _then(_$ReceivePatientResStateImpl(
      isConsented: null == isConsented
          ? _value.isConsented
          : isConsented // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceivePatientResStateImpl implements _ReceivePatientResState {
  const _$ReceivePatientResStateImpl({this.isConsented = false});

  factory _$ReceivePatientResStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceivePatientResStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isConsented;

  @override
  String toString() {
    return 'ReceivePatientResState(isConsented: $isConsented)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceivePatientResStateImpl &&
            (identical(other.isConsented, isConsented) ||
                other.isConsented == isConsented));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isConsented);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceivePatientResStateImplCopyWith<_$ReceivePatientResStateImpl>
      get copyWith => __$$ReceivePatientResStateImplCopyWithImpl<
          _$ReceivePatientResStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceivePatientResStateImplToJson(
      this,
    );
  }
}

abstract class _ReceivePatientResState implements ReceivePatientResState {
  const factory _ReceivePatientResState({final bool isConsented}) =
      _$ReceivePatientResStateImpl;

  factory _ReceivePatientResState.fromJson(Map<String, dynamic> json) =
      _$ReceivePatientResStateImpl.fromJson;

  @override
  bool get isConsented;
  @override
  @JsonKey(ignore: true)
  _$$ReceivePatientResStateImplCopyWith<_$ReceivePatientResStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
