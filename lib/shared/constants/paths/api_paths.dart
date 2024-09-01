class ApiPath {
  static String get adFile => "/ad-file";
  static String images(String fileName) {
    return "/images/$fileName";
  }

  static String videos(String fileName) {
    return "/videos/$fileName";
  }

  static String get doctor => "/clickdesk/doctor";
  static String get reason => "/clickdesk/reason";
  static String reasonDoctorId(String doctorId) =>
      "/clickdesk/reason/$doctorId";
  static String get errorLog => "/click/error-log";
  static String get signin => "/signin";
  static String get currentUser => "/currentuser";
}
