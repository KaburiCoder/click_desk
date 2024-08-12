import 'dart:io';

import 'package:click_desk/models/ad_files/ad_files.dart';
import 'package:click_desk/shared/providers/dio/dio_provider.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ad_file_api.g.dart';

@riverpod
class AdFileApi extends _$AdFileApi {
  @override
  FutureOr<List<File>> build() {
    return getAdDirPaths();
  }

  Future<List<AdFile>> _getAdFiles() async {
    final dio = ref.read(dioProvider);
    final response = await dio.get("/ad-file");
    return _toList<AdFile>(response.data, AdFile.fromJson);
  }

  Future<List<File>> getAdDirPaths() async {
    state = await AsyncValue.guard(() async {
      final adFiles = await _getAdFiles();

      List<File> files = [];

      await _createDirAndClearFiles(adFiles, "image");
      await _createDirAndClearFiles(adFiles, "video");

      for (final adFile in adFiles) {
        final images = "${adFile.fileType}s"; // fileType이 image or video
        final imagePath = "/$images/${adFile.fileName}";

        final filePath = await _getFilePath(imagePath);

        File file = File(filePath);
        if (await file.exists()) {
          files.add(file);
          continue;
        }

        final dio = ref.read(dioProvider);
        final response = await dio.get<List<int>>(imagePath,
            options: Options(responseType: ResponseType.bytes));

        if (response.data != null) {
          await file.writeAsBytes(response.data!);
          files.add(file);
        }
      }

      return files;
    });

    return state.value ?? [];
  }

  Future<String> _getFilePath(String imagePath) async {
    var documentDirectory = await getApplicationDocumentsDirectory();
    return '${documentDirectory.path}/$imagePath';
  }

  Future<Directory> _createDir(String fileType) async {
    var documentDirectory = await getApplicationDocumentsDirectory();
    final directory = Directory("${documentDirectory.path}/$fileType");
    if (!(await directory.exists())) await directory.create(recursive: true);

    return directory;
  }

  Future<void> _createDirAndClearFiles(
      List<AdFile> adFiles, String fileType) async {
    final directory = await _createDir("${fileType}s");
    final files = directory.listSync();

    for (var file in files) {
      if (!adFiles.any((adFile) {
        return adFile.fileType == fileType &&
            adFile.fileName == p.basename(file.path);
      })) {
        await file.delete();
      }
    }
  }
}

List<TResult> _toList<TResult>(
    dynamic data, Function(Map<String, dynamic>) fromJson) {
  final reasons = (data as List).map((d) {
    final data = fromJson(d) as TResult;
    return data;
  }).toList();

  return reasons;
}
