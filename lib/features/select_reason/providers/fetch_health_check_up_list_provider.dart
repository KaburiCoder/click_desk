import 'package:click_desk/models/reason_state/reason_state.dart';
import 'package:click_desk/models/request_state/request_state.dart';
import 'package:click_desk/models/socket_io/socket_response.dart';
import 'package:click_desk/shared/providers/checkin/checkin_provider.dart';
import 'package:click_desk/shared/providers/socket_io/socket_io_provider.dart';
import 'package:click_desk/shared/services/socket_io/dto/socket_args.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_health_check_up_list_provider.g.dart';

@riverpod
class FetchHealthCheckUpList extends _$FetchHealthCheckUpList {
  @override
  RequestState<ReasonState> build() {
    return const RequestState.init();
  }

  Future<void> fetchHealthCheckup() async {
    state = const RequestState.loading();

    final checkin = ref.read(checkinProvider);
    final doctor = checkin.doctorState;
    final patient = checkin.patientState;
    final result = await ref.read(socketIOProvider).fetchHealthCheckUpList(
          SocketFetchHealthCheckUpListArgs(
              doctorCode: doctor.code,
              jumin: patient.jumin,
              suname: patient.suname),
        );

    if (result.status == ResponseStatus.success) {
      final gumjinList = result.data!.gumjinList;
      if (gumjinList.isEmpty) {
        state = const RequestState.error(message: "이번년도 검진 대상자가 아닙니다.");
        return;
      }

      final reasonSubs = gumjinList
          .map((gumjin) => ReasonSub(code: gumjin.code, text: gumjin.name));

      final reasonState = ref.read(checkinProvider).reasonState;
      final newReasonState = reasonState.copyWith(
        useNHISHealthCheckUp: true,
        subs: reasonSubs.toList(),
      );

      state = RequestSuccessState<ReasonState>(data: newReasonState);
      return;
    }

    state = RequestState.error(
        message: result.message ?? "검진정보 확인 중 알 수 없는 오류가 발생했습니다.");
  }
}
