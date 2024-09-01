import 'dart:async';

import 'package:click_desk/models/receive_patient_res_state/receive_patient_res_state.dart';
import 'package:click_desk/models/request_state/request_state.dart';
import 'package:click_desk/models/socket_io/socket_response.dart';
import 'package:click_desk/shared/guards/guard.dart';
import 'package:click_desk/shared/providers/checkin/checkin_provider.dart';
import 'package:click_desk/shared/providers/socket_io/socket_io_provider.dart';
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

  Future<void> receivePatient() async {
    final checkinState = ref.read(checkinProvider);
    state = const RequestLoadingState();

    final socketIO = ref.read(socketIOProvider);
    final response = await guard(
      ref,
      () => socketIO.receiveMobilePatient(checkinState),
      (error, stack) {
        _setError(error.toString());
      },
    );

    if (response == null) return;

    if (response.status == ResponseStatus.error) {
      _setError(response.message!);
      return;
    }

    state = RequestSuccessState(data: response.data!);
  }
}
