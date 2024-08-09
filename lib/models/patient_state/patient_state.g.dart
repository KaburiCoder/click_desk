// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientStateImpl _$$PatientStateImplFromJson(Map<String, dynamic> json) =>
    _$PatientStateImpl(
      wjAuto: (json['wjAuto'] as num?)?.toInt() ?? 0,
      chart: json['chart'] as String? ?? "",
      suname: json['suname'] as String? ?? "",
      jumin: json['jumin'] as String? ?? "",
      pDoctorCode: json['pDoctorCode'] as String? ?? "",
      phoneNumber: json['phoneNumber'] as String? ?? "",
      postalCode: json['postalCode'] as String? ?? "",
      address: json['address'] as String? ?? "",
      addressDetail: json['addressDetail'] as String? ?? "",
    );

Map<String, dynamic> _$$PatientStateImplToJson(_$PatientStateImpl instance) =>
    <String, dynamic>{
      'wjAuto': instance.wjAuto,
      'chart': instance.chart,
      'suname': instance.suname,
      'jumin': instance.jumin,
      'pDoctorCode': instance.pDoctorCode,
      'phoneNumber': instance.phoneNumber,
      'postalCode': instance.postalCode,
      'address': instance.address,
      'addressDetail': instance.addressDetail,
    };
