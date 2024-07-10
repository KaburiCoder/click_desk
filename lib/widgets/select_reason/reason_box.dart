import 'package:click_recept/constants/font_family.dart';
import 'package:click_recept/models/reason_state/reason_state.dart';
import 'package:click_recept/providers/checkin/checkin_provider.dart';
import 'package:click_recept/routes/nav.dart';
import 'package:click_recept/widgets/select_reason/dialog/select_reason_sub_dialog.dart';
import 'package:click_recept/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ReasonBox extends ConsumerWidget {
  final ReasonState reason;

  const ReasonBox({
    super.key,
    required this.reason,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref
            .read(checkinProvider.notifier)
            .setReasonState(reason.deepCopyWithoutSubs());

        if (reason.isSubsExists) {
          showDialog(
            context: context,
            builder: (context) => SelectReasonSubDialog(
              reason: reason,
              onConfirm: () {
                Nav.of(context).pushCheckinEnd(popFirst: true);
              },
            ),
          );
          return;
        }
        Nav.of(context).pushCheckinEnd();
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.blue.withOpacity(0.25),
                  blurRadius: BorderSide.strokeAlignCenter,
                  blurStyle: BlurStyle.outer,
                  spreadRadius: 2,
                  offset: const Offset(0, 0))
            ]),
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: BaseText(
            reason.text,
            fontSize: 40,
            fontFamily: FontFamily.kccHanbit,
          ),
        ),
      ),
    );
  }
}
