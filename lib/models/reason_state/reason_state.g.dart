// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reason_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReasonStateImpl _$$ReasonStateImplFromJson(Map<String, dynamic> json) =>
    _$ReasonStateImpl(
      id: json['id'] as String? ?? "",
      userId: json['userId'] as String? ?? "",
      seq: (json['seq'] as num?)?.toInt() ?? 0,
      text: json['text'] as String? ?? "",
      subs: (json['subs'] as List<dynamic>?)
              ?.map((e) => ReasonSub.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ReasonStateImplToJson(_$ReasonStateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'seq': instance.seq,
      'text': instance.text,
      'subs': instance.subs,
    };

_$ReasonSubImpl _$$ReasonSubImplFromJson(Map<String, dynamic> json) =>
    _$ReasonSubImpl(
      seq: (json['seq'] as num?)?.toInt() ?? 0,
      text: json['text'] as String? ?? "",
      subs: (json['subs'] as List<dynamic>?)
              ?.map((e) => ReasonSub.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ReasonSubImplToJson(_$ReasonSubImpl instance) =>
    <String, dynamic>{
      'seq': instance.seq,
      'text': instance.text,
      'subs': instance.subs,
    };
