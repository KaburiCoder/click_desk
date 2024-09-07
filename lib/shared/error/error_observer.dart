import 'package:click_desk/shared/error/providers/save_error_log.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class ErrorObserver extends ProviderObserver {
  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    super.didUpdateProvider(provider, previousValue, newValue, container);

    if (newValue is AsyncError) {
      final error = newValue.error;
      final stackTrace = newValue.stackTrace;
      if (error is DioException) {
        final response = error.response;
        final statusCode = response?.statusCode;
        if (statusCode == null || statusCode < 400 || statusCode >= 500) {
          container.read(saveErrorLogProvider.notifier).save(error, stackTrace);
        }
      } else {
        container.read(saveErrorLogProvider.notifier).save(error, stackTrace);
      }
    }
  }
}
