import 'package:click_desk/shared/constants/paths/url_paths.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'log_dio_provider.g.dart';

@riverpod
Dio logDio(LogDioRef ref) {
  final dio = Dio(BaseOptions(baseUrl: UrlPaths.logUrl));

  return dio;
}
