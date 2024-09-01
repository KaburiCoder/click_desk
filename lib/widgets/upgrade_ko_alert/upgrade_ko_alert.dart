import 'dart:io';

import 'package:click_desk/shared/providers/upgrader/upgrader_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:upgrader/upgrader.dart';

class UpgradeKoAlert extends ConsumerWidget {
  const UpgradeKoAlert({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final upgraderAsyncValue = ref.watch(upgraderProvider);

    return upgraderAsyncValue.hasValue
        ? UpgradeAlert(
            onUpdate: () {
              if (Platform.isAndroid || Platform.isIOS) {
                SystemNavigator.pop();
              } else {
                exit(0); // 이 경우는 Web, Desktop에서 사용
              }
              return true;
            },
            dialogStyle: UpgradeDialogStyle.cupertino,
            // showLater: false, // "나중에" 버튼 표시
            showIgnore: false, // "무시" 버튼 숨기기
            upgrader: upgraderAsyncValue.value,                      
          )
        : const SizedBox.shrink();
  }
}

