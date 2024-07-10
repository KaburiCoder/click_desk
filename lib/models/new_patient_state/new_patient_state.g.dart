// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_patient_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewPatientStateImpl _$$NewPatientStateImplFromJson(
        Map<String, dynamic> json) =>
    _$NewPatientStateImpl(
      suname: json['suname'] as String? ?? "",
      jumin: json['jumin'] as String? ?? "",
      phoneNumber: json['phoneNumber'] as String? ?? "",
      postalCode: json['postalCode'] as String? ?? "",
      address: json['address'] as String? ?? "",
      addressDetail: json['addressDetail'] as String? ?? "",
    );

Map<String, dynamic> _$$NewPatientStateImplToJson(
        _$NewPatientStateImpl instance) =>
    <String, dynamic>{
      'suname': instance.suname,
      'jumin': instance.jumin,
      'phoneNumber': instance.phoneNumber,
      'postalCode': instance.postalCode,
      'address': instance.address,
      'addressDetail': instance.addressDetail,
    };
