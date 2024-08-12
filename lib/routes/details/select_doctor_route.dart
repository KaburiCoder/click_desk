import 'package:click_desk/shared/constants/paths/paths.dart';
import 'package:click_desk/pages/select_doctor/select_doctor_page.dart';
import 'package:click_desk/widgets/timeout_timer_layout.dart';
import 'package:go_router/go_router.dart';

GoRoute selectDoctorRoute() {
  return GoRoute(
      path: Paths.selectDoctor,
      name: Paths.selectDoctor,
      builder: (context, state) =>
          const TimeoutTimerLayout(child: SelectDoctorPage()));
}
