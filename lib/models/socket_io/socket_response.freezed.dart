// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocketResponse<T> _$SocketResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _SocketResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$SocketResponse<T> {
  ResponseStatus get status => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Map<String, String>? get error => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocketResponseCopyWith<T, SocketResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketResponseCopyWith<T, $Res> {
  factory $SocketResponseCopyWith(
          SocketResponse<T> value, $Res Function(SocketResponse<T>) then) =
      _$SocketResponseCopyWithImpl<T, $Res, SocketResponse<T>>;
  @useResult
  $Res call(
      {ResponseStatus status,
      T? data,
      String? message,
      Map<String, String>? error,
      String? errorCode});
}

/// @nodoc
class _$SocketResponseCopyWithImpl<T, $Res, $Val extends SocketResponse<T>>
    implements $SocketResponseCopyWith<T, $Res> {
  _$SocketResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResponseStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocketResponseImplCopyWith<T, $Res>
    implements $SocketResponseCopyWith<T, $Res> {
  factory _$$SocketResponseImplCopyWith(_$SocketResponseImpl<T> value,
          $Res Function(_$SocketResponseImpl<T>) then) =
      __$$SocketResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {ResponseStatus status,
      T? data,
      String? message,
      Map<String, String>? error,
      String? errorCode});
}

/// @nodoc
class __$$SocketResponseImplCopyWithImpl<T, $Res>
    extends _$SocketResponseCopyWithImpl<T, $Res, _$SocketResponseImpl<T>>
    implements _$$SocketResponseImplCopyWith<T, $Res> {
  __$$SocketResponseImplCopyWithImpl(_$SocketResponseImpl<T> _value,
      $Res Function(_$SocketResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_$SocketResponseImpl<T>(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResponseStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value._error
          : error // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$SocketResponseImpl<T> implements _SocketResponse<T> {
  const _$SocketResponseImpl(
      {this.status = ResponseStatus.none,
      this.data,
      this.message,
      final Map<String, String>? error,
      this.errorCode})
      : _error = error;

  factory _$SocketResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$SocketResponseImplFromJson(json, fromJsonT);

  @override
  @JsonKey()
  final ResponseStatus status;
  @override
  final T? data;
  @override
  final String? message;
  final Map<String, String>? _error;
  @override
  Map<String, String>? get error {
    final value = _error;
    if (value == null) return null;
    if (_error is EqualUnmodifiableMapView) return _error;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? errorCode;

  @override
  String toString() {
    return 'SocketResponse<$T>(status: $status, data: $data, message: $message, error: $error, errorCode: $errorCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketResponseImpl<T> &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._error, _error) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(data),
      message,
      const DeepCollectionEquality().hash(_error),
      errorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketResponseImplCopyWith<T, _$SocketResponseImpl<T>> get copyWith =>
      __$$SocketResponseImplCopyWithImpl<T, _$SocketResponseImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$SocketResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _SocketResponse<T> implements SocketResponse<T> {
  const factory _SocketResponse(
      {final ResponseStatus status,
      final T? data,
      final String? message,
      final Map<String, String>? error,
      final String? errorCode}) = _$SocketResponseImpl<T>;

  factory _SocketResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$SocketResponseImpl<T>.fromJson;

  @override
  ResponseStatus get status;
  @override
  T? get data;
  @override
  String? get message;
  @override
  Map<String, String>? get error;
  @override
  String? get errorCode;
  @override
  @JsonKey(ignore: true)
  _$$SocketResponseImplCopyWith<T, _$SocketResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
