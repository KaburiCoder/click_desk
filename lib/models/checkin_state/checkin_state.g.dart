// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkin_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckinStateImpl _$$CheckinStateImplFromJson(Map<String, dynamic> json) =>
    _$CheckinStateImpl(
      startType: $enumDecodeNullable(_$StartTypeEnumMap, json['startType']) ??
          StartType.first,
      isQRScanned: json['isQRScanned'] as bool? ?? false,
      patientState: json['patientState'] == null
          ? const PatientState()
          : PatientState.fromJson(json['patientState'] as Map<String, dynamic>),
      doctorState: json['doctorState'] == null
          ? const DoctorState()
          : DoctorState.fromJson(json['doctorState'] as Map<String, dynamic>),
      reasonState: json['reasonState'] == null
          ? const ReasonState()
          : ReasonState.fromJson(json['reasonState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckinStateImplToJson(_$CheckinStateImpl instance) =>
    <String, dynamic>{
      'startType': _$StartTypeEnumMap[instance.startType]!,
      'isQRScanned': instance.isQRScanned,
      'patientState': instance.patientState,
      'doctorState': instance.doctorState,
      'reasonState': instance.reasonState,
    };

const _$StartTypeEnumMap = {
  StartType.first: 'first',
  StartType.followUp: 'followUp',
};
