import 'package:click_desk/features/select_reason/providers/fetch_health_check_up_list_provider.dart';
import 'package:click_desk/features/select_reason/reason_box.dart';
import 'package:click_desk/models/reason_state/reason_state.dart';
import 'package:click_desk/models/request_state/request_state.dart';
import 'package:click_desk/widgets/base_alert_dialog.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HealthCheckUpListListener extends ConsumerWidget {
  const HealthCheckUpListListener({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      fetchHealthCheckUpListProvider,
      (previous, next) {
        switch (next) {
          case RequestSuccessState<ReasonState>():
            showSelectReasonSubDialog(context, next.data);
          case RequestErrorState():
            baseAlertDialog(context, next.message);
        }
      },
    );

    return const SizedBox.shrink();
  }
}
