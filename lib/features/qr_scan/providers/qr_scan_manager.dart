import 'package:click_desk/models/qr_scan_state/qr_scan_state.dart';
import 'package:click_desk/shared/providers/interfaces/iprovder_manager_base.dart';
import 'package:click_desk/features/qr_scan/providers/qr_scan_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class QrScanManager implements IProviderManagerBase<QrScanState, QrScan> {
  @override
  final WidgetRef ref;

  QrScanManager(this.ref);

  @override
  QrScan read() {
    return ref.read(qrScanProvider.notifier);
  }

  @override
  QrScanState watch() {
    throw UnimplementedError();
  }

  void listen({required Function(String qrCode) onScanned}) {
    ref.listen<QrScanState>(
      qrScanProvider,
      (previous, next) {
        bool isInitial = previous?.controller != next.controller;
        if (isInitial) {
          next.controller?.flipCamera();
          return;
        }

        bool isScanned = next.scanData?.code != null &&
            previous?.scanData?.code != next.scanData?.code;
        if (isScanned) {
          read().clearScanDataAfterSeconds(5);
          onScanned(next.scanData!.code!);

          return;
        }
      },
    );
  }
}
