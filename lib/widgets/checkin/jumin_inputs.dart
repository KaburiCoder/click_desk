import 'package:click_desk/models/params/user_search_params.dart';
import 'package:click_desk/models/patient_state/patient_state.dart';
import 'package:click_desk/providers/patient/patient_confirm_manager.dart';
import 'package:click_desk/widgets/dialogs/select_patient_dialog.dart';
import 'package:click_desk/widgets/hint_input.dart';
import 'package:click_desk/providers/keypad/jumin_keypad_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class JuminInputs extends ConsumerStatefulWidget {
  const JuminInputs({super.key});

  @override
  ConsumerState<JuminInputs> createState() => _JuminInputsState();
}

class _JuminInputsState extends ConsumerState<JuminInputs> {
  List<TextEditingController> nums =
      List.generate(13, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    ref.listen(juminKeypadProvider, (previous, next) async {
      if (next.goNext) {
        PatientConfirmManager(ref)
            .read()
            .fetchPatients(UserSearchParams(jumin: next.number));

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
          HintInput(hint: "0", controller: nums[1]),
          HintInput(hint: "0", controller: nums[2]),
          HintInput(hint: "0", controller: nums[3]),
          HintInput(hint: "0", controller: nums[4]),
          HintInput(hint: "0", controller: nums[5]),
          const Icon(Icons.horizontal_rule_outlined,
              size: 30, color: Colors.black26),
          HintInput(hint: "0", controller: nums[6]),
          HintInput(hint: "*", controller: nums[7], obscureText: true),
          HintInput(hint: "*", controller: nums[8], obscureText: true),
          HintInput(hint: "*", controller: nums[9], obscureText: true),
          HintInput(hint: "*", controller: nums[10], obscureText: true),
          HintInput(hint: "*", controller: nums[11], obscureText: true),
          HintInput(hint: "*", controller: nums[12], obscureText: true),
        ],
      ),
    );
  }
}

Future<dynamic> selectPatientShowDialog(
    {required BuildContext context, required List<PatientState> patients}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return SelectPatientDialog(
        patients: patients,
      );
    },
  );
}
