import 'package:click_desk/shared/constants/paths.dart';
import 'package:click_desk/pages/cert/cert_page.dart';
import 'package:click_desk/widgets/timeout_timer_layout.dart';
import 'package:go_router/go_router.dart';

GoRoute certRoute() {
  return GoRoute(
      path: Paths.cert,
      name: Paths.cert,
      builder: (context, state) => const TimeoutTimerLayout(child: CertPage()));
}
