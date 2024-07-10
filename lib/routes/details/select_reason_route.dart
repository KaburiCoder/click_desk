import 'package:click_recept/constants/paths.dart';
import 'package:click_recept/pages/select_reason/select_reason_page.dart';
import 'package:click_recept/widgets/timeout_timer_layout.dart';
import 'package:go_router/go_router.dart';

GoRoute selectReasonRoute() {
  return GoRoute(
      path: Paths.selectReason,
      name: Paths.selectReason,
      builder: (context, state) {
        return const TimeoutTimerLayout(child: SelectReasonPage());
      });
}
