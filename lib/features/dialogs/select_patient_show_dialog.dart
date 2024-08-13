import 'package:click_desk/features/dialogs/select_patient_dialog.dart';
import 'package:click_desk/models/patient_state/patient_state.dart';
import 'package:flutter/material.dart';

Future<dynamic> selectPatientShowDialog(
    {required BuildContext context, required List<PatientState> patients}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return SelectPatientDialog(
        patients: patients,
      );
    },
  );
}
