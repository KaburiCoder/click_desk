import 'package:click_desk/providers/checkin/checkin_provider.dart';
import 'package:click_desk/widgets/head_mini_text.dart';
import 'package:click_desk/widgets/round_nav_buttons.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:click_desk/widgets/texts/xl_text.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DoctorLeftWidget extends ConsumerWidget {
  const DoctorLeftWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkinState = ref.watch(checkinProvider);
    return Column(
      children: [
        HeadMiniText(color: Colors.indigo[600]!),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HelloWidget(
                suname: checkinState.patientState.suname,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RoundNavButtons(
            navButtonColor: Colors.blue[300],
          ),
        )
      ],
    );
  }
}

class HelloWidget extends StatelessWidget {
  final String suname;
  const HelloWidget({
    super.key,
    required this.suname,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HeightSpacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            XlHanbitText("진료과", color: Colors.blue),
            XlHanbitText("를"),
          ],
        ),
        HeightSpacer(),
        XlHanbitText("선택해주세요."),
      ],
    );
  }
}
