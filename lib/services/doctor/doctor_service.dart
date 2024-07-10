import 'package:click_desk/models/doctor_state/doctor_state.dart';
import 'package:click_desk/providers/dio/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'doctor_service.g.dart';

class DoctorService {
  final DoctorServiceRef ref;

  DoctorService(this.ref);

  Future<List<DoctorState>> getAll() async {
    final dio = ref.read(dioProvider);
    final response = await dio.get("/clickdesk/doctor");

    final doctors = (response.data as List).map((d) {
      return DoctorState.fromJson(d);
    }).toList();

    doctors.sort((a, b) {
      if (!a.isWorking && b.isWorking) return 1;
      if (a.isWorking && !b.isWorking) return -1;
      return 0;
    });

    return doctors;
  }
}

@riverpod
DoctorService doctorService(DoctorServiceRef ref) {
  return DoctorService(ref);
}
