import 'dart:io';
import 'dart:ui';

import 'package:click_desk/routes/route_provider.dart';
import 'package:click_desk/shared/error/error_observer.dart';
import 'package:click_desk/shared/providers/pointer/pointer_provider.dart';
import 'package:click_desk/shared/providers/shared_utiltiy/shared_utility_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:upgrader/upgrader.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

Future<void> initializeFire() async {
  if (Platform.isWindows) return;
  await Firebase.initializeApp();
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
}

Future<Override> createSharedPreferencesOverride() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  return sharedPreferencesProvider.overrideWithValue(sharedPreferences);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeFire();
  tz.initializeTimeZones(); // timezone 초기설정
  WakelockPlus.enable(); // 화면꺼짐 방지
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]); // 상단바 숨기기
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky); // 하단바 숨기기
  // 가로화면만 가능
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  final sharedPreferencesOverride = await createSharedPreferencesOverride();
  await Upgrader.clearSavedSettings();

  runApp(
    ProviderScope(
      observers: [ErrorObserver()],
      overrides: [sharedPreferencesOverride],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routeProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: '클릭소프트 접수 프로그램',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      routerConfig: router,
      builder: (context, child) {
        return Listener(
          onPointerDown: (event) {
            ref.read(pointerProvider.notifier).toggle();
          },
          child: child,
        );
      },
    );
  }
}

