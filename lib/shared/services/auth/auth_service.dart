import 'package:click_desk/models/user/user.dart';
import 'package:click_desk/shared/constants/paths/api_paths.dart';
import 'package:click_desk/shared/providers/dio/dio_provider.dart';
import 'package:click_desk/shared/providers/shared_utiltiy/shared_utility_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_service.g.dart';

@Riverpod(keepAlive: true)
class AuthService extends _$AuthService {
  @override
  FutureOr<bool> build() {
    return false;
  }

  Future<User> signin(String userId, String password) async {
    state = const AsyncLoading();

    final userAsync = await AsyncValue.guard(() async {
      final dio = ref.read(dioProvider);
      final response = await dio
          .post(ApiPath.signin, data: {"userId": userId, "password": password});
      final cookies = response.headers.map['set-cookie'];
      await ref.read(sharedUtilityProvider).setAuthCookies(cookies: cookies);
      return User.fromJson(response.data);
    });

    if (userAsync.hasError) {
      state = AsyncError(userAsync.error!, userAsync.stackTrace!);
    }else{
      state = const AsyncData(true);
    }
    return userAsync.valueOrNull ?? const User();
  }

  Future<User> currentUser() async {
    final dio = ref.read(dioProvider);
    final response = await dio.post(ApiPath.currentUser);
    return User.fromJson(response.data['currentUser']);
  }

   Future<User> signout() async {
    await ref.read(sharedUtilityProvider).setAuthCookies(cookies: null);
    return const User();
  }
}
