import 'package:click_desk/constants/paths.dart';
import 'package:click_desk/pages/qr_scan/qr_scan_page.dart';
import 'package:click_desk/widgets/timeout_timer_layout.dart';
import 'package:go_router/go_router.dart';

GoRoute qrScanRoute() {
  return GoRoute(
      path: Paths.qrScan,
      name: Paths.qrScan,
      builder: (context, state) =>
          const TimeoutTimerLayout(seconds: 60, child: QrScanPage()));
}
