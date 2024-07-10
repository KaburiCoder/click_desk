import 'package:click_recept/providers/checkin/checkin_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'receive_info_row.dart';

class ReceiveInfoBox extends ConsumerWidget {
  const ReceiveInfoBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkinState = ref.watch(checkinProvider);
    final patient = checkinState.patientState;
    final doctor = checkinState.doctorState;
    final reason = checkinState.reasonState;

    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.25),
              spreadRadius: 1, // 그림자의 확산 정도
              blurRadius: 5, // 그림자의 흐림 정도
              offset: const Offset(0, 3), // 그림자의 위치 (x, y)
            )
          ],
        ),
        child: IntrinsicHeight(
          child: IntrinsicWidth(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReceiveInfoRow(
                    title: "이름/성명",
                    text: "${patient.suname} (${patient.toKorGender})"),
                ReceiveInfoRow(title: "생년월일", text: patient.formatBirth),
                const ReceiveInfoRow(title: "전화번호", text: "010-1234-5555"),
                ReceiveInfoRow(
                    title: "진료실",
                    text: "${doctor.jinchalName} / ${doctor.name}"),
                ReceiveInfoRow(title: "과목", text: doctor.kwamokName),
                ReceiveInfoRow(
                    title: "내원사유", text: reason.toSayuString(), maxLines: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
