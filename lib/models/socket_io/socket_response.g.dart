// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketResponseImpl<T> _$$SocketResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$SocketResponseImpl<T>(
      status: $enumDecodeNullable(_$ResponseStatusEnumMap, json['status']) ??
          ResponseStatus.none,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      message: json['message'] as String?,
      error: (json['error'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$SocketResponseImplToJson<T>(
  _$SocketResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': _$ResponseStatusEnumMap[instance.status]!,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'message': instance.message,
      'error': instance.error,
    };

const _$ResponseStatusEnumMap = {
  ResponseStatus.success: 'success',
  ResponseStatus.error: 'error',
  ResponseStatus.none: 'none',
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
