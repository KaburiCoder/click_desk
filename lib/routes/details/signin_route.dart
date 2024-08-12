import 'package:click_desk/shared/constants/paths/paths.dart';
import 'package:click_desk/pages/signin/signin_page.dart';
import 'package:go_router/go_router.dart';

GoRoute signinRoute() {
  return GoRoute(
      path: Paths.signin,
      name: Paths.signin,
      builder: (context, state) => const SigninPage());
}
