import 'package:click_recept/utils/convert_util.dart';
import 'package:click_recept/utils/string_util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'patient_state.freezed.dart';
part 'patient_state.g.dart';

@freezed
class PatientState with _$PatientState {
  const PatientState._();

  const factory PatientState({
    @Default(0) int wjAuto,
    @Default("") String chart,
    @Default("") String suname,
    @Default("") String jumin,
    @Default("") String phoneNumber,
    @Default("") String postalCode,
    @Default("") String address,
    @Default("") String addressDetail,
  }) = _PatientState;

  factory PatientState.fromJson(Map<String, dynamic> json) =>
      _$PatientStateFromJson(json);

  static List<PatientState> fromResponseData(dynamic data) {
    return [for (final pat in data) PatientState.fromJson(pat)].toList();
  }

  get formatBirth {
    final birth = convertJuminToBirthday(jumin);
    return birth == null ? "" : DateFormat("yyyy-MM-dd").format(birth);
  }

  get sex {
    final checkIndex = Strings.substring(jumin, 6, 7);

    return switch (checkIndex) { "1" || "3" || "5" || "7" => "M", _ => "F" };
  }

  get toKorGender {
    return sex == "M" ? "남" : "여";
  }
}
