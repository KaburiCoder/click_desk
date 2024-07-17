import 'package:click_desk/constants/lottie_paths.dart';
import 'package:click_desk/providers/keypad/phone_keypad_provider.dart';
import 'package:click_desk/widgets/checkin/keypad.dart';
import 'package:click_desk/widgets/checkin/phone_inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/checkin/checkin_wrapper.dart';

class CheckInPhone extends ConsumerStatefulWidget {
  const CheckInPhone({super.key});

  @override
  ConsumerState<CheckInPhone> createState() => _CheckInPhoneState();
}

class _CheckInPhoneState extends ConsumerState<CheckInPhone> {
  @override
  Widget build(BuildContext context) {
    return CheckinWrapper(
      titles: const ["휴대폰 번호로", "접수해 주세요"],
         lottiePath: LottiePaths.phonNumber,
      keyPad: Keypad(
        inputWidget: const PhoneInputs(),
        keypadProvider: phoneKeypadProvider,
      ),
    );
  }
}
