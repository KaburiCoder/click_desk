import 'package:click_desk/models/socket_io/socket_response.dart';
import 'package:click_desk/shared/providers/checkin/checkin_provider.dart';
import 'package:click_desk/shared/providers/socket_io/socket_io_provider.dart';
import 'package:click_desk/shared/services/socket_io/args/socket_args.dart';
import 'package:click_desk/shared/services/socket_io/res/socket_res.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'consent_provider.g.dart';
part 'consent_provider.freezed.dart';

@riverpod
class Consent extends _$Consent {
  @override
  ConsentState build() {
    return const ConsentState.init();
  }

  Future<void> checkConsent() async {
    state = const ConsentState.loading();

    try {
      final checkin = ref.read(checkinProvider);
      // 개인정보동의 정보가 있는지 체크
      SocketResponse<SocketCheckConsentRes> res = await ref
          .read(socketIOProvider)
          .checkMobileConsent(SocketCheckConsentArgs(
            jumin: checkin.patientState.jumin,
            doctorCode: checkin.doctorState.code,
          ));

      // 개인정보동의 정보가 있는 경우 패스
      if (res.data?.isConsented ?? false) {
        state = const ConsentState.pass();
        return;
      }

      // 개인정보동의 정보가 없는 경우 체크화면 띄우기
      state = const ConsentState.mustCheck();
    } catch (ex) {
      state = ConsentState.error(message: ex.toString());
    }
  }

  Future<void> saveConsent(SocketSaveConsentArgs args) async {
    state = const ConsentState.loading();

    try {
      final res = await ref.read(socketIOProvider).saveMobileConsent(args);

      // 클라이언트에선 항상 isConsented를 true로 넘겨줄 것임
      if (res.data?.isConsented ?? false) {
        state = const ConsentState.pass();
        return;
      }

      state = const ConsentState.error(message: "이용약관 동의 중 오류가 발생했습니다.");
    } catch (ex) {
      state = ConsentState.error(message: ex.toString());
    }
  }
}

@freezed
class ConsentState with _$ConsentState {
  const factory ConsentState.init() = ConsentInitState;
  const factory ConsentState.loading() = ConsentLoadingState;
  const factory ConsentState.pass() = ConsentPassState;
  const factory ConsentState.mustCheck() = ConsentMustCheckState;
  const factory ConsentState.error({required String message}) =
      ConsentErrorState;
  factory ConsentState.fromJson(Map<String, dynamic> json) =>
      _$ConsentStateFromJson(json);
}
