import 'package:dio/dio.dart';
import 'package:mandoob/core/api/api_constnats.dart';
import 'package:mandoob/features/home/data/models/mandop_home_details_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_api_service.g.dart';

@RestApi(baseUrl: ApiConstnats.baseUrl)
abstract class ProfileApiService {
  factory ProfileApiService(Dio dio) = _ProfileApiService;

  @GET(ApiConstnats.profile)
  Future<UserDetailsRM> getProfileDetailsData();
}
