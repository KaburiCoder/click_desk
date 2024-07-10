import 'package:click_recept/constants/paths.dart';
import 'package:click_recept/pages/main/main_page.dart';
import 'package:go_router/go_router.dart';

GoRoute mainRoute() {
  return GoRoute(
      path: Paths.main,
      name: Paths.main,
      builder: (context, state) => const MainPage());
}
