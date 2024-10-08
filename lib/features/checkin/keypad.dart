import 'package:click_desk/features/checkin/providers/keypad_manager.dart';
import 'package:click_desk/models/request_state/request_state.dart';
import 'package:click_desk/shared/providers/patient/patient_confirm_manager.dart';
import 'package:click_desk/widgets/custom_keypad.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Keypad extends ConsumerWidget {
  final Widget inputWidget;
  final dynamic keypadProvider;

  const Keypad({
    super.key,
    required this.keypadProvider,
    required this.inputWidget,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final patientConfirm = PatientConfirmManager(ref);
    final keypad = KeypadManager(ref, keypadProvider);
    final keypadState = keypad.watch();
    final state = patientConfirm.watch();
    final isLoading = state is RequestLoadingState;

    patientConfirm.listenOnKeypad(context);

    return Stack(
      children: [
        Column(
          children: [
            inputWidget,
            Expanded(
              child: CustomKeypad(
                nextDisabled: keypadState.isDiabled || isLoading,
                onChange: keypad.read().handleChange,
              ),
            ),
          ],
        ),
        if (isLoading) const Center(child: CircularProgressIndicator())
      ],
    );
  }
}
