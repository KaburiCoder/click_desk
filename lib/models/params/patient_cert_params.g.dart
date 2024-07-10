// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_cert_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientCertParamsImpl _$$PatientCertParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientCertParamsImpl(
      chart: json['chart'] as String,
      suname: json['suname'] as String,
      jumin: json['jumin'] as String,
      jinchal: json['jinchal'] as String,
      isQRScanned: json['isQRScanned'] as bool,
    );

Map<String, dynamic> _$$PatientCertParamsImplToJson(
        _$PatientCertParamsImpl instance) =>
    <String, dynamic>{
      'chart': instance.chart,
      'suname': instance.suname,
      'jumin': instance.jumin,
      'jinchal': instance.jinchal,
      'isQRScanned': instance.isQRScanned,
    };
