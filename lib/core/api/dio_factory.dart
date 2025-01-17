// ignore_for_file: unnecessary_null_comparison, avoid_print

import 'package:dio/dio.dart';
import 'package:mandoob/core/api/api_constnats.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    if (dio == null) {
      dio = Dio(
        BaseOptions(
          baseUrl: ApiConstnats.baseUrl,
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );
      addDioInterceptor();
    }
    return dio!;
  }

  static void addDioHeaers() {
    dio?.options.headers = {
      'Accept': 'application/json',
    };
  }

  /// Set token into the headers after login
  static void setTokenIntoHeaderAfterLogin(String token) {
    dio?.options.headers['Authorization'] = 'Bearer $token';
  }

  /// Remove token from headers after logout
  static void removeTokenFromHeader() {
    dio?.options.headers.remove('Authorization');
    print("Token has been removed from Dio headers");
  }

  static void addDioInterceptor() {
    try {
      dio?.interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          requestHeader: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
      );
    } catch (e) {
      print("Error adding interceptor: $e");
    }
  }
}
