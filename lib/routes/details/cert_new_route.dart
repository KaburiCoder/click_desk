import 'package:click_desk/shared/constants/paths.dart';
import 'package:click_desk/pages/cert_new/cert_new_page.dart';
import 'package:click_desk/widgets/timeout_timer_layout.dart';
import 'package:go_router/go_router.dart';

GoRoute certNewRoute() {
  return GoRoute(
      path: Paths.certNew,
      name: Paths.certNew,
      builder: (context, state) =>
          const TimeoutTimerLayout(child: CertNewPage()));
}
