import 'package:click_desk/models/doctor_state/doctor_state.dart';
import 'package:click_desk/models/socket_io/socket_response.dart';
import 'package:click_desk/shared/providers/socket_io/socket_io_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_doctor_info.g.dart';

@riverpod
FutureOr<List<DoctorState>> fetchDoctorInfo(FetchDoctorInfoRef ref) async {
  final socketIO = ref.read(socketIOProvider);
  final response = await socketIO.getMobileDoctorInfo();

  if (response.status == ResponseStatus.error) {
    throw response.message!;
  }

  return response.data!;  
}
