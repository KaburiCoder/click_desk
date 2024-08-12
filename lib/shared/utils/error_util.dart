import 'package:dio/dio.dart';

String parseError(Object? error, {String? key}) {
  if (error is DioException) {
    final data = error.response?.data;
    if (key == null) {
      return data?['message'] ?? "";
    }
    return data?["error"]?[key] ?? "";
  } else if (error is Exception) {
    return error.toString();
  }

  return "알 수 없는 에러 발생";
}
