import 'package:click_desk/constants/paths.dart';
import 'package:click_desk/providers/auth/auth_provider.dart';
import 'package:click_desk/providers/shared_utiltiy/shared_utility_provider.dart';
import 'package:click_desk/routes/details/cert_new_route.dart';
import 'package:click_desk/routes/details/cert_route.dart';
import 'package:click_desk/routes/details/checkin_end_route.dart';
import 'package:click_desk/routes/details/jumin_route.dart';
import 'package:click_desk/routes/details/main_route.dart';
import 'package:click_desk/routes/details/phone_route.dart';
import 'package:click_desk/routes/details/qr_scan_route.dart';
import 'package:click_desk/routes/details/regist_route.dart';
import 'package:click_desk/routes/details/select_doctor_route.dart';
import 'package:click_desk/routes/details/select_reason_route.dart';
import 'package:click_desk/routes/details/signin_route.dart';
import 'package:click_desk/routes/details/success_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'route_provider.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter route(RouteRef ref) {
  final auth = ref.watch(authProvider);
  final sharedUtil = ref.read(sharedUtilityProvider);

  return GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: sharedUtil.isCookieExists() ? Paths.main : Paths.signin,
      redirect: (context, state) {
        if (auth.isLoading) return null;

        final withNotAuth = state.matchedLocation == Paths.signin;

        if (auth.value?.roomKey.isNotEmpty ?? false) {
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
