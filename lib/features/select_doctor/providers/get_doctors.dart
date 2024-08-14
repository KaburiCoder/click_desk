import 'package:click_desk/models/doctor_state/doctor_state.dart';
import 'package:click_desk/shared/services/doctor/doctor_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_doctors.g.dart';

@riverpod
FutureOr<List<DoctorState>> getDoctors(GetDoctorsRef ref) {
  final doctorService = ref.read(doctorServiceProvider);
  return doctorService.getAll();
}
