import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_patient_state.freezed.dart';
part 'new_patient_state.g.dart';

@freezed
class NewPatientState with _$NewPatientState {
  const factory NewPatientState({
    @Default("") String suname,
    @Default("") String jumin,
    @Default("") String phoneNumber,
    @Default("") String postalCode,
    @Default("") String address,
    @Default("") String addressDetail,
  }) = _NewPatientState;  

  factory NewPatientState.fromJson(Map<String, dynamic> json) => _$NewPatientStateFromJson(json);
}