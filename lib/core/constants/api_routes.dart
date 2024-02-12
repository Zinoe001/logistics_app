class ApiRoute {
  /// Base Url
  static const String baseUrl = "https://hash-backend-test.onrender.com";

  /// Auth Url
  static const String emailVerification = "/verify";
  static const String otpVerification = "/verify";
  static const String signUp = "/register";
  static const String login = "/login";

  /// cards 
  static const String getCard = "/cards";
  static const String transferCard = "/cards/transfer";
  static const String buyCard = "/cards/buy";
  static const String verifyTransaction = "/transactions/verify";

  //  static const String createPasscode = "";
  // static const String validateRegistration = "/mobile/register/validate";
  // static const String confirmLogin = "/mobile/login/confirm";
  // static const String changePassword = "/mobile/password/change";
  // static const String resendRegistrationOtp = "/mobile/register/resend-otp";
  // static const String resendLoginOtp = "/mobile/login/resend-otp";

  // ///Rate
  // static const String getRates = "/mobile/rates";
}
