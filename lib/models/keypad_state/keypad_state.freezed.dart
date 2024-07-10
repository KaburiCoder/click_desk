// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keypad_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$KeypadState {
  String get number => throw _privateConstructorUsedError;
  bool get goNext => throw _privateConstructorUsedError;
  bool get isDiabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KeypadStateCopyWith<KeypadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeypadStateCopyWith<$Res> {
  factory $KeypadStateCopyWith(
          KeypadState value, $Res Function(KeypadState) then) =
      _$KeypadStateCopyWithImpl<$Res, KeypadState>;
  @useResult
  $Res call({String number, bool goNext, bool isDiabled});
}

/// @nodoc
class _$KeypadStateCopyWithImpl<$Res, $Val extends KeypadState>
    implements $KeypadStateCopyWith<$Res> {
  _$KeypadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? goNext = null,
    Object? isDiabled = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      goNext: null == goNext
          ? _value.goNext
          : goNext // ignore: cast_nullable_to_non_nullable
              as bool,
      isDiabled: null == isDiabled
          ? _value.isDiabled
          : isDiabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeypadStateImplCopyWith<$Res>
    implements $KeypadStateCopyWith<$Res> {
  factory _$$KeypadStateImplCopyWith(
          _$KeypadStateImpl value, $Res Function(_$KeypadStateImpl) then) =
      __$$KeypadStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String number, bool goNext, bool isDiabled});
}

/// @nodoc
class __$$KeypadStateImplCopyWithImpl<$Res>
    extends _$KeypadStateCopyWithImpl<$Res, _$KeypadStateImpl>
    implements _$$KeypadStateImplCopyWith<$Res> {
  __$$KeypadStateImplCopyWithImpl(
      _$KeypadStateImpl _value, $Res Function(_$KeypadStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? goNext = null,
    Object? isDiabled = null,
  }) {
    return _then(_$KeypadStateImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      goNext: null == goNext
          ? _value.goNext
          : goNext // ignore: cast_nullable_to_non_nullable
              as bool,
      isDiabled: null == isDiabled
          ? _value.isDiabled
          : isDiabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$KeypadStateImpl implements _KeypadState {
  const _$KeypadStateImpl(
      {this.number = "", this.goNext = false, this.isDiabled = true});

  @override
  @JsonKey()
  final String number;
  @override
  @JsonKey()
  final bool goNext;
  @override
  @JsonKey()
  final bool isDiabled;

  @override
  String toString() {
    return 'KeypadState(number: $number, goNext: $goNext, isDiabled: $isDiabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeypadStateImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.goNext, goNext) || other.goNext == goNext) &&
            (identical(other.isDiabled, isDiabled) ||
                other.isDiabled == isDiabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number, goNext, isDiabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeypadStateImplCopyWith<_$KeypadStateImpl> get copyWith =>
      __$$KeypadStateImplCopyWithImpl<_$KeypadStateImpl>(this, _$identity);
}

abstract class _KeypadState implements KeypadState {
  const factory _KeypadState(
      {final String number,
      final bool goNext,
      final bool isDiabled}) = _$KeypadStateImpl;

  @override
  String get number;
  @override
  bool get goNext;
  @override
  bool get isDiabled;
  @override
  @JsonKey(ignore: true)
  _$$KeypadStateImplCopyWith<_$KeypadStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
