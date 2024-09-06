// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'desk_settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeskSettingsState _$DeskSettingsStateFromJson(Map<String, dynamic> json) {
  return _DeskSettingsState.fromJson(json);
}

/// @nodoc
mixin _$DeskSettingsState {
  bool get unUseQR => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeskSettingsStateCopyWith<DeskSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeskSettingsStateCopyWith<$Res> {
  factory $DeskSettingsStateCopyWith(
          DeskSettingsState value, $Res Function(DeskSettingsState) then) =
      _$DeskSettingsStateCopyWithImpl<$Res, DeskSettingsState>;
  @useResult
  $Res call({bool unUseQR});
}

/// @nodoc
class _$DeskSettingsStateCopyWithImpl<$Res, $Val extends DeskSettingsState>
    implements $DeskSettingsStateCopyWith<$Res> {
  _$DeskSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unUseQR = null,
  }) {
    return _then(_value.copyWith(
      unUseQR: null == unUseQR
          ? _value.unUseQR
          : unUseQR // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeskSettingsStateImplCopyWith<$Res>
    implements $DeskSettingsStateCopyWith<$Res> {
  factory _$$DeskSettingsStateImplCopyWith(_$DeskSettingsStateImpl value,
          $Res Function(_$DeskSettingsStateImpl) then) =
      __$$DeskSettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool unUseQR});
}

/// @nodoc
class __$$DeskSettingsStateImplCopyWithImpl<$Res>
    extends _$DeskSettingsStateCopyWithImpl<$Res, _$DeskSettingsStateImpl>
    implements _$$DeskSettingsStateImplCopyWith<$Res> {
  __$$DeskSettingsStateImplCopyWithImpl(_$DeskSettingsStateImpl _value,
      $Res Function(_$DeskSettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unUseQR = null,
  }) {
    return _then(_$DeskSettingsStateImpl(
      unUseQR: null == unUseQR
          ? _value.unUseQR
          : unUseQR // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeskSettingsStateImpl implements _DeskSettingsState {
  const _$DeskSettingsStateImpl({this.unUseQR = false});

  factory _$DeskSettingsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeskSettingsStateImplFromJson(json);

  @override
  @JsonKey()
  final bool unUseQR;

  @override
  String toString() {
    return 'DeskSettingsState(unUseQR: $unUseQR)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeskSettingsStateImpl &&
            (identical(other.unUseQR, unUseQR) || other.unUseQR == unUseQR));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, unUseQR);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeskSettingsStateImplCopyWith<_$DeskSettingsStateImpl> get copyWith =>
      __$$DeskSettingsStateImplCopyWithImpl<_$DeskSettingsStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeskSettingsStateImplToJson(
      this,
    );
  }
}

abstract class _DeskSettingsState implements DeskSettingsState {
  const factory _DeskSettingsState({final bool unUseQR}) =
      _$DeskSettingsStateImpl;

  factory _DeskSettingsState.fromJson(Map<String, dynamic> json) =
      _$DeskSettingsStateImpl.fromJson;

  @override
  bool get unUseQR;
  @override
  @JsonKey(ignore: true)
  _$$DeskSettingsStateImplCopyWith<_$DeskSettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
