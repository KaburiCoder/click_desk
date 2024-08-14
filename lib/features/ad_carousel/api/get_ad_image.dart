import 'package:click_desk/shared/constants/paths/api_paths.dart';
import 'package:click_desk/shared/providers/dio/dio_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<List<int>?> getAdImage(Ref ref, String fileName) async {
  final dio = ref.read(dioProvider);
  final response = await dio.get(ApiPath.images(fileName),
      options: Options(responseType: ResponseType.bytes));
  return response.data;
}
