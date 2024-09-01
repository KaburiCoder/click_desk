import 'package:click_desk/pages/settings/ui/setting_row.dart';
import 'package:click_desk/shared/providers/upgrader/upgrader_provider.dart';
import 'package:click_desk/widgets/ev_button.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:upgrader/upgrader.dart';

class SettingRowAppVersion extends ConsumerWidget {
  const SettingRowAppVersion({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final upgraderAsyncValue = ref.watch(upgraderProvider);

    return FutureBuilder<PackageInfo>(
        future: PackageInfo.fromPlatform(),
        builder: (context, snapshot) {
          return SettingRow(
            iconData: Icons.settings,
            iconColor: Colors.grey,
            title: "App Version",
            description: snapshot.data?.version ?? "",
            item: upgraderAsyncValue.when(
              data: (upgrader) {
                return FutureBuilder(
                  future: upgrader.initialize(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator(); // 로딩 중에는 인디케이터 표시
                    } else if (snapshot.hasError) {
                      return const SizedBox.shrink(); // 에러가 발생한 경우 처리
                    } else {
                      // 초기화가 완료되면 최신 버전이 있는지 확인
                      if (upgrader.isUpdateAvailable()) {
                        return OutlinedButton(
                          onPressed: () {
                            upgrader.sendUserToAppStore();
                          },
                          child: BaseText(
                            "최신버전 업데이트 (${upgrader.currentAppStoreVersion})",
                          ),
                        );
                      }
                      return const SizedBox.shrink();
                    }
                  },
                );
              },
              error: (error, stackTrace) => const SizedBox.shrink(),
              loading: () => const SizedBox.shrink(),
            ),
          );
        });
  }
}
