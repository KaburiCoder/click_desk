import 'package:click_recept/constants/paths.dart';
import 'package:click_recept/models/auth_state/auth_state.dart';
import 'package:click_recept/providers/auth/auth_notifier_provider.dart';
import 'package:click_recept/routes/details/cert_new_route.dart';
import 'package:click_recept/routes/details/cert_route.dart';
import 'package:click_recept/routes/details/checkin_end_route.dart';
import 'package:click_recept/routes/details/jumin_route.dart';
import 'package:click_recept/routes/details/main_route.dart';
import 'package:click_recept/routes/details/phone_route.dart';
import 'package:click_recept/routes/details/qr_scan_route.dart';
import 'package:click_recept/routes/details/regist_route.dart';
import 'package:click_recept/routes/details/select_doctor_route.dart';
import 'package:click_recept/routes/details/select_reason_route.dart';
import 'package:click_recept/routes/details/signin_route.dart';
import 'package:click_recept/routes/details/success_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'route_provider.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter route(RouteRef ref) {
  final authState = ref.watch(authNotifierProvider);
  final isCookieExists =
      ref.read(authNotifierProvider.notifier).isCookieExists();

  return GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: isCookieExists ? Paths.main : Paths.signin,
      redirect: (context, state) {
        if (authState.loadingState == LoadingState.init) {
          return null;
        }
        final withNotAuth = state.matchedLocation == Paths.signin;

        if (authState.isAuthenticated) {
          if (withNotAuth) return Paths.main;
        } else {
          if (!withNotAuth) return Paths.signin;
        }

        return null;
      },
      observers: [
        // MyRouteObserver(),
        routeObserver
      ],
      routes: [
        signinRoute(),
        mainRoute(),
        certRoute(),
        certNewRoute(),
        registRoute(),
        qrScanRoute(),
        phoneRoute(),
        juminRoute(),
        selectDoctorRoute(),
        selectReasonRoute(),
        checkinEndRoute(),
        successRoute(),
      ]);
}

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

// class MyRouteObserver extends NavigatorObserver {
//   @override
//   void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     super.didPush(route, previousRoute);
//     // 특정 라우트 전환 감지 로직을 여기에 추가
//     if (previousRoute != null) {
//       print(
//           'Navigated to ${route.settings.name} from ${previousRoute.settings.name}');
//     } else {
//       print('Navigated to ${route.settings.name}');
//     }
//   }

//   @override
//   void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     super.didPop(route, previousRoute);
//     if (previousRoute != null) {
//       print(
//           'Navigated back to ${previousRoute.settings.name} from ${route.settings.name}');
//     } else {
//       print('Navigated back from ${route.settings.name}');
//     }
//   }
// }
