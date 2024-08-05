import 'package:flutter/foundation.dart';

class UrlPaths {
  static String get baseUrl {
    return kReleaseMode
        ? "https://hs.click-soft.co.kr/api"
        : "http://192.168.1.43:4020/api";
  }
  static String get sockUrl {
    return kReleaseMode
        ? "https://sock.click-soft.co.kr/click-desk"
        : "http://192.168.1.43:4001/click-desk";
  }
}
