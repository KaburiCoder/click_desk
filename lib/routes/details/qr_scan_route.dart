import 'package:click_recept/constants/paths.dart';
import 'package:click_recept/pages/qr_scan/qr_scan_page.dart';
import 'package:click_recept/widgets/timeout_timer_layout.dart';
import 'package:go_router/go_router.dart';

GoRoute qrScanRoute() {
  return GoRoute(
      path: Paths.qrScan,
      name: Paths.qrScan,
      builder: (context, state) =>
          const TimeoutTimerLayout(child: QrScanPage()));
}
