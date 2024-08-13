import 'package:click_desk/features/dialogs/base_alert_dialog.dart';
import 'package:click_desk/models/request_state/request_state.dart';
import 'package:click_desk/routes/nav.dart';
import 'package:click_desk/shared/services/socket_io/receive_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReceiveListener extends ConsumerWidget {
  const ReceiveListener({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      receiveProvider,
      (previous, next) {
        switch (next) {
          case RequestErrorState():
            if (context.mounted) baseAlertDialog(context, next.message);
          case RequestSuccessState():
            if (context.mounted) {
              Nav.of(context).pushSuccess(isConsented: next.data.isConsented);
            }
        }
      },
    );
    return const SizedBox.shrink();
  }
}
