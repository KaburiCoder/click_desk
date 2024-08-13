import 'package:click_desk/shared/constants/font_family.dart';
import 'package:click_desk/models/reason_state/reason_state.dart';
import 'package:click_desk/shared/providers/checkin/checkin_provider.dart';
import 'package:click_desk/routes/nav.dart';
import 'package:click_desk/features/select_reason/providers/fetch_health_check_up_list_provider.dart';
import 'package:click_desk/features/select_reason/dialog/select_reason_sub_dialog.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
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
        if (reason.useNHISHealthCheckUp) {
          ref
              .read(fetchHealthCheckUpListProvider.notifier)
              .fetchHealthCheckup();
          return;
        } else if (reason.isSubsExists) {
          showSelectReasonSubDialog(context, reason);
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

void showSelectReasonSubDialog(BuildContext context, ReasonState reason) {
  showDialog(
    context: context,
    builder: (context) => SelectReasonSubDialog(
      reason: reason,
      onConfirm: () {
        Nav.of(context).pushCheckinEnd(popFirst: true);
      },
    ),
  );
}
