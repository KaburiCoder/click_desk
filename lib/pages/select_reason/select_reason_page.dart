import 'package:click_recept/widgets/right_container.dart';
import 'package:click_recept/widgets/select_reason/left_reason_widget.dart';
import 'package:click_recept/widgets/select_reason/reasons_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelectReasonPage extends ConsumerWidget {
  const SelectReasonPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Row(
      children: [
        LeftReasonWidget(),
        Expanded(
          flex: 10,
          child: RightContainer(child: ReasonsWidget()),
        ),
      ],
    );
  }
}
