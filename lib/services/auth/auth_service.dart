import 'package:click_desk/providers/shared_utiltiy/shared_utility_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:click_desk/providers/dio/dio_provider.dart';
import 'package:click_desk/models/user/user.dart';

part 'auth_service.g.dart';

class AuthService {
  final AuthServiceRef ref;

  AuthService(this.ref);

  Future<User> signin(String userId, String password) async {
    final dio = ref.read(dioProvider);
    final response = await dio
        .post("/signin", data: {"userId": userId, "password": password});
    final cookies = response.headers.map['set-cookie'];
    await ref.read(sharedUtilityProvider).setAuthCookies(cookies: cookies);
    final User user = User.fromJson(response.data);
    return user;
  }

  Future<User> currentUser() async {
    try {
      final dio = ref.read(dioProvider);
      final response = await dio.post("/currentuser");
      final User user = User.fromJson(response.data['currentUser']);
      return user;
    } catch (error) {
      print(error);
      return const User();
    }
  }
}

@Riverpod(keepAlive: true)
AuthService authService(AuthServiceRef ref) {
  return AuthService(ref);
}
