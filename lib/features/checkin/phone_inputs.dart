import 'package:click_desk/models/params/user_search_params.dart';
import 'package:click_desk/shared/providers/patient/patient_confirm_manager.dart';
import 'package:click_desk/widgets/hint_input.dart';
import 'package:click_desk/shared/providers/keypad/phone_keypad_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PhoneInputs extends ConsumerStatefulWidget {
  const PhoneInputs({super.key});

  @override
  ConsumerState<PhoneInputs> createState() => _PhoneInputsState();
}

class _PhoneInputsState extends ConsumerState<PhoneInputs> {
  List<TextEditingController> nums =
      List.generate(11, (index) => TextEditingController());

  @override
  void initState() {
    super.initState();

    nums[0].text = "0";
    nums[1].text = "1";
    nums[2].text = "0";
  }

  @override
  void dispose() {
    for (var num in nums) {
      num.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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

    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HintInput(hint: "0", controller: nums[0]),
          HintInput(hint: "1", controller: nums[1]),
          HintInput(hint: "0", controller: nums[2]),
          const Icon(Icons.horizontal_rule_outlined,
              size: 30, color: Colors.black26),
          HintInput(hint: "0", controller: nums[3]),
          HintInput(hint: "0", controller: nums[4]),
          HintInput(hint: "0", controller: nums[5]),
          HintInput(hint: "0", controller: nums[6]),
          const Icon(Icons.horizontal_rule_outlined,
              size: 30, color: Colors.black26),
          HintInput(hint: "0", controller: nums[7]),
          HintInput(hint: "0", controller: nums[8]),
          HintInput(hint: "0", controller: nums[9]),
          HintInput(hint: "0", controller: nums[10]),
          // BaseText(
          //   _formatedInput,
          //   style: const TextStyle(fontSize: 24),
          // ),
        ],
      ),
    );
  }
}
