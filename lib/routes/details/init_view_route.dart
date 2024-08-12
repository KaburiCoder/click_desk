import 'package:click_desk/shared/constants/paths.dart';
import 'package:click_desk/pages/init_view/init_view_page.dart';
import 'package:go_router/go_router.dart';

GoRoute initViewRoute() {
  return GoRoute(
      path: Paths.initView,
      name: Paths.initView,
      builder: (context, state) => const InitViewPage());
}
