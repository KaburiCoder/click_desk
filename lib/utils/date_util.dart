import 'package:timezone/timezone.dart' as tz;

class DateUtil {
  static String seoulTZ = "Asia/Seoul";
  static final korTimeZone = tz.getLocation(seoulTZ);

static DateTime now  () {
  return tz.TZDateTime.now(korTimeZone);
}
}
