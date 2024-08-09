import 'package:click_desk/models/doctor_state/doctor_state.dart';
import 'package:click_desk/providers/checkin/checkin_provider.dart';
import 'package:click_desk/widgets/chip_widget.dart';
import 'package:click_desk/widgets/select_doctor/lib/select_doctor_and_push.dart';
import 'package:click_desk/widgets/spacer.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DoctorCard extends ConsumerWidget {
  const DoctorCard({
    super.key,
    required this.doctor,
  });

  final DoctorState doctor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () async {
        selectDoctorAndPush(context, ref, doctor: doctor);
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: const [
            BoxShadow(
              color: Colors.blue,
              blurRadius: 1,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [JinryoHeader(doctor: doctor), JinryoBody(doctor: doctor)],
        ),
      ),
    );
  }
}

class JinryoBody extends ConsumerWidget {
  const JinryoBody({
    super.key,
    required this.doctor,
  });

  final DoctorState doctor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkin = ref.watch(checkinProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue[200],
              foregroundColor: Colors.white,
              child: const Icon(Icons.person_2_outlined),
            ),
            const WidthSpacer(18.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: const BoxConstraints(minWidth: 120),
                  child: Row(
                    children: [
                      BaseText(
                        doctor.name,
                        fontSize: 24,
                        color: Colors.blueGrey,
                        bold: true,
                      ),
                      if (checkin.patientState.pDoctorCode == doctor.code) ...[
                        const WidthSpacer(),
                        const BaseText(
                          "(주치의)",
                          fontSize: 18,
                          color: Colors.deepOrange,
                          bold: true,
                        ),
                      ]
                    ],
                  ),
                ),
                const WidthSpacer(),
                BaseText(
                  doctor.kwamokName,
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ],
            ),
          ],
        ),
        if (doctor.isWorking)
          Row(
            children: [
              const Row(
                children: [
                  Icon(Icons.timer_sharp, color: Colors.blueGrey),
                  WidthSpacer(),
                  BaseText("대기인원"),
                ],
              ),
              const WidthSpacer(24),
              BaseText(
                "${doctor.waitingPatientsCount}명",
                fontSize: 24,
                bold: true,
                color: Colors.blue[800],
              ),
            ],
          )
      ],
    );
  }
}

class JinryoHeader extends StatelessWidget {
  const JinryoHeader({
    super.key,
    required this.doctor,
  });

  final DoctorState doctor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        BaseText(doctor.jinchalName, fontSize: 28, bold: true),
        Row(
          children: [
            if (doctor.gumjin) ...[
              ChipWidget(
                text: "공단검진",
                color: Colors.pink[300]!,
              ),
              const WidthSpacer()
            ],
            ChipWidget(
                text: doctor.isWorking ? "진료가능" : "휴진",
                color: doctor.isWorking ? Colors.green : Colors.grey),
          ],
        ),
      ],
    );
  }
}
