import 'package:click_recept/constants/paths.dart';
import 'package:click_recept/pages/checkin_end/checkin_end_page.dart';
import 'package:click_recept/widgets/timeout_timer_layout.dart';
import 'package:go_router/go_router.dart';

GoRoute checkinEndRoute() {
  return GoRoute(
      path: Paths.checkinEnd,
      name: Paths.checkinEnd,
      builder: (context, state) =>
          const TimeoutTimerLayout(child: CheckinEndPage()));
}
