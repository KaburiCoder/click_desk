// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      userId: json['userId'] as String? ?? "",
      email: json['email'] as String? ?? "",
      roomKey: json['roomKey'] as String? ?? "",
      orgName: json['orgName'] as String? ?? "",
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'roomKey': instance.roomKey,
      'orgName': instance.orgName,
    };
