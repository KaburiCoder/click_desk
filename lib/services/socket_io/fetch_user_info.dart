import 'package:click_recept/models/params/user_search_params.dart';
import 'package:click_recept/models/socket_io/socket_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:click_recept/models/patient_state/patient_state.dart';
import 'package:click_recept/providers/socket_io/socket_io_provider.dart';

part 'fetch_user_info.g.dart';

@riverpod
FutureOr<List<PatientState>> fetchUserInfo(
    FetchUserInfoRef ref, UserSearchParams params) async {
  final socketIO = ref.read(socketIOProvider);

  final SocketResponse response = await socketIO.getMobilePatientInfo(params);

  if (response.status == ResponseStatus.error) {
    throw response.message!;
  }

  return PatientState.fromResponseData(response.data);
}
