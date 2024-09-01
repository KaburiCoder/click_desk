import 'package:click_desk/models/params/user_search_params.dart';
import 'package:click_desk/models/patient_state/patient_state.dart';
import 'package:click_desk/models/request_state/request_state.dart';
import 'package:click_desk/shared/guards/guard.dart';
import 'package:click_desk/shared/providers/socket_io/socket_io_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'patient_confirm_provider.g.dart';

@riverpod
class PatientConfirm extends _$PatientConfirm {
  @override
  RequestState<List<PatientState>> build() {
    return const RequestState<List<PatientState>>.init();
  }

  Future<List<PatientState>?> fetchPatients(UserSearchParams params) async {
    state = const RequestState.loading();
    final socket = ref.read(socketIOProvider);

    final response = await guard(
      ref,
      () => socket.getMobilePatientInfo(params),
      (error, stack) {
        state = RequestState.error(message: error.toString());
      },
    );
    if (response == null) return null;
    state = RequestState.success(data: response.data!);
    return response.data;
  }

  Future<void> confirm({required String suname, required String jumin}) async {
    state = const RequestState.loading();

    final patients =
        await fetchPatients(UserSearchParams(suname: suname, jumin: jumin));

    if (patients == null || patients.isEmpty) {
      // 자격확인
      return;
    }

    state = RequestState.success(data: patients);
  }
}
