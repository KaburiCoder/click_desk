import 'dart:async';
import 'dart:io';
import 'dart:developer';

import 'package:click_desk/models/user/user.dart';
import 'package:click_desk/shared/error/api/save_error_log.dart';
import 'package:click_desk/shared/providers/auth/auth_provider.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'save_error_log.g.dart';

@riverpod
class SaveErrorLog extends _$SaveErrorLog {
  @override
  void build() {
    return;
  }

  void save(error, stack) {
    _save(error, stack).catchError((error) => {log(error)});
  }

  Future<void> _save(error, stack) async {
    final auth = ref.read(authProvider);
    if(auth.hasError) return;
    final user = auth.value;
    final data = await generateErrorReport(user, error, stack);
    await saveErrorLog(ref, data);
  }

  Future<Map<String, dynamic>> generateErrorReport(
      User? user, Object error, StackTrace stack) async {
    final packageInfo = await PackageInfo.fromPlatform();

    return {
      "ykiho": user?.orgName, // 사용자 정의 항목 - 기본값 사용
      "computerName": "", // 컴퓨터 이름
      "moduleName": packageInfo.packageName, // 모듈 이름 - 예: 앱 이름
      "clientVersion": packageInfo.version, // 앱 버전 - 기본값 사용
      "logLevel": "ERROR", // 로그 레벨 - 예: ERROR, INFO 등
      "exceptionType": error.runtimeType.toString(), // 예외 타입
      "errorMessage": error.toString(), // 에러 메시지
      "stackTrace": stack.toString(), // 스택 트레이스
      "source": "Flutter", // 소스 - 기본값 사용
      "additionalData": {
        "gc": {
          "totalMemory":
              "${(ProcessInfo.currentRss / (1024 * 1024)).toStringAsFixed(2)}MB", // 현재 사용 중인 메모리
        },
        "os": {
          "name": Platform.operatingSystem, // 운영체제 이름
          "major": Platform.operatingSystemVersion
              .split('.')
              .first, // 운영체제 버전의 첫 번째 부분
          "minor": Platform.operatingSystemVersion.split('.').length > 1
              ? Platform.operatingSystemVersion.split('.')[1]
              : 0, // 운영체제 버전의 두 번째 부분 (가능한 경우)
        },
        "user": {
          "id": user?.userId, // 사용자 ID - 기본값 사용
          "name": user?.orgName, // 사용자 이름 - 기본값 사용
          "email": user?.email,
        },
        "process": {
          "private":
              "${(ProcessInfo.currentRss / (1024 * 1024)).toStringAsFixed(2)}MB",
        }
      },
    };
  }
}
