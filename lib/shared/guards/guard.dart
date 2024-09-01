import 'dart:async';
import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'api/save_error_log.dart';

R? guard<R>(Ref ref, R Function() body,
    void Function(Object error, StackTrace stack) onError) {
  return runZonedGuarded(
    body,
    (error, stack) {
      onError(error, stack);
      saveErrorLog(ref, error, stack).catchError((err) {
        log(err);
      });
      // 로그 수집
    },
  );
}

// FutureOr<GuardResult<R>> guard<R>(
//   FutureOr<R> Function() body,
// ) async {
//   try {
//     final result = await body();
//     return GuardSuccess(result);
//   } catch (error, stack) {
//     // 예외가 발생하면 `GuardError` 반환
//     return GuardError(error, stack);
//   }
// }

// abstract class GuardResult<T> {
//   const GuardResult();
// }

// class GuardSuccess<T> extends GuardResult<T> {
//   final T value;

//   GuardSuccess(this.value);
// }

// class GuardError extends GuardResult<Never> {
//   final Object error;
//   final StackTrace stackTrace;

//   GuardError(this.error, this.stackTrace);
// }
