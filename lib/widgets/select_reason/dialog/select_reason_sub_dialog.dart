import 'package:click_recept/models/reason_state/reason_state.dart';
import 'package:click_recept/providers/checkin/checkin_provider.dart';
import 'package:click_recept/utils/array_util.dart';
import 'package:click_recept/widgets/spacer.dart';
import 'package:click_recept/widgets/toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'reason_sub_confirm_button.dart';
import 'reason_sub_title.dart';

class SelectReasonSubDialog extends ConsumerWidget {
  final Function() onConfirm;
  final ReasonState reason;

  const SelectReasonSubDialog(
      {super.key, required this.reason, required this.onConfirm});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkinState = ref.watch(checkinProvider);

    print(checkinState.reasonState);
    return Dialog(
      child: IntrinsicWidth(
        child: Container(
          constraints: const BoxConstraints(minWidth: 500, maxWidth: 800),
          padding: const EdgeInsets.all(24.0),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ReasonSubTitle(),
                const HeightSpacer(24),
                ...buildRows(ref, reason.subs),
                const HeightSpacer(24),
                ReasonSubConfirmButton(onConfirm: onConfirm)
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> buildRows(WidgetRef ref, List<ReasonSub> subs) {
    final chunkSubs = ArrayUtil.chunkArray(reason.subs, 3);

    List<Widget> rows = [];
    chunkSubs.asMap().forEach((index, key) {
      List<ReasonSub> subs = chunkSubs[index];
      rows.add(
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (int i = 0; i < subs.length; i++) ...[
                if (i != 0) const SizedBox(width: 10), // WidthSpacer 대체
                Expanded(
                  child: ToggleButton(
                    text: subs[i].text,
                    value: false,
                    padding: const EdgeInsets.all(8),
                    constraints: const BoxConstraints(minHeight: 100),
                    onChanged: (value) {
                      ref
                          .read(checkinProvider.notifier)
                          .setReasonSub(subs[i], !value);
                    },
                  ), // 인덱스를 사용하는 커스텀 위젯
                ),
              ]
            ],
          ),
        ),
      );
      if (index != chunkSubs.length - 1) {
        rows.add(const SizedBox(height: 10)); // 사이사이에 삽입할 위젯
      }
    });
    return rows;
  }
}
