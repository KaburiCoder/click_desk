class Strings {
  static String substring(String? str, int start, int end) {
    if (str == null) return "";
    // 시작 인덱스가 음수일 경우 0으로 설정
    if (start < 0) {
      start = 0;
    }

    // 종료 인덱스가 문자열의 길이를 초과할 경우 문자열의 길이로 설정
    if (end > str.length) {
      end = str.length;
    }

    // 시작 인덱스가 종료 인덱스보다 클 경우 빈 문자열 반환
    if (start >= end) {
      return '';
    }

    return str.substring(start, end);
  }
}
