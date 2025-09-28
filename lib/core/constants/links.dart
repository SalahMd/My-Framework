class AppLinks {
  static const String ip = "https://zaker-back-dev.misbar.education/api";
  static const String register = "$ip/register";
  static const String verifyCode = "$ip/verify";
  static const String signUp = "$ip/students/fillStudentData";
  static const String locations = "$ip/locations";
  static const String city = "$ip/students/city";
  static const String subject = "$ip/students/subject";
  static const String area = "$ip/students/area";
  static const String profile = "$ip/students/studentProfile/me";
  static const String param = "$ip/students/param";
  static const String logout = "$ip/logout";
  static const String resendCode = "$ip/resendVerificationCode";
  static const String exam = "$ip/students/exam?sort_by=ascending";
  static const String quiz = "$ip/students/exam/take/";
  static const String submitExam = "$ip/students/exam/submit";
  static const String createExam = "$ip/students/exam";
}
