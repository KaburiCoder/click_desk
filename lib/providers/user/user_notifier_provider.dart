import 'package:click_recept/models/user/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class UserNotifier extends _$UserNotifier {
  @override
  User build() {
    return const User();
  }

  setUser(User user) {
    state = user;
  }
}
