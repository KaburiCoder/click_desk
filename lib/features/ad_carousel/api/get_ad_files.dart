import 'package:click_desk/models/ad_files/ad_files.dart';
import 'package:click_desk/shared/constants/paths/api_paths.dart';
import 'package:click_desk/shared/providers/dio/dio_provider.dart';
import 'package:click_desk/shared/utils/converts/data_to_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<List<AdFile>> getAdFiles(Ref ref) async {
  final dio = ref.read(dioProvider);
  final response = await dio.get(ApiPath.adFile);
  return dataToList<AdFile>(response.data, AdFile.fromJson);
}
