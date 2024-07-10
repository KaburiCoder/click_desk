import 'package:click_recept/widgets/checkin_end/checkin_end_left_widget.dart';
import 'package:click_recept/widgets/checkin_end/receive_button.dart';
import 'package:click_recept/widgets/checkin_end/receive_info_box.dart';
import 'package:click_recept/widgets/right_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckinEndPage extends ConsumerWidget {
  const CheckinEndPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Row(
      children: [
        CheckinEndLeftWidget(),
        Expanded(
          flex: 6,
          child: RightContainer(
            child: Column(
              children: [
                Expanded(
                  child: ReceiveInfoBox(),
                ),
                ReceiveButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
