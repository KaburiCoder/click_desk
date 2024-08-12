import 'package:click_desk/models/doctor_state/doctor_state.dart';
import 'package:click_desk/shared/providers/checkin/checkin_provider.dart';
import 'package:click_desk/routes/nav.dart';
import 'package:click_desk/features/dialogs/base_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void selectDoctorAndPush(
  BuildContext context,
  WidgetRef ref, {
  required DoctorState doctor,
}) {
  if (!doctor.isWorking) {
    baseAlertDialog(context, "해당 진료실은 현재 휴진 상태 입니다.");
    return;
  }

  ref.read(checkinProvider.notifier).setDoctor(doctor);

  if (context.mounted) Nav.of(context).pushSelectReason();
}
