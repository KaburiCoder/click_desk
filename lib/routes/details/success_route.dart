import 'package:click_recept/constants/paths.dart';
import 'package:click_recept/pages/success/success_page.dart';
import 'package:click_recept/widgets/timeout_timer_layout.dart';
import 'package:go_router/go_router.dart';

GoRoute successRoute() {
  return GoRoute(
      path: Paths.success,
      name: Paths.success,
      builder: (context, state) {
        final isConsented = state.uri.queryParameters["isConsented"] == "true";
        return TimeoutTimerLayout(child: SuccessPage(isConsented: isConsented));
      });
}
