import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:click_desk/features/checkin/providers/phone_keypad_provider.dart';
import 'package:click_desk/models/params/user_search_params.dart';
import 'package:click_desk/shared/providers/patient/patient_confirm_manager.dart';

class PhoneKeypadListener extends ConsumerWidget {
  final List<TextEditingController> nums;
  const PhoneKeypadListener({
    super.key,
    required this.nums,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(phoneKeypadProvider, (previous, next) {
      if (next.goNext) {
        PatientConfirmManager(ref)
            .read()
            .fetchPatients(UserSearchParams(phoneNumber: next.number));
        return;
      }

      for (final (index, controller) in nums.indexed) {
        controller.text = next.number.length > index
            ? next.number.substring(index, index + 1)
            : "";
      }
    });

    return const SizedBox.shrink();
  }
}
