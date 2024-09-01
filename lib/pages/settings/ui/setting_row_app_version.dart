import 'package:click_desk/pages/settings/ui/setting_row.dart';
import 'package:click_desk/shared/providers/upgrader/upgrader_provider.dart';
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
    return FutureBuilder<PackageInfo>(
        future: PackageInfo.fromPlatform(),
        builder: (context, snapshot) {
          return SettingRow(
            iconData: Icons.settings,
            iconColor: Colors.grey,
            title: "App Version",
            description: snapshot.data?.version ?? "",
            item: FutureBuilder(
              future: ref.read(upgraderProvider.notifier).buildUpgrader(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return const SizedBox.shrink();
                } else {
                  final upgrader = snapshot.data!;
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
            ),
          );
        });
  }
}
