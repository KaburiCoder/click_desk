import 'package:freezed_annotation/freezed_annotation.dart';

part 'receive_patient_res_state.freezed.dart';
part 'receive_patient_res_state.g.dart';

@freezed
class ReceivePatientResState with _$ReceivePatientResState {
  const factory ReceivePatientResState({
    @Default(false) bool isConsented,
  }) = _ReceivePatientResState;

  factory ReceivePatientResState.fromJson(Map<String, dynamic> json) => _$ReceivePatientResStateFromJson(json);
}
