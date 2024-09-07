import 'dart:async';

import 'package:click_desk/shared/error/providers/save_error_log.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<R?> guard<R>(Ref ref, Future<R> Function() body,
    void Function(Object error, StackTrace stack) onError) async {
  try {
    final result = await body();
    return result; // 정상적으로 완료된 경우 결과 반환
  } catch (error, stack) {
    onError(error, stack);
    ref.read(saveErrorLogProvider.notifier).save(error, stack);

    return null; // 예외 발생 시 null 반환
  }
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
