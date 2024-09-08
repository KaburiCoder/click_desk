import 'package:dio/dio.dart';

String? _parseError(Object? error, {String? key}) {
  if (error is DioException) {
    final data = error.response?.data;
    if (data == null) {
      return null;
      // return error.message;
    }
    if (key == null) {
      return data?['message'];
    }
    return data?["error"]?[key];
  } else if (error is Exception) {
    return error.toString();
  }
  return null;
}

String parseError(Object? error, {String? key}) {
  String? message = _parseError(error, key: key);
  return message ?? "알 수 없는 에러 발생";
}
