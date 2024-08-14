import 'package:click_desk/pages/settings/ui/setting_row.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SettingRowAppVersion extends StatelessWidget {
  const SettingRowAppVersion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PackageInfo>(
        future: PackageInfo.fromPlatform(),
        builder: (context, snapshot) {
          return SettingRow(
            iconData: Icons.settings,
            iconColor: Colors.grey,
            title: "App Version",
            description: snapshot.data?.version ?? "",
          );
        });
  }
}
