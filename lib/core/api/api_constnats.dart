class ApiConstnats {
  static const String baseUrl = "https://admin.tasweka.com/";
  static const String login = "api/v1/sales_person/login";
  static const String logout = "api/v1/sales_person/logout";
  static const String pointsHistory = "api/v1/sales_person/points-history/";
  static const String profile = "api/v1/sales_person/profile";
  static const String home = "api/v1/sales_person/home";
  static const String monthPoints =
      "/api/v1/sales_person/points-by-month/2025/January";
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
