// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorStateImpl _$$DoctorStateImplFromJson(Map<String, dynamic> json) =>
    _$DoctorStateImpl(
      id: json['id'] as String? ?? "",
      userId: json['userId'] as String? ?? "",
      seq: (json['seq'] as num?)?.toInt() ?? 0,
      code: json['code'] as String? ?? "",
      name: json['name'] as String? ?? "",
      jinchalName: json['jinchalName'] as String? ?? "",
      kwamokName: json['kwamokName'] as String? ?? "",
      waitingPatientsCount:
          (json['waitingPatientsCount'] as num?)?.toInt() ?? 0,
      works: json['works'] == null
          ? const DoctorWorks()
          : DoctorWorks.fromJson(json['works'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DoctorStateImplToJson(_$DoctorStateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'seq': instance.seq,
      'code': instance.code,
      'name': instance.name,
      'jinchalName': instance.jinchalName,
      'kwamokName': instance.kwamokName,
      'waitingPatientsCount': instance.waitingPatientsCount,
      'works': instance.works,
    };

_$DoctorWorksImpl _$$DoctorWorksImplFromJson(Map<String, dynamic> json) =>
    _$DoctorWorksImpl(
      mon: (json['mon'] as List<dynamic>?)
              ?.map((e) => TimeRange.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      tue: (json['tue'] as List<dynamic>?)
              ?.map((e) => TimeRange.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      wed: (json['wed'] as List<dynamic>?)
              ?.map((e) => TimeRange.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      thu: (json['thu'] as List<dynamic>?)
              ?.map((e) => TimeRange.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      fri: (json['fri'] as List<dynamic>?)
              ?.map((e) => TimeRange.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      sat: (json['sat'] as List<dynamic>?)
              ?.map((e) => TimeRange.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      sun: (json['sun'] as List<dynamic>?)
              ?.map((e) => TimeRange.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DoctorWorksImplToJson(_$DoctorWorksImpl instance) =>
    <String, dynamic>{
      'mon': instance.mon,
      'tue': instance.tue,
      'wed': instance.wed,
      'thu': instance.thu,
      'fri': instance.fri,
      'sat': instance.sat,
      'sun': instance.sun,
    };

_$TimeRangeImpl _$$TimeRangeImplFromJson(Map<String, dynamic> json) =>
    _$TimeRangeImpl(
      start: TimeValue.fromJson(json['start'] as Map<String, dynamic>),
      end: TimeValue.fromJson(json['end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TimeRangeImplToJson(_$TimeRangeImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };

_$TimeValueImpl _$$TimeValueImplFromJson(Map<String, dynamic> json) =>
    _$TimeValueImpl(
      hour: (json['hour'] as num).toInt(),
      minute: (json['minute'] as num).toInt(),
    );

Map<String, dynamic> _$$TimeValueImplToJson(_$TimeValueImpl instance) =>
    <String, dynamic>{
      'hour': instance.hour,
      'minute': instance.minute,
    };
