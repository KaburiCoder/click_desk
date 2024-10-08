import 'package:click_desk/shared/constants/lottie_paths.dart';
import 'package:click_desk/models/params/user_search_params.dart';
import 'package:click_desk/shared/providers/patient/patient_confirm_manager.dart';
import 'package:click_desk/features/qr_scan/providers/qr_scan_manager.dart';
import 'package:click_desk/routes/nav.dart';
import 'package:click_desk/shared/utils/audio_util.dart';
import 'package:click_desk/widgets/common_left_body.dart';
import 'package:click_desk/widgets/left_wrapper.dart';
import 'package:click_desk/widgets/lottie.dart';
import 'package:click_desk/features/qr_scan/build_qr_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QrScanPage extends ConsumerStatefulWidget {
  const QrScanPage({super.key});

  @override
  ConsumerState<QrScanPage> createState() => _QrScanPageState();
}

class _QrScanPageState extends ConsumerState<QrScanPage> {
  late final PatientConfirmManager _patientConfirmManager;
  late final QrScanManager _qrScanManager;

  @override
  void initState() {
    super.initState();
    _patientConfirmManager = PatientConfirmManager(ref);
    _qrScanManager = QrScanManager(ref);
  }

  @override
  Widget build(BuildContext context) {
    _patientConfirmManager.listenOnQRScan(
      context,
      onSuccess: () {
        if (context.mounted) {
          Nav.of(context).pushRegist(replace: true);
        }
      },
    );

    _qrScanManager.listen(
      onScanned: (qrCode) async {
        await AudioUtil().beep(BeepStyle.scanner);
        await _patientConfirmManager
            .read()
            .fetchPatients(UserSearchParams(qrCode: qrCode));
      },
    );

    return Row(
      children: [
        LeftWrapper(
          backgroundColor: Colors.teal[300],
          navButtonColor: Colors.teal,
          bodyWidget: CommonLeftBody(
            title1: "모바일 건강보험증",
            title2: "QR을 인식해주세요.",
            bodyWidget: Align(
              alignment: Alignment.centerRight,
              child: LottieAnimation(
                LottiePaths.qr,
                duration: 5000,
              ),
            ),
          ),
        ),
        const Expanded(
          child: BuildQrView(),
        ),
      ],
    );
  }
}
