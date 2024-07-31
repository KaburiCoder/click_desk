import 'package:click_desk/providers/shared_utiltiy/shared_utility_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) {
  bool test = false;
  final dio = Dio(BaseOptions(
      baseUrl: test
          ? "http://192.168.1.43:4020/api"
          : "https://hs.click-soft.co.kr/api"));

  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      final cookies = ref.watch(sharedUtilityProvider).getAuthCookies();
      if (cookies != null) options.headers['Cookie'] = cookies.join('; ');
      return handler.next(options);
    },
  ));

  return dio;
}
