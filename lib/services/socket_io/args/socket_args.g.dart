// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_args.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketCheckConsentArgsImpl _$$SocketCheckConsentArgsImplFromJson(
        Map<String, dynamic> json) =>
    _$SocketCheckConsentArgsImpl(
      jumin: json['jumin'] as String,
      doctorCode: json['doctorCode'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SocketCheckConsentArgsImplToJson(
        _$SocketCheckConsentArgsImpl instance) =>
    <String, dynamic>{
      'jumin': instance.jumin,
      'doctorCode': instance.doctorCode,
      'runtimeType': instance.$type,
    };

_$SocketSaveConsentArgsImpl _$$SocketSaveConsentArgsImplFromJson(
        Map<String, dynamic> json) =>
    _$SocketSaveConsentArgsImpl(
      private: json['private'] as bool,
      marketing: json['marketing'] as bool,
      jumin: json['jumin'] as String,
      doctorCode: json['doctorCode'] as String,
      suname: json['suname'] as String,
      signImageBuffer: (json['signImageBuffer'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SocketSaveConsentArgsImplToJson(
        _$SocketSaveConsentArgsImpl instance) =>
    <String, dynamic>{
      'private': instance.private,
      'marketing': instance.marketing,
      'jumin': instance.jumin,
      'doctorCode': instance.doctorCode,
      'suname': instance.suname,
      'signImageBuffer': instance.signImageBuffer,
      'runtimeType': instance.$type,
    };

_$SocketFetchHealthCheckUpListArgsImpl
    _$$SocketFetchHealthCheckUpListArgsImplFromJson(
            Map<String, dynamic> json) =>
        _$SocketFetchHealthCheckUpListArgsImpl(
          doctorCode: json['doctorCode'] as String,
          jumin: json['jumin'] as String,
          suname: json['suname'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$SocketFetchHealthCheckUpListArgsImplToJson(
        _$SocketFetchHealthCheckUpListArgsImpl instance) =>
    <String, dynamic>{
      'doctorCode': instance.doctorCode,
      'jumin': instance.jumin,
      'suname': instance.suname,
      'runtimeType': instance.$type,
    };
