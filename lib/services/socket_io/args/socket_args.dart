import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'socket_args.freezed.dart';
part 'socket_args.g.dart';

@freezed
class SocketArgs with _$SocketArgs {
  const factory SocketArgs.checkConsent({
    required String jumin,
    required String doctorCode,
  }) = SocketCheckConsentArgs;

  const factory SocketArgs.saveConsent({
    required bool private,
    required bool marketing,
    required String jumin,
    required String doctorCode,
    required String suname,
    required List<int> signImageBuffer,
  }) = SocketSaveConsentArgs;

  const factory SocketArgs.fetchHealthCheckUpList({
    required String doctorCode,
    required String jumin,
    required String suname,
  }) = SocketFetchHealthCheckUpListArgs;
  factory SocketArgs.fromJson(Map<String, dynamic> json) =>
      _$SocketArgsFromJson(json);
}
