import 'package:click_desk/models/user/user.dart';
import 'package:click_desk/shared/services/auth/auth_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  @override
  FutureOr<User> build() async {
    User user = await _loadCurrentUser();
    return user;
  }

  Future<User> _loadCurrentUser() async {
    state = await AsyncValue.guard(
      () async {
        User user = await ref.read(authServiceProvider.notifier).currentUser();

        return user;
      },
    );
 
    return state.valueOrNull ?? const User();
  }

  void setUser(User user) {
    state = AsyncData(user);
  }

  Future<void> signout() async {
    final user = await ref.read(authServiceProvider.notifier).signout();
    state = AsyncValue.data(user);
  }
}
