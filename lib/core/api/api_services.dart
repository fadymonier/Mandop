import 'package:dio/dio.dart';
import 'package:mandoob/core/api/api_constnats.dart';
import 'package:mandoob/features/auth/sign_in/data/models/login_request_body.dart';
import 'package:mandoob/features/auth/sign_in/data/models/login_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstnats.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstnats.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
}
