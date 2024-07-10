DateTime? convertJuminToBirthday(String jumin) {
  if (jumin.length < 6) {
    return null;
  }

  // 주민번호 앞 6자리 추출
  String yy = jumin.substring(0, 2);
  String mm = jumin.substring(2, 4);
  String dd = jumin.substring(4, 6);
  String genderKind = jumin.substring(6, 7);

  bool is2000y =
      switch (genderKind) { '1' || '2' || '5' || '6' => false, _ => true };

  int year = int.parse(yy);
  year += is2000y ? 2000 : 1900;

  // 월과 일을 숫자로 변환
  int month = int.parse(mm);
  int day = int.parse(dd);

  // DateTime 객체 생성
  return DateTime(year, month, day);
}
