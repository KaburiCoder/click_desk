import 'dart:async';

import 'package:click_desk/shared/constants/paths/api_paths.dart';
import 'package:click_desk/shared/providers/dio/log_dio_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> saveErrorLog(Ref ref, Object data) async {
  final dio = ref.read(logDioProvider);
  await dio.post(ApiPath.errorLog, data: data);
}
