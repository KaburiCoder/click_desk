import 'dart:async';
import 'dart:io';

import 'package:click_desk/models/qr_scan_state/qr_scan_state.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'qr_scan_provider.g.dart';

@riverpod
class QrScan extends _$QrScan {
  @override
  QrScanState build() {
    ref.onDispose(() {
      state.controller?.dispose();
    });
    return const QrScanState();
  }

  void clearScanDataAfterSeconds(int seconds) async {
    await Future.delayed(Duration(seconds: seconds));
    state = state.copyWith(scanData: null);
  }

  void setController(QRViewController controller) {
    state = state.copyWith(controller: controller);
    controller.scannedDataStream.listen((scanData) {
      state = state.copyWith(scanData: scanData);
    });
  }

  void reassemble() {
    if (Platform.isAndroid) {
      state.controller!.pauseCamera();
    }
    state.controller!.resumeCamera();
  }

  Future<void> flipCamera() async {
    await state.controller?.flipCamera();
    state = state.copyWith();
  }

  Future<CameraFacing?> getCameraInfo() async {
    return state.controller?.getCameraInfo();
  }
}
