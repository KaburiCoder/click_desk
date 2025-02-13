import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_files.freezed.dart';
part 'ad_files.g.dart';

@freezed
class AdFile with _$AdFile {
  const factory AdFile({
    @Default("") String userId,
    @Default("") String fileName,
    @Default("") String fileType,
    @Default(0) int seq,
  }) = _AdFile;

  factory AdFile.fromJson(Map<String, dynamic> json) =>
      _$AdFileFromJson(json);
}

