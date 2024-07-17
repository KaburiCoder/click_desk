import 'package:click_desk/constants/paths.dart';
import 'package:click_desk/pages/regist/regist_page.dart';
import 'package:click_desk/widgets/timeout_timer_layout.dart';
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
