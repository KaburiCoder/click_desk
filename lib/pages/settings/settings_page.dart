import 'package:click_desk/pages/settings/ui/setting_row_sync_settings.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:click_desk/widgets/tab_outside_to_close_keyboard.dart';
import 'package:flutter/material.dart';

import 'ui/setting_row_app_version.dart';
import 'ui/setting_row_timer.dart';
import 'ui/settings_app_bar.dart';
import 'ui/signout_button.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TapOutsideToCloseKeyboard(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: const SettingsAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [BoxShadow(blurRadius: 1)],
                ),
                child: const Column(
                  children: [
                    SettingRowTimer(),
                    Divider(height: 30),
                    SettingRowSyncSettings(),
                    Divider(height: 30),
                    SettingRowAppVersion(),
                  ],
                ),
              ),
              const Expanded(child: HeightSpacer()),
              const SignoutButton()
            ],
          ),
        ),
      ),
    );
  }
}
