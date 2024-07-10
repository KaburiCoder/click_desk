import 'package:click_desk/models/checkin_state/checkin_state.dart';
import 'package:click_desk/models/request_state/request_state.dart';
import 'package:click_desk/providers/checkin/checkin_provider.dart';
import 'package:click_desk/providers/interfaces/iprovder_manager_base.dart';
import 'package:click_desk/providers/patient/patient_confirm_provider.dart';
import 'package:click_desk/widgets/checkin/jumin_inputs.dart';
import 'package:click_desk/widgets/dialogs/base_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PatientConfirmManager
    implements IProviderManagerBase<RequestState, PatientConfirm> {
  late bool isDialogShown = false;

  @override
  final WidgetRef ref;
  PatientConfirmManager(this.ref);

  @override
  RequestState watch() {
    return ref.watch(patientConfirmProvider);
  }

  @override
  PatientConfirm read() {
    return ref.read(patientConfirmProvider.notifier);
  }

  void listenOnKeypad(BuildContext context) {
    ref.listen(
      patientConfirmProvider,
      (previous, next) {
        switch (next) {
          case RequestSuccessState():
            selectPatientShowDialog(context: context, patients: next.data);
          case RequestErrorState():
            baseAlertDialog(context, next.message);
        }
      },
    );
  }

  void listenOnRegist(BuildContext context, Function() onNext) {
    ref.listen(
      patientConfirmProvider,
      (previous, next) {
        switch (next) {
          case RequestSuccessState():
            if (previous is RequestSuccessState) return;

            if (next.data.isEmpty) {
              onNext();
            } else {
              selectPatientShowDialog(context: context, patients: next.data);
            }
          case RequestErrorState():
            baseAlertDialog(context, next.message);
        }
      },
    );
  }

  void listenOnQRScan(BuildContext context, {required Function() onSuccess}) {
    ref.listen(
      patientConfirmProvider,
      (previous, next) async {
        switch (next) {
          case RequestErrorState():
            await baseAlertDialog(context, next.message);
          case RequestSuccessState():
            if (isDialogShown) return;
            isDialogShown = true;

            if (next.data.isEmpty) {
              await baseAlertDialog(context, "인적정보가 조회되지 않아요.!!");
            } else {
              final patient = next.data[0];
              final checkinNotifier = ref.read(checkinProvider.notifier);
              if (patient.wjAuto == 0) {
                final checkinState = ref.read(checkinProvider);

                // 클릭소프트 인적사항 저장이 안돼있는 경우
                if (checkinState.startType == StartType.followUp) {
                  await baseAlertDialog(
                      context, "재진정보가 없습니다.\n확인 시 초진으로 접수가 진행됩니다.");
                }

                checkinNotifier.setPatient(patient);
                checkinNotifier.setIsQRScanned(true);
                onSuccess();
                // Nav.of(context).pushRegist(replace: true);
              } else {
                // 인적정보가 있는 경우
                await selectPatientShowDialog(
                    context: context, patients: next.data);
              }
            }

            isDialogShown = false;
        }
      },
    );
  }
}
