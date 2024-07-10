import 'package:click_recept/models/checkin_state/checkin_state.dart';
import 'package:click_recept/models/doctor_state/doctor_state.dart';
import 'package:click_recept/models/patient_state/patient_state.dart';
import 'package:click_recept/models/reason_state/reason_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'checkin_provider.g.dart';

@riverpod
class Checkin extends _$Checkin {
  @override
  CheckinState build() {
    return const CheckinState();
  }

  void setStartType(StartType startType) {
    state = state.copyWith(startType: startType);
  }

  void setPatient(PatientState patientState) {
    state = state.copyWith(patientState: patientState);
  }

  void setDoctor(DoctorState doctorState) {
    state = state.copyWith(doctorState: doctorState);
  }

  void setReasonState(ReasonState reasonState) {
    state = state.copyWith(reasonState: reasonState);
  }

  void setReasonSub(ReasonSub sub, bool delete) {
    final reasonState = state.reasonState;
    List<ReasonSub> subs = List.from(reasonState.subs);

    if (delete) {
      final deletedSubs = subs.where((s) => s != sub).toList();

      state = state.copyWith(
          reasonState: state.reasonState.copyWith(subs: deletedSubs));
    } else {
      final exists = subs.any((s) => s == sub);
      if (exists) return;

      subs.add(sub);
      state =
          state.copyWith(reasonState: state.reasonState.copyWith(subs: subs));
    }
  }

  void setNewPatient1({required String suname, required String jumin}) {
    state = state.copyWith(
      patientState: state.patientState.copyWith(suname: suname, jumin: jumin),
    );
  }

  void setIsQRScanned(bool isQRScanned) {
    state = state.copyWith(isQRScanned: isQRScanned);
  }

  void setNewPatient2({
    required String phoneNumber,
    required String postalCode,
    required String address,
    required String addressDetail,
  }) {
    state = state.copyWith(
      patientState: state.patientState.copyWith(
        phoneNumber: phoneNumber,
        postalCode: postalCode,
        address: address,
        addressDetail: addressDetail,
      ),
    );
  }
}
