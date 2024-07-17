import 'package:click_desk/models/receive_patient_res_state/receive_patient_res_state.dart';
import 'package:click_desk/models/request_state/request_state.dart';
import 'package:click_desk/models/socket_io/socket_response.dart';
import 'package:click_desk/providers/checkin/checkin_provider.dart';
import 'package:click_desk/providers/socket_io/socket_io_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'receive_provider.g.dart';

@riverpod
class Receive extends _$Receive {
  @override
  RequestState<ReceivePatientResState> build() {
    return const RequestState.init();
  }

  bool _setError(String message) {
    state = RequestErrorState(message: message);
    return false;
  }

  Future<bool> receivePatient() async {
    final checkinState = ref.read(checkinProvider);
    state = const RequestLoadingState();

    try {
      final socketIO = ref.read(socketIOProvider);
      final response = await socketIO.receiveMobilePatient(checkinState);

      if (response.status == ResponseStatus.error) {
        return _setError(response.message!);
      }

      state = RequestSuccessState(data: response.data!);
      return true;
    } catch (e) {
      return _setError(e.toString());
    }
  }
}
