import 'package:click_desk/models/user/user.dart';
import 'package:click_desk/shared/providers/shared_utiltiy/shared_utility_provider.dart';
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
        User user = await ref.read(authServiceProvider).currentUser();
        return user;
      },
    );

    return state.value ?? const User();
  }

  Future<void> signin(String userId, String password) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () async {
        final user =
            await ref.read(authServiceProvider).signin(userId, password);

        return user;
      },
    );
  }

  Future<void> signout() async {
    await ref.read(sharedUtilityProvider).setAuthCookies(cookies: null);
    state = const AsyncValue.data(User());
  }
}
