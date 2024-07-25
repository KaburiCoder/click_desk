// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gumjin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GumjinState _$GumjinStateFromJson(Map<String, dynamic> json) {
  return _GumjinState.fromJson(json);
}

/// @nodoc
mixin _$GumjinState {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GumjinStateCopyWith<GumjinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GumjinStateCopyWith<$Res> {
  factory $GumjinStateCopyWith(
          GumjinState value, $Res Function(GumjinState) then) =
      _$GumjinStateCopyWithImpl<$Res, GumjinState>;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$GumjinStateCopyWithImpl<$Res, $Val extends GumjinState>
    implements $GumjinStateCopyWith<$Res> {
  _$GumjinStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GumjinStateImplCopyWith<$Res>
    implements $GumjinStateCopyWith<$Res> {
  factory _$$GumjinStateImplCopyWith(
          _$GumjinStateImpl value, $Res Function(_$GumjinStateImpl) then) =
      __$$GumjinStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$$GumjinStateImplCopyWithImpl<$Res>
    extends _$GumjinStateCopyWithImpl<$Res, _$GumjinStateImpl>
    implements _$$GumjinStateImplCopyWith<$Res> {
  __$$GumjinStateImplCopyWithImpl(
      _$GumjinStateImpl _value, $Res Function(_$GumjinStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_$GumjinStateImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GumjinStateImpl implements _GumjinState {
  const _$GumjinStateImpl({this.code = "", this.name = ""});

  factory _$GumjinStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GumjinStateImplFromJson(json);

  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'GumjinState(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GumjinStateImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GumjinStateImplCopyWith<_$GumjinStateImpl> get copyWith =>
      __$$GumjinStateImplCopyWithImpl<_$GumjinStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GumjinStateImplToJson(
      this,
    );
  }
}

abstract class _GumjinState implements GumjinState {
  const factory _GumjinState({final String code, final String name}) =
      _$GumjinStateImpl;

  factory _GumjinState.fromJson(Map<String, dynamic> json) =
      _$GumjinStateImpl.fromJson;

  @override
  String get code;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$GumjinStateImplCopyWith<_$GumjinStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
