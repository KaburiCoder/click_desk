import 'package:click_desk/constants/lottie_paths.dart';
import 'package:click_desk/providers/keypad/jumin_keypad_provider.dart';
import 'package:click_desk/widgets/checkin/checkin_wrapper.dart';
import 'package:click_desk/widgets/checkin/jumin_inputs.dart';
import 'package:click_desk/widgets/checkin/keypad.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckInJumin extends ConsumerStatefulWidget {
  const CheckInJumin({super.key});

  @override
  ConsumerState<CheckInJumin> createState() => _CheckInJuminState();
}

class _CheckInJuminState extends ConsumerState<CheckInJumin> {
  @override
  Widget build(BuildContext context) {
    return CheckinWrapper(
      titles: const ["주민등록번호로", "접수해 주세요"],
      lottiePath: LottiePaths.security,
      keyPad: Keypad(
        inputWidget: const JuminInputs(),
        keypadProvider: juminKeypadProvider,
      ),
    );
  }
}
