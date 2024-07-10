import 'package:click_recept/constants/paths.dart';
import 'package:click_recept/pages/checkin_phone/checkin_phone.dart';
import 'package:click_recept/widgets/timeout_timer_layout.dart';
import 'package:go_router/go_router.dart';

GoRoute phoneRoute() {
  return GoRoute(
      path: Paths.phone,
      name: Paths.phone,
      builder: (context, state) => const TimeoutTimerLayout(child: CheckInPhone()));
}
