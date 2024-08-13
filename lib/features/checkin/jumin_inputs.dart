import 'package:click_desk/features/checkin/listeners/jumin_keypad_listener.dart';
import 'package:click_desk/widgets/hint_input.dart';
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
  void dispose() {
    for (var num in nums) {
      num.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        JuminKeypadListener(nums: nums),
        Container(
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
        ),
      ],
    );
  }
}
