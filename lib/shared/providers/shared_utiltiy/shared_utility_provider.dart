import 'package:shared_preferences/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'shared_utility_provider.g.dart';

@Riverpod(keepAlive: true)
SharedPreferences sharedPreferences(SharedPreferencesRef ref) {
  throw UnimplementedError();
}

@Riverpod(keepAlive: true)
SharedUtility sharedUtility(SharedUtilityRef ref) {
  final sharedPrefs = ref.watch(sharedPreferencesProvider);
  return SharedUtility(sharedPreferences: sharedPrefs);
}

class SharedUtility {
  SharedUtility({
    required this.sharedPreferences,
  });
  final _authCookiesKey = "auth_cookies";
  final _timerSecondsKey = "timer_seconds";

  final SharedPreferences sharedPreferences;

  bool isCookieExists() {
    final cookies = getAuthCookies();

    return cookies?.isNotEmpty ?? false;
  }

  List<String>? getAuthCookies() {
    return sharedPreferences.getStringList(_authCookiesKey);
  }

  Future<void> setAuthCookies({required List<String>? cookies}) async {
    if (cookies == null) {
      await removeAuthCookies();
    } else {
      await sharedPreferences.setStringList(_authCookiesKey, cookies);
    }
  }

  Future<void> removeAuthCookies() {
    return sharedPreferences.remove(_authCookiesKey);
  }

  int getTimerSeconds() {
    return sharedPreferences.getInt(_timerSecondsKey) ?? 30;
  }

  Future<bool> setTimerSeconds(int value) async {
    return sharedPreferences.setInt(_timerSecondsKey, value);
  }
}
