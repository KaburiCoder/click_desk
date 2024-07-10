import 'package:click_desk/models/doctor_state/doctor_state.dart';
import 'package:click_desk/models/patient_state/patient_state.dart';
import 'package:click_desk/models/reason_state/reason_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkin_state.freezed.dart';
part 'checkin_state.g.dart';

@freezed
class CheckinState with _$CheckinState {
  const factory CheckinState({
    @Default(StartType.first) StartType startType,
    @Default(false) bool isQRScanned,
    @Default(PatientState()) PatientState patientState,
    @Default(DoctorState()) DoctorState doctorState,
    @Default(ReasonState()) ReasonState reasonState,
  }) = _CheckinState;

  factory CheckinState.fromJson(Map<String, dynamic> json) => _$CheckinStateFromJson(json);
}

enum StartType {
  first,
  followUp,
}