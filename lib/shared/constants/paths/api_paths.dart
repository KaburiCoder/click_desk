class ApiPath {
  static String adFile = "/ad-file";
  static String images(String fileName) {
    return "/images/$fileName";
  }

  static String videos(String fileName) {
    return "/videos/$fileName";
  }
}
