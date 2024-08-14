import 'package:click_desk/models/gumjin_state/gumjin_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_res.g.dart';
part 'socket_res.freezed.dart';

@freezed
class SocketRes with _$SocketRes {
  const factory SocketRes.checkConsent({
    @Default(false) bool isConsented,
  }) = SocketCheckConsentRes;

  const factory SocketRes.saveConsent({
    @Default(false) bool isConsented,
  }) = SocketSaveConsentRes;

  const factory SocketRes.fetchHealthCheckUpList({
    @Default([]) List<GumjinState> gumjinList,
  }) = SocketFetchHealthCheckUpListRes;

  factory SocketRes.fromJson(Map<String, dynamic> json) =>
      _$SocketResFromJson(json);
}
