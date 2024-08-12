import 'package:click_desk/shared/constants/url_paths.dart';
import 'package:click_desk/shared/providers/shared_utiltiy/shared_utility_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) {
  final dio = Dio(BaseOptions(baseUrl: UrlPaths.baseUrl));

  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      final cookies = ref.watch(sharedUtilityProvider).getAuthCookies();
      if (cookies != null) options.headers['Cookie'] = cookies.join('; ');
      return handler.next(options);
    },
  ));

  return dio;
}
