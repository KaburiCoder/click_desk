import 'package:click_desk/pages/settings/ui/setting_row.dart';
import 'package:click_desk/shared/providers/shared_utiltiy/shared_utility_provider.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingRowTimer extends ConsumerStatefulWidget {
  const SettingRowTimer({
    super.key,
  });

  @override
  ConsumerState<SettingRowTimer> createState() => _SettingRowTimerState();
}

class _SettingRowTimerState extends ConsumerState<SettingRowTimer> {
  final TextEditingController _controller = TextEditingController();
  String? _errorText;

  @override
  void initState() {
    final sharedUtil = ref.read(sharedUtilityProvider);
    _controller.text = sharedUtil.getTimerSeconds().toString();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _validateInput(String value) async {
    final sharedUtil = ref.read(sharedUtilityProvider);
    final intValue = int.tryParse(value);
    if (value.isEmpty) {
      setState(() {
        _errorText = '30~300';
      });
    } else if (intValue == null || intValue < 30 || intValue > 300) {
      setState(() {
        _errorText = '30~300';
      });
    } else {
      setState(() {
        _errorText = null; // 유효한 입력이면 에러 메시지를 제거
      });
      await sharedUtil.setTimerSeconds(intValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SettingRow(
      iconData: Icons.timer_outlined,
      iconColor: Colors.blueAccent,
      title: "메인화면 이동 타이머 시간",
      description: "입력화면에서 설정된 기간이 지날 경우 메인화면으로 이동시켜주는 기능입니다.",
      item: Row(
        children: [
          SizedBox(
            width: 50,
            child: TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: "30",
                errorText: _errorText,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly, // 숫자만 입력 허용
              ],
              onChanged: (value) {
                _validateInput(value); // 입력할 때마다 유효성 검사 실행
              },
            ),
          ),
          const WidthSpacer(),
          const Text("초")
        ],
      ),
    );
  }
}
