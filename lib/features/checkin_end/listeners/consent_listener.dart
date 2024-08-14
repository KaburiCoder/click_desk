import 'package:click_desk/features/checkin_end/providers/consent_provider.dart';
import 'package:click_desk/widgets/base_alert_dialog.dart';
import 'package:click_desk/features/checkin_end/show_private_consent_modal.dart';
import 'package:click_desk/shared/providers/checkin/checkin_provider.dart';
import 'package:click_desk/shared/services/socket_io/dto/socket_args.dart';
import 'package:click_desk/features/checkin_end/providers/receive_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConsentListener extends ConsumerWidget {
  const ConsentListener({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final consentNotifier = ref.read(consentProvider.notifier);
    final receiveNotifier = ref.read(receiveProvider.notifier);

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

    return const SizedBox.shrink();
  }
}
