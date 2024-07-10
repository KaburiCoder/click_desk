import 'package:click_desk/constants/paths.dart';
import 'package:click_desk/pages/checkin_end/checkin_end_page.dart';
import 'package:click_desk/widgets/timeout_timer_layout.dart';
import 'package:go_router/go_router.dart';

GoRoute checkinEndRoute() {
  return GoRoute(
      path: Paths.checkinEnd,
      name: Paths.checkinEnd,
      builder: (context, state) =>
          const TimeoutTimerLayout(child: CheckinEndPage()));
}
