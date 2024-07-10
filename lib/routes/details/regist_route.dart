import 'package:click_recept/constants/paths.dart';
import 'package:click_recept/pages/regist/regist_page.dart';
import 'package:click_recept/widgets/timeout_timer_layout.dart';
import 'package:go_router/go_router.dart';

GoRoute registRoute() {
  return GoRoute(
      path: Paths.regist,
      name: Paths.regist,
      builder: (context, state) {
        return const TimeoutTimerLayout(
          seconds: 60,
          child: RegistPage(),
        );
      });
}
