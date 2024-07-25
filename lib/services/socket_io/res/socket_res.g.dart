// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketCheckConsentResImpl _$$SocketCheckConsentResImplFromJson(
        Map<String, dynamic> json) =>
    _$SocketCheckConsentResImpl(
      isConsented: json['isConsented'] as bool? ?? false,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SocketCheckConsentResImplToJson(
        _$SocketCheckConsentResImpl instance) =>
    <String, dynamic>{
      'isConsented': instance.isConsented,
      'runtimeType': instance.$type,
    };

_$SocketSaveConsentResImpl _$$SocketSaveConsentResImplFromJson(
        Map<String, dynamic> json) =>
    _$SocketSaveConsentResImpl(
      isConsented: json['isConsented'] as bool? ?? false,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SocketSaveConsentResImplToJson(
        _$SocketSaveConsentResImpl instance) =>
    <String, dynamic>{
      'isConsented': instance.isConsented,
      'runtimeType': instance.$type,
    };

_$SocketFetchHealthCheckUpListResImpl
    _$$SocketFetchHealthCheckUpListResImplFromJson(Map<String, dynamic> json) =>
        _$SocketFetchHealthCheckUpListResImpl(
          gumjinList: (json['gumjinList'] as List<dynamic>?)
                  ?.map((e) => GumjinState.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$SocketFetchHealthCheckUpListResImplToJson(
        _$SocketFetchHealthCheckUpListResImpl instance) =>
    <String, dynamic>{
      'gumjinList': instance.gumjinList,
      'runtimeType': instance.$type,
    };
