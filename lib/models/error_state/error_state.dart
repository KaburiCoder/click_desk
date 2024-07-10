import 'package:dio/dio.dart';

class ErrorState {
  String? message;
  Map<String, dynamic>? error;

  ErrorState({
    this.message,
    this.error,
  });

  factory ErrorState.parse(Object e) {
    if (e is DioException) {
      return ErrorState(
          error: e.response?.data?['error'], message: e.response?.data?['message']);
    }

    return ErrorState(message: e.toString());
  }
}
