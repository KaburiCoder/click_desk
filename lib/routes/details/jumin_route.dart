import 'package:click_recept/constants/paths.dart';
import 'package:click_recept/pages/checkin_jumin/checkin_jumin.dart';
import 'package:click_recept/widgets/timeout_timer_layout.dart';
import 'package:go_router/go_router.dart';

GoRoute juminRoute() {
  return GoRoute(
      path: Paths.jumin,
      name: Paths.jumin,
      builder: (context, state) =>
          const TimeoutTimerLayout(child: CheckInJumin()));
}
