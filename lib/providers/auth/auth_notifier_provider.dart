import 'package:click_desk/models/error_state/error_state.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:click_desk/models/auth_state/auth_state.dart';
import 'package:click_desk/models/user/user.dart';
import 'package:click_desk/providers/shared_utiltiy/shared_utility_provider.dart';
import 'package:click_desk/providers/user/user_notifier_provider.dart';
import 'package:click_desk/services/auth/auth_service.dart';

part 'auth_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class AuthNotifier extends _$AuthNotifier {
  @override
  AuthState build() {
    state = const AuthState();
    _loadCurrentUser();
    return const AuthState();
  }

  Future<void> _loadCurrentUser() async {
    final user = await ref.watch(authServiceProvider).currentUser();
    setState(user: user);
  }

  void setIsLoading() {
    state = state.copyWith(loadingState: LoadingState.loading);
  }

  void setState({User? user, ErrorState? error}) {
    final isUserExists = user != null;

    ref.read(userNotifierProvider.notifier).setUser(user ?? const User());
    state = state.copyWith(
      loadingState: LoadingState.complite,
      isAuthenticated: isUserExists,
      error: error,
    );
  }

  Future<void> signout() async {
    await ref.watch(sharedUtilityProvider).setAuthCookies(cookies: null);
    state = const AuthState();
  }

  Future<void> signin(String userId, String password) async {
    setIsLoading();

    try {
      final user =
          await ref.watch(authServiceProvider).signin(userId, password);
      setState(user: user);
    } on DioException catch (e) {
      print(e.response?.data.toString());
      setState(error: ErrorState.parse(e));
    }
  }

  bool isCookieExists() {
    final cookies = ref.read(sharedUtilityProvider).getAuthCookies();

    return cookies?.isNotEmpty ?? false;
  }
}
