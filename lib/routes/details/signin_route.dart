import 'package:click_recept/constants/paths.dart';
import 'package:click_recept/pages/signin/signin_page.dart';
import 'package:go_router/go_router.dart';

GoRoute signinRoute() {
  return GoRoute(
      path: Paths.signin,
      name: Paths.signin,
      builder: (context, state) => const SigninPage());
}
