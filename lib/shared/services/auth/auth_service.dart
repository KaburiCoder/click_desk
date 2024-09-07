import 'package:click_desk/models/user/user.dart';
import 'package:click_desk/shared/constants/paths/api_paths.dart';
import 'package:click_desk/shared/providers/dio/dio_provider.dart';
import 'package:click_desk/shared/providers/shared_utiltiy/shared_utility_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_service.g.dart';

class AuthService {
  final AuthServiceRef ref;

  AuthService(this.ref);

  Future<User> signin(String userId, String password) async {
    final dio = ref.read(dioProvider);
    final response = await dio
        .post(ApiPath.signin, data: {"userId": userId, "password": password});
    final cookies = response.headers.map['set-cookie'];
    await ref.read(sharedUtilityProvider).setAuthCookies(cookies: cookies);
    final User user = User.fromJson(response.data);
    return user;
  }

  Future<User> currentUser() async {
    final dio = ref.read(dioProvider);
    final response = await dio.post(ApiPath.currentUser);
    return User.fromJson(response.data['currentUser']);
  }
}

@Riverpod(keepAlive: true)
AuthService authService(AuthServiceRef ref) {
  return AuthService(ref);
}
