// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdMessageImpl _$$AdMessageImplFromJson(Map<String, dynamic> json) =>
    _$AdMessageImpl(
      message: json['message'] as String? ?? "",
      animationSeconds: (json['animationSeconds'] as num?)?.toInt() ?? 20,
    );

Map<String, dynamic> _$$AdMessageImplToJson(_$AdMessageImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'animationSeconds': instance.animationSeconds,
    };
