import 'package:click_desk/pages/settings/ui/setting_row.dart';
import 'package:click_desk/shared/providers/desk_settings/desk_settings.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingRowSyncSettings extends ConsumerWidget {
  const SettingRowSyncSettings({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsAsync = ref.watch(deskSettingsProvider);

    return SettingRow(
      iconData: Icons.sync,
      iconColor: Colors.blueAccent,
      title: "메인화면 이동 타이머 시간",
      description: "입력화면에서 설정된 기간이 지날 경우 메인화면으로 이동시켜주는 기능입니다.",
      item: Row(
        children: [
          SizedBox(
            child: OutlinedButton(
              onPressed: settingsAsync.isLoading
                  ? null
                  : () {
                      ref.read(deskSettingsProvider.notifier).build();
                    },
              child: BaseText(
                "설정 동기화 ${settingsAsync.isLoading ? "중..." : ""}",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
