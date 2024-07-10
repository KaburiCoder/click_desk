import 'package:click_desk/providers/qr_scan/qr_scan_provider.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class BuildQrView extends StatelessWidget {
  const BuildQrView({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return Consumer(
      builder: (context, ref, child) {
        final qrScanNotier = ref.read(qrScanProvider.notifier);
        return QRView(
          key: qrKey,
          onQRViewCreated: qrScanNotier.setController,
          overlay: QrScannerOverlayShape(
              borderColor: Colors.red,
              borderRadius: 10,
              borderLength: 30,
              borderWidth: 10,
              cutOutSize: scanArea),
          onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
        );
      },
    );
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    print('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: BaseText('no Permission')),
      );
    }
  }
}
