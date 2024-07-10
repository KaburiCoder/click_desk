import 'package:click_recept/constants/paths.dart';
import 'package:click_recept/pages/select_doctor/select_doctor_page.dart';
import 'package:click_recept/widgets/timeout_timer_layout.dart';
import 'package:go_router/go_router.dart';

GoRoute selectDoctorRoute() {
  return GoRoute(
      path: Paths.selectDoctor,
      name: Paths.selectDoctor,
      builder: (context, state) =>
          const TimeoutTimerLayout(child: SelectDoctorPage()));
}
