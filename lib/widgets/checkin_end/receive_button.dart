import 'package:click_recept/models/receive_patient_res_state/receive_patient_res_state.dart';
import 'package:click_recept/models/request_state/request_state.dart';
import 'package:click_recept/routes/nav.dart';
import 'package:click_recept/widgets/checkin_end/receive_provider.dart';
import 'package:click_recept/widgets/dialogs/base_alert_dialog.dart';
import 'package:click_recept/widgets/spacer.dart';
import 'package:click_recept/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExTest {
  final String exTest;

  ExTest({required this.exTest});
}

class Test extends ExTest {
  final String test;

  Test({required this.test}) : super(exTest: '');
}

class ReceiveButton extends ConsumerWidget {
  const ReceiveButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final receiveState = ref.watch(receiveProvider);
    final receiveNotifier = ref.read(receiveProvider.notifier);
    final isLoading = receiveState is RequestLoadingState;

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

    return SizedBox(
      width: 300,
      height: 70,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
        onPressed: isLoading ? null : receiveNotifier.receivePatient,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isLoading) ...[
              const CircularProgressIndicator(),
              const WidthSpacer()
            ],
            const BaseText("접수하기", color: Colors.white, fontSize: 28),
          ],
        ),
      ),
    );
  }
}
