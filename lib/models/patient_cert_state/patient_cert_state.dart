import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_cert_state.freezed.dart';
part 'patient_cert_state.g.dart';

@freezed
class PatientCertState with _$PatientCertState{
  const factory PatientCertState() = _PatientCertState;

  factory PatientCertState.fromJson(Map<String, dynamic> json) => _$PatientCertStateFromJson(json);
}