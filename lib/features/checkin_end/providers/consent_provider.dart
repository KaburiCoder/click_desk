import 'package:click_desk/shared/guards/guard.dart';
import 'package:click_desk/shared/providers/checkin/checkin_provider.dart';
import 'package:click_desk/shared/providers/socket_io/socket_io_provider.dart';
import 'package:click_desk/shared/services/socket_io/dto/socket_args.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'consent_provider.freezed.dart';
part 'consent_provider.g.dart';

@riverpod
class Consent extends _$Consent {
  @override
  ConsentState build() {
    return const ConsentState.init();
  }

  Future<void> checkConsent() async {
    state = const ConsentState.loading();

    final checkin = ref.read(checkinProvider);
    var res = await guard(
      ref,
      () =>
          ref.read(socketIOProvider).checkMobileConsent(SocketCheckConsentArgs(
                jumin: checkin.patientState.jumin,
                doctorCode: checkin.doctorState.code,
              )),
      (error, stack) {
        state = ConsentState.error(message: error.toString());
      },
    );

    if (res == null) return;

    if (res.data?.isConsented ?? false) {
      state = const ConsentState.pass();
      return;
    }

    // 개인정보동의 정보가 없는 경우 체크화면 띄우기
    state = const ConsentState.mustCheck();
  }

  Future<void> saveConsent(SocketSaveConsentArgs args) async {
    state = const ConsentState.loading();

    final res = await guard(
      ref,
      () => ref.read(socketIOProvider).saveMobileConsent(args),
      (error, stack) {
        state = ConsentState.error(message: error.toString());
      },
    );
    if (res == null) return;

    if (res.data?.isConsented ?? false) {
      state = const ConsentState.pass();
      return;
    }

    state = const ConsentState.error(message: "이용약관 동의 중 오류가 발생했습니다.");
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
