import 'package:click_desk/shared/constants/paths.dart';
import 'package:click_desk/models/params/user_search_params.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Nav {
  Nav._();

  static final Nav _nav = Nav._();

  late BuildContext _context;
  void setContext(BuildContext context) {
    _context = context;
  }

  static Nav of(BuildContext context) {
    _nav.setContext(context);
    return _nav;
  }

  goMain() {
    _context.goNamed(Paths.main);
  }

  pushCert() {
    _context.pushNamed(Paths.cert);
  }

  pushCertNew() {
    _context.pushNamed(Paths.certNew);
  }

  pushQRScan() {
    _context.pushNamed(Paths.qrScan);
  }

  pushReplaceSelectDoctor() {
    _context.pushReplacementNamed(Paths.selectDoctor);
  }

  pushNamed({bool replace = false}) {
    final pushNamed =
        replace ? _context.pushReplacementNamed : _context.pushNamed;
    return pushNamed;
  }

  pushSelectDoctor({bool popFirst = false, bool replace = false}) {
    if (popFirst) pop();
    pushNamed(replace: replace)(Paths.selectDoctor);
  }

  pushPhone() {
    _context.pushNamed(Paths.phone);
  }

  pushJumin() {
    _context.pushNamed(Paths.jumin);
  }

  pushSuccess({required bool isConsented}) {
    while (_context.canPop()) {
      _context.pop();
    }

    Map<String, dynamic> queryParameters = {
      "isConsented": isConsented.toString()
    };
    _context.pushNamed(Paths.success, queryParameters: queryParameters);
  }

  pushSelectReason() {
    _context.pushNamed(Paths.selectReason);
  }

  pushRegist({bool replace = false}) {
    final pushNamed =
        replace ? _context.pushReplacementNamed : _context.pushNamed;
    pushNamed(Paths.regist);
  }

  pushReplacementSelectPatient(UserSearchParams params) {
    _context.pushReplacementNamed(
      Paths.selectPatient,
      queryParameters: {
        "qrCode": params.qrCode,
        "phoneNumber": params.phoneNumber,
        "jumin": params.jumin,
      },
    );
  }

  void pop<T extends Object?>([T? result]) {
    _context.pop(result);
  }

  void pushCheckinEnd({bool popFirst = false}) {
    if (popFirst) pop();
    _context.pushNamed(Paths.checkinEnd);
  }
}
