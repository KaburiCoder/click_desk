import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_cert_params.freezed.dart';
part 'patient_cert_params.g.dart';

@freezed
class PatientCertParams with _$PatientCertParams {
  const factory PatientCertParams({
    required String chart,
    required String suname,
    required String jumin,
    required String jinchal,
    required bool isQRScanned,
  }) = _PatientCertParams;

  factory PatientCertParams.fromJson(Map<String, dynamic> json) => _$PatientCertParamsFromJson(json);
}
