import 'package:click_desk/constants/paths.dart';
import 'package:click_desk/models/params/regist_params.dart';
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

  pushSelectDoctor({bool popFirst = false}) {
    if (popFirst) pop();
    _context.pushNamed(Paths.selectDoctor);
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
    _context.pushNamed(Paths.success,
        queryParameters: {"isConsented": isConsented.toString()});
  }

  pushSelectReason() {
    _context.pushNamed(Paths.selectReason);
  }

  pushRegist({RegistParams? params, bool replace = false}) {
    Map<String, dynamic> queryParameters = params == null
        ? {}
        : {
            "suname": params.suname,
            "jumin": params.jumin,
          };

    final pushNamed =
        replace ? _context.pushReplacementNamed : _context.pushNamed;
    pushNamed(
      Paths.regist,
      queryParameters: queryParameters,
    );
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

  void pop() {
    _context.pop();
  }

  void pushCheckinEnd({bool popFirst = false}) {
    if (popFirst) pop();
    _context.pushNamed(Paths.checkinEnd);
  }
}
