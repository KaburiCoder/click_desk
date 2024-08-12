import 'package:click_desk/models/doctor_state/doctor_state.dart';
import 'package:click_desk/models/socket_io/socket_response.dart';
import 'package:click_desk/shared/providers/dio/dio_provider.dart';
import 'package:click_desk/shared/providers/socket_io/socket_io_provider.dart';
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

    // 대기환자 수 할당
    final socketService = ref.read(socketIOProvider);
    final clientDoctorsResponse = await socketService.getMobileDoctorInfo();
    if (clientDoctorsResponse.status == ResponseStatus.success) {
      final clientDoctors = clientDoctorsResponse.data;
      final Map<String, DoctorState> clientDoctorsMap = {
        for (var clientDoctor in clientDoctors!) clientDoctor.code: clientDoctor
      };

      for (int i = 0; i < doctors.length; i++) {
        final doctor = doctors[i];
        final foundDoctor = clientDoctorsMap[doctor.code];
        if (foundDoctor == null) continue;

        doctors[i] = doctor.copyWith(
            waitingPatientsCount: foundDoctor.waitingPatientsCount,
            gumjin: foundDoctor.gumjin);
      }
    }

    return doctors;
  }
}

@riverpod
DoctorService doctorService(DoctorServiceRef ref) {
  return DoctorService(ref);
}
