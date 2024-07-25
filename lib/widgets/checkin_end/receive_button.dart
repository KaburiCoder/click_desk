import 'package:click_desk/models/request_state/request_state.dart';
import 'package:click_desk/providers/checkin/checkin_provider.dart';
import 'package:click_desk/routes/nav.dart';
import 'package:click_desk/services/socket_io/args/socket_args.dart';
import 'package:click_desk/services/socket_io/consent_provider.dart';
import 'package:click_desk/services/socket_io/receive_provider.dart';
import 'package:click_desk/widgets/dialogs/base_alert_dialog.dart';
import 'package:click_desk/widgets/modals/show_private_consent_modal.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
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
    final isReceiveLoading = receiveState is RequestLoadingState;

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

    final consentState = ref.watch(consentProvider);
    final consentNotifier = ref.read(consentProvider.notifier);
    final isConsentLoading = consentState == const ConsentState.loading();

    final isLoading = isReceiveLoading || isConsentLoading;

    ref.listen(
      consentProvider,
      (previous, next) async {
        switch (next) {
          case ConsentMustCheckState():
            final modalState = await showPrivateConsentModal(context);
            if (modalState == null) {
              if (context.mounted) {
                baseAlertDialog(context, "개인정보동의를 해야 접수가 가능합니다.");
              }
            } else {
              if (context.mounted) {
                final checkin = ref.read(checkinProvider);
                consentNotifier.saveConsent(SocketSaveConsentArgs(
                  private: modalState.privateChecked,
                  marketing: modalState.marketingChecked,
                  signImageBuffer: modalState.signImageBuffer!.toList(),
                  doctorCode: checkin.doctorState.code,
                  jumin: checkin.patientState.jumin,
                  suname: checkin.patientState.suname,
                ));
              }
            }
          case ConsentErrorState():
            if (context.mounted) {
              baseAlertDialog(context, next.message);
            }
          case ConsentPassState():
            receiveNotifier.receivePatient();
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
        onPressed: isLoading ? null : consentNotifier.checkConsent,
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
        // onPressed: isLoading ? null : receiveNotifier.receivePatient,
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     if (isLoading) ...[
        //       const CircularProgressIndicator(),
        //       const WidthSpacer()
        //     ],
        //     const BaseText("접수하기", color: Colors.white, fontSize: 28),
        //   ],
        // ),
      ),
    );
  }
}
