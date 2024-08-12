import 'package:click_desk/models/patient_state/patient_state.dart';
import 'package:click_desk/shared/providers/checkin/checkin_provider.dart';
import 'package:click_desk/routes/nav.dart';
import 'package:click_desk/widgets/gender_avatar.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:click_desk/widgets/texts/grey_text.dart';
import 'package:click_desk/widgets/texts/lg_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/close_button_widget.dart';

class SelectPatientDialog extends ConsumerWidget {
  final List<PatientState> patients;

  const SelectPatientDialog({
    super.key,
    required this.patients,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.lightBlue[50]!,
              ]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: patients.isNotEmpty
              ? SuccessWidget(patients)
              : const NotFoundWidget(),
        ),
      ),
    );
  }
}

class NotFoundWidget extends StatelessWidget {
  const NotFoundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IntrinsicWidth(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const LgText("조회된 인적사항이 없어요!", bold: true),
            const HeightSpacer(),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Nav.of(context).pop();
                },
                child: const BaseText("확인"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SuccessWidget extends ConsumerWidget {
  final List<PatientState> patients;

  const SuccessWidget(
    this.patients, {
    super.key,
  });

  void pushSelectDoctor(
      Checkin checkinNotifier, PatientState patient, BuildContext context) {
    checkinNotifier.setPatient(patient);
    Nav.of(context).pushSelectDoctor(replace: true);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkinNotifier = ref.watch(checkinProvider.notifier);

    return Stack(
      children: [
        const CloseButtonWidget(),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const BaseText("다음 환자가 조회되었어요!", fontSize: 30, bold: true),
              const HeightSpacer(),
              const BaseText("접수할 대상을 선택하세요.", bold: true),
              const HeightSpacer(),
              Flexible(
                child: Scrollbar(
                  thumbVisibility: true,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (final patient in patients)
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 4),
                              child: GestureDetector(
                                onTap: () {
                                  pushSelectDoctor(
                                      checkinNotifier, patient, context);
                                },
                                child: Container(
                                  constraints: const BoxConstraints(minWidth: 500),
                                  child: Card(
                                    elevation: 5,
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 40.0, vertical: 20.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          GenderAvatar(isWoman: patient.sex == "F"),
                                          const WidthSpacer(32),
                                          BaseText(
                                            patient.suname,
                                            fontSize: 30,
                                            bold: true,
                                          ),
                                          const WidthSpacer(32),
                                          BaseText(
                                            patient.formatBirth,
                                            fontSize: 20,
                                            color: Colors.grey[600],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const HeightSpacer(),
              const GreyText("* 본인의 정보를 선택하지 않은 경우 책임은 본인에게 있습니다."),
            ],
          ),
        ),
      ],
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BaseText("조회 중입니다.", fontSize: 30),
        HeightSpacer(),
        BaseText("잠시만 기다려주세요.", fontSize: 15, color: Colors.grey),
        HeightSpacer(16),
        CircularProgressIndicator(),
      ],
    );
  }
}
