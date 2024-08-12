import 'package:click_desk/shared/constants/paths/paths.dart';
import 'package:click_desk/pages/checkin_jumin/checkin_jumin.dart';
import 'package:click_desk/widgets/timeout_timer_layout.dart';
import 'package:go_router/go_router.dart';

GoRoute juminRoute() {
  return GoRoute(
      path: Paths.jumin,
      name: Paths.jumin,
      builder: (context, state) =>
          const TimeoutTimerLayout(child: CheckInJumin()));
}
