// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_files.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdFileImpl _$$AdFileImplFromJson(Map<String, dynamic> json) => _$AdFileImpl(
      userId: json['userId'] as String? ?? "",
      fileName: json['fileName'] as String? ?? "",
      fileType: json['fileType'] as String? ?? "",
      seq: (json['seq'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$AdFileImplToJson(_$AdFileImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'fileName': instance.fileName,
      'fileType': instance.fileType,
      'seq': instance.seq,
    };
