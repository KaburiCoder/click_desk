import 'package:click_desk/pages/settings/settings_page.dart';
import 'package:click_desk/shared/constants/paths/paths.dart';
import 'package:go_router/go_router.dart';

GoRoute settingsRoute() {
  return GoRoute(
      path: Paths.settings,
      name: Paths.settings,
      builder: (context, state) => const SettingsPage());
}
