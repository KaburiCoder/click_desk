// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consent_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsentState _$ConsentStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'init':
      return ConsentInitState.fromJson(json);
    case 'loading':
      return ConsentLoadingState.fromJson(json);
    case 'pass':
      return ConsentPassState.fromJson(json);
    case 'mustCheck':
      return ConsentMustCheckState.fromJson(json);
    case 'error':
      return ConsentErrorState.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ConsentState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ConsentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() pass,
    required TResult Function() mustCheck,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? pass,
    TResult? Function()? mustCheck,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? pass,
    TResult Function()? mustCheck,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConsentInitState value) init,
    required TResult Function(ConsentLoadingState value) loading,
    required TResult Function(ConsentPassState value) pass,
    required TResult Function(ConsentMustCheckState value) mustCheck,
    required TResult Function(ConsentErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConsentInitState value)? init,
    TResult? Function(ConsentLoadingState value)? loading,
    TResult? Function(ConsentPassState value)? pass,
    TResult? Function(ConsentMustCheckState value)? mustCheck,
    TResult? Function(ConsentErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConsentInitState value)? init,
    TResult Function(ConsentLoadingState value)? loading,
    TResult Function(ConsentPassState value)? pass,
    TResult Function(ConsentMustCheckState value)? mustCheck,
    TResult Function(ConsentErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsentStateCopyWith<$Res> {
  factory $ConsentStateCopyWith(
          ConsentState value, $Res Function(ConsentState) then) =
      _$ConsentStateCopyWithImpl<$Res, ConsentState>;
}

/// @nodoc
class _$ConsentStateCopyWithImpl<$Res, $Val extends ConsentState>
    implements $ConsentStateCopyWith<$Res> {
  _$ConsentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConsentInitStateImplCopyWith<$Res> {
  factory _$$ConsentInitStateImplCopyWith(_$ConsentInitStateImpl value,
          $Res Function(_$ConsentInitStateImpl) then) =
      __$$ConsentInitStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConsentInitStateImplCopyWithImpl<$Res>
    extends _$ConsentStateCopyWithImpl<$Res, _$ConsentInitStateImpl>
    implements _$$ConsentInitStateImplCopyWith<$Res> {
  __$$ConsentInitStateImplCopyWithImpl(_$ConsentInitStateImpl _value,
      $Res Function(_$ConsentInitStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ConsentInitStateImpl implements ConsentInitState {
  const _$ConsentInitStateImpl({final String? $type}) : $type = $type ?? 'init';

  factory _$ConsentInitStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsentInitStateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ConsentState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConsentInitStateImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() pass,
    required TResult Function() mustCheck,
    required TResult Function(String message) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? pass,
    TResult? Function()? mustCheck,
    TResult? Function(String message)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? pass,
    TResult Function()? mustCheck,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConsentInitState value) init,
    required TResult Function(ConsentLoadingState value) loading,
    required TResult Function(ConsentPassState value) pass,
    required TResult Function(ConsentMustCheckState value) mustCheck,
    required TResult Function(ConsentErrorState value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConsentInitState value)? init,
    TResult? Function(ConsentLoadingState value)? loading,
    TResult? Function(ConsentPassState value)? pass,
    TResult? Function(ConsentMustCheckState value)? mustCheck,
    TResult? Function(ConsentErrorState value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConsentInitState value)? init,
    TResult Function(ConsentLoadingState value)? loading,
    TResult Function(ConsentPassState value)? pass,
    TResult Function(ConsentMustCheckState value)? mustCheck,
    TResult Function(ConsentErrorState value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsentInitStateImplToJson(
      this,
    );
  }
}

abstract class ConsentInitState implements ConsentState {
  const factory ConsentInitState() = _$ConsentInitStateImpl;

  factory ConsentInitState.fromJson(Map<String, dynamic> json) =
      _$ConsentInitStateImpl.fromJson;
}

/// @nodoc
abstract class _$$ConsentLoadingStateImplCopyWith<$Res> {
  factory _$$ConsentLoadingStateImplCopyWith(_$ConsentLoadingStateImpl value,
          $Res Function(_$ConsentLoadingStateImpl) then) =
      __$$ConsentLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConsentLoadingStateImplCopyWithImpl<$Res>
    extends _$ConsentStateCopyWithImpl<$Res, _$ConsentLoadingStateImpl>
    implements _$$ConsentLoadingStateImplCopyWith<$Res> {
  __$$ConsentLoadingStateImplCopyWithImpl(_$ConsentLoadingStateImpl _value,
      $Res Function(_$ConsentLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ConsentLoadingStateImpl implements ConsentLoadingState {
  const _$ConsentLoadingStateImpl({final String? $type})
      : $type = $type ?? 'loading';

  factory _$ConsentLoadingStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsentLoadingStateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ConsentState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsentLoadingStateImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() pass,
    required TResult Function() mustCheck,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? pass,
    TResult? Function()? mustCheck,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? pass,
    TResult Function()? mustCheck,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConsentInitState value) init,
    required TResult Function(ConsentLoadingState value) loading,
    required TResult Function(ConsentPassState value) pass,
    required TResult Function(ConsentMustCheckState value) mustCheck,
    required TResult Function(ConsentErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConsentInitState value)? init,
    TResult? Function(ConsentLoadingState value)? loading,
    TResult? Function(ConsentPassState value)? pass,
    TResult? Function(ConsentMustCheckState value)? mustCheck,
    TResult? Function(ConsentErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConsentInitState value)? init,
    TResult Function(ConsentLoadingState value)? loading,
    TResult Function(ConsentPassState value)? pass,
    TResult Function(ConsentMustCheckState value)? mustCheck,
    TResult Function(ConsentErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsentLoadingStateImplToJson(
      this,
    );
  }
}

abstract class ConsentLoadingState implements ConsentState {
  const factory ConsentLoadingState() = _$ConsentLoadingStateImpl;

  factory ConsentLoadingState.fromJson(Map<String, dynamic> json) =
      _$ConsentLoadingStateImpl.fromJson;
}

/// @nodoc
abstract class _$$ConsentPassStateImplCopyWith<$Res> {
  factory _$$ConsentPassStateImplCopyWith(_$ConsentPassStateImpl value,
          $Res Function(_$ConsentPassStateImpl) then) =
      __$$ConsentPassStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConsentPassStateImplCopyWithImpl<$Res>
    extends _$ConsentStateCopyWithImpl<$Res, _$ConsentPassStateImpl>
    implements _$$ConsentPassStateImplCopyWith<$Res> {
  __$$ConsentPassStateImplCopyWithImpl(_$ConsentPassStateImpl _value,
      $Res Function(_$ConsentPassStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ConsentPassStateImpl implements ConsentPassState {
  const _$ConsentPassStateImpl({final String? $type}) : $type = $type ?? 'pass';

  factory _$ConsentPassStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsentPassStateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ConsentState.pass()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConsentPassStateImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() pass,
    required TResult Function() mustCheck,
    required TResult Function(String message) error,
  }) {
    return pass();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? pass,
    TResult? Function()? mustCheck,
    TResult? Function(String message)? error,
  }) {
    return pass?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? pass,
    TResult Function()? mustCheck,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (pass != null) {
      return pass();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConsentInitState value) init,
    required TResult Function(ConsentLoadingState value) loading,
    required TResult Function(ConsentPassState value) pass,
    required TResult Function(ConsentMustCheckState value) mustCheck,
    required TResult Function(ConsentErrorState value) error,
  }) {
    return pass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConsentInitState value)? init,
    TResult? Function(ConsentLoadingState value)? loading,
    TResult? Function(ConsentPassState value)? pass,
    TResult? Function(ConsentMustCheckState value)? mustCheck,
    TResult? Function(ConsentErrorState value)? error,
  }) {
    return pass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConsentInitState value)? init,
    TResult Function(ConsentLoadingState value)? loading,
    TResult Function(ConsentPassState value)? pass,
    TResult Function(ConsentMustCheckState value)? mustCheck,
    TResult Function(ConsentErrorState value)? error,
    required TResult orElse(),
  }) {
    if (pass != null) {
      return pass(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsentPassStateImplToJson(
      this,
    );
  }
}

abstract class ConsentPassState implements ConsentState {
  const factory ConsentPassState() = _$ConsentPassStateImpl;

  factory ConsentPassState.fromJson(Map<String, dynamic> json) =
      _$ConsentPassStateImpl.fromJson;
}

/// @nodoc
abstract class _$$ConsentMustCheckStateImplCopyWith<$Res> {
  factory _$$ConsentMustCheckStateImplCopyWith(
          _$ConsentMustCheckStateImpl value,
          $Res Function(_$ConsentMustCheckStateImpl) then) =
      __$$ConsentMustCheckStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConsentMustCheckStateImplCopyWithImpl<$Res>
    extends _$ConsentStateCopyWithImpl<$Res, _$ConsentMustCheckStateImpl>
    implements _$$ConsentMustCheckStateImplCopyWith<$Res> {
  __$$ConsentMustCheckStateImplCopyWithImpl(_$ConsentMustCheckStateImpl _value,
      $Res Function(_$ConsentMustCheckStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ConsentMustCheckStateImpl implements ConsentMustCheckState {
  const _$ConsentMustCheckStateImpl({final String? $type})
      : $type = $type ?? 'mustCheck';

  factory _$ConsentMustCheckStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsentMustCheckStateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ConsentState.mustCheck()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsentMustCheckStateImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() pass,
    required TResult Function() mustCheck,
    required TResult Function(String message) error,
  }) {
    return mustCheck();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? pass,
    TResult? Function()? mustCheck,
    TResult? Function(String message)? error,
  }) {
    return mustCheck?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? pass,
    TResult Function()? mustCheck,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (mustCheck != null) {
      return mustCheck();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConsentInitState value) init,
    required TResult Function(ConsentLoadingState value) loading,
    required TResult Function(ConsentPassState value) pass,
    required TResult Function(ConsentMustCheckState value) mustCheck,
    required TResult Function(ConsentErrorState value) error,
  }) {
    return mustCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConsentInitState value)? init,
    TResult? Function(ConsentLoadingState value)? loading,
    TResult? Function(ConsentPassState value)? pass,
    TResult? Function(ConsentMustCheckState value)? mustCheck,
    TResult? Function(ConsentErrorState value)? error,
  }) {
    return mustCheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConsentInitState value)? init,
    TResult Function(ConsentLoadingState value)? loading,
    TResult Function(ConsentPassState value)? pass,
    TResult Function(ConsentMustCheckState value)? mustCheck,
    TResult Function(ConsentErrorState value)? error,
    required TResult orElse(),
  }) {
    if (mustCheck != null) {
      return mustCheck(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsentMustCheckStateImplToJson(
      this,
    );
  }
}

abstract class ConsentMustCheckState implements ConsentState {
  const factory ConsentMustCheckState() = _$ConsentMustCheckStateImpl;

  factory ConsentMustCheckState.fromJson(Map<String, dynamic> json) =
      _$ConsentMustCheckStateImpl.fromJson;
}

/// @nodoc
abstract class _$$ConsentErrorStateImplCopyWith<$Res> {
  factory _$$ConsentErrorStateImplCopyWith(_$ConsentErrorStateImpl value,
          $Res Function(_$ConsentErrorStateImpl) then) =
      __$$ConsentErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ConsentErrorStateImplCopyWithImpl<$Res>
    extends _$ConsentStateCopyWithImpl<$Res, _$ConsentErrorStateImpl>
    implements _$$ConsentErrorStateImplCopyWith<$Res> {
  __$$ConsentErrorStateImplCopyWithImpl(_$ConsentErrorStateImpl _value,
      $Res Function(_$ConsentErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ConsentErrorStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsentErrorStateImpl implements ConsentErrorState {
  const _$ConsentErrorStateImpl({required this.message, final String? $type})
      : $type = $type ?? 'error';

  factory _$ConsentErrorStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsentErrorStateImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ConsentState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsentErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsentErrorStateImplCopyWith<_$ConsentErrorStateImpl> get copyWith =>
      __$$ConsentErrorStateImplCopyWithImpl<_$ConsentErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() pass,
    required TResult Function() mustCheck,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? pass,
    TResult? Function()? mustCheck,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? pass,
    TResult Function()? mustCheck,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConsentInitState value) init,
    required TResult Function(ConsentLoadingState value) loading,
    required TResult Function(ConsentPassState value) pass,
    required TResult Function(ConsentMustCheckState value) mustCheck,
    required TResult Function(ConsentErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConsentInitState value)? init,
    TResult? Function(ConsentLoadingState value)? loading,
    TResult? Function(ConsentPassState value)? pass,
    TResult? Function(ConsentMustCheckState value)? mustCheck,
    TResult? Function(ConsentErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConsentInitState value)? init,
    TResult Function(ConsentLoadingState value)? loading,
    TResult Function(ConsentPassState value)? pass,
    TResult Function(ConsentMustCheckState value)? mustCheck,
    TResult Function(ConsentErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsentErrorStateImplToJson(
      this,
    );
  }
}

abstract class ConsentErrorState implements ConsentState {
  const factory ConsentErrorState({required final String message}) =
      _$ConsentErrorStateImpl;

  factory ConsentErrorState.fromJson(Map<String, dynamic> json) =
      _$ConsentErrorStateImpl.fromJson;

  String get message;
  @JsonKey(ignore: true)
  _$$ConsentErrorStateImplCopyWith<_$ConsentErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
