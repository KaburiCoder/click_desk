// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestInitState<T> value) init,
    required TResult Function(RequestLoadingState<T> value) loading,
    required TResult Function(RequestSuccessState<T> value) success,
    required TResult Function(RequestErrorState<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInitState<T> value)? init,
    TResult? Function(RequestLoadingState<T> value)? loading,
    TResult? Function(RequestSuccessState<T> value)? success,
    TResult? Function(RequestErrorState<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInitState<T> value)? init,
    TResult Function(RequestLoadingState<T> value)? loading,
    TResult Function(RequestSuccessState<T> value)? success,
    TResult Function(RequestErrorState<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStateCopyWith<T, $Res> {
  factory $RequestStateCopyWith(
          RequestState<T> value, $Res Function(RequestState<T>) then) =
      _$RequestStateCopyWithImpl<T, $Res, RequestState<T>>;
}

/// @nodoc
class _$RequestStateCopyWithImpl<T, $Res, $Val extends RequestState<T>>
    implements $RequestStateCopyWith<T, $Res> {
  _$RequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RequestInitStateImplCopyWith<T, $Res> {
  factory _$$RequestInitStateImplCopyWith(_$RequestInitStateImpl<T> value,
          $Res Function(_$RequestInitStateImpl<T>) then) =
      __$$RequestInitStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RequestInitStateImplCopyWithImpl<T, $Res>
    extends _$RequestStateCopyWithImpl<T, $Res, _$RequestInitStateImpl<T>>
    implements _$$RequestInitStateImplCopyWith<T, $Res> {
  __$$RequestInitStateImplCopyWithImpl(_$RequestInitStateImpl<T> _value,
      $Res Function(_$RequestInitStateImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestInitStateImpl<T> implements RequestInitState<T> {
  const _$RequestInitStateImpl();

  @override
  String toString() {
    return 'RequestState<$T>.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestInitStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
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
    required TResult Function(RequestInitState<T> value) init,
    required TResult Function(RequestLoadingState<T> value) loading,
    required TResult Function(RequestSuccessState<T> value) success,
    required TResult Function(RequestErrorState<T> value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInitState<T> value)? init,
    TResult? Function(RequestLoadingState<T> value)? loading,
    TResult? Function(RequestSuccessState<T> value)? success,
    TResult? Function(RequestErrorState<T> value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInitState<T> value)? init,
    TResult Function(RequestLoadingState<T> value)? loading,
    TResult Function(RequestSuccessState<T> value)? success,
    TResult Function(RequestErrorState<T> value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class RequestInitState<T> implements RequestState<T> {
  const factory RequestInitState() = _$RequestInitStateImpl<T>;
}

/// @nodoc
abstract class _$$RequestLoadingStateImplCopyWith<T, $Res> {
  factory _$$RequestLoadingStateImplCopyWith(_$RequestLoadingStateImpl<T> value,
          $Res Function(_$RequestLoadingStateImpl<T>) then) =
      __$$RequestLoadingStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RequestLoadingStateImplCopyWithImpl<T, $Res>
    extends _$RequestStateCopyWithImpl<T, $Res, _$RequestLoadingStateImpl<T>>
    implements _$$RequestLoadingStateImplCopyWith<T, $Res> {
  __$$RequestLoadingStateImplCopyWithImpl(_$RequestLoadingStateImpl<T> _value,
      $Res Function(_$RequestLoadingStateImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestLoadingStateImpl<T> implements RequestLoadingState<T> {
  const _$RequestLoadingStateImpl();

  @override
  String toString() {
    return 'RequestState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestLoadingStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
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
    required TResult Function(RequestInitState<T> value) init,
    required TResult Function(RequestLoadingState<T> value) loading,
    required TResult Function(RequestSuccessState<T> value) success,
    required TResult Function(RequestErrorState<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInitState<T> value)? init,
    TResult? Function(RequestLoadingState<T> value)? loading,
    TResult? Function(RequestSuccessState<T> value)? success,
    TResult? Function(RequestErrorState<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInitState<T> value)? init,
    TResult Function(RequestLoadingState<T> value)? loading,
    TResult Function(RequestSuccessState<T> value)? success,
    TResult Function(RequestErrorState<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RequestLoadingState<T> implements RequestState<T> {
  const factory RequestLoadingState() = _$RequestLoadingStateImpl<T>;
}

/// @nodoc
abstract class _$$RequestSuccessStateImplCopyWith<T, $Res> {
  factory _$$RequestSuccessStateImplCopyWith(_$RequestSuccessStateImpl<T> value,
          $Res Function(_$RequestSuccessStateImpl<T>) then) =
      __$$RequestSuccessStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$RequestSuccessStateImplCopyWithImpl<T, $Res>
    extends _$RequestStateCopyWithImpl<T, $Res, _$RequestSuccessStateImpl<T>>
    implements _$$RequestSuccessStateImplCopyWith<T, $Res> {
  __$$RequestSuccessStateImplCopyWithImpl(_$RequestSuccessStateImpl<T> _value,
      $Res Function(_$RequestSuccessStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$RequestSuccessStateImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$RequestSuccessStateImpl<T> implements RequestSuccessState<T> {
  const _$RequestSuccessStateImpl({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'RequestState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestSuccessStateImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestSuccessStateImplCopyWith<T, _$RequestSuccessStateImpl<T>>
      get copyWith => __$$RequestSuccessStateImplCopyWithImpl<T,
          _$RequestSuccessStateImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestInitState<T> value) init,
    required TResult Function(RequestLoadingState<T> value) loading,
    required TResult Function(RequestSuccessState<T> value) success,
    required TResult Function(RequestErrorState<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInitState<T> value)? init,
    TResult? Function(RequestLoadingState<T> value)? loading,
    TResult? Function(RequestSuccessState<T> value)? success,
    TResult? Function(RequestErrorState<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInitState<T> value)? init,
    TResult Function(RequestLoadingState<T> value)? loading,
    TResult Function(RequestSuccessState<T> value)? success,
    TResult Function(RequestErrorState<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RequestSuccessState<T> implements RequestState<T> {
  const factory RequestSuccessState({required final T data}) =
      _$RequestSuccessStateImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$RequestSuccessStateImplCopyWith<T, _$RequestSuccessStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestErrorStateImplCopyWith<T, $Res> {
  factory _$$RequestErrorStateImplCopyWith(_$RequestErrorStateImpl<T> value,
          $Res Function(_$RequestErrorStateImpl<T>) then) =
      __$$RequestErrorStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RequestErrorStateImplCopyWithImpl<T, $Res>
    extends _$RequestStateCopyWithImpl<T, $Res, _$RequestErrorStateImpl<T>>
    implements _$$RequestErrorStateImplCopyWith<T, $Res> {
  __$$RequestErrorStateImplCopyWithImpl(_$RequestErrorStateImpl<T> _value,
      $Res Function(_$RequestErrorStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RequestErrorStateImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestErrorStateImpl<T> implements RequestErrorState<T> {
  const _$RequestErrorStateImpl({this.message = ""});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'RequestState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestErrorStateImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestErrorStateImplCopyWith<T, _$RequestErrorStateImpl<T>>
      get copyWith =>
          __$$RequestErrorStateImplCopyWithImpl<T, _$RequestErrorStateImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
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
    required TResult Function(RequestInitState<T> value) init,
    required TResult Function(RequestLoadingState<T> value) loading,
    required TResult Function(RequestSuccessState<T> value) success,
    required TResult Function(RequestErrorState<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInitState<T> value)? init,
    TResult? Function(RequestLoadingState<T> value)? loading,
    TResult? Function(RequestSuccessState<T> value)? success,
    TResult? Function(RequestErrorState<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInitState<T> value)? init,
    TResult Function(RequestLoadingState<T> value)? loading,
    TResult Function(RequestSuccessState<T> value)? success,
    TResult Function(RequestErrorState<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RequestErrorState<T> implements RequestState<T> {
  const factory RequestErrorState({final String message}) =
      _$RequestErrorStateImpl<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$RequestErrorStateImplCopyWith<T, _$RequestErrorStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
