import 'package:click_recept/constants/paths.dart';
import 'package:click_recept/pages/cert_new/cert_new_page.dart';
import 'package:click_recept/widgets/timeout_timer_layout.dart';
import 'package:go_router/go_router.dart';

GoRoute certNewRoute() {
  return GoRoute(
      path: Paths.certNew,
      name: Paths.certNew,
      builder: (context, state) =>
          const TimeoutTimerLayout(child: CertNewPage()));
}
