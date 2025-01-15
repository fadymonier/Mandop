import 'package:dio/dio.dart';
import 'package:mandoob/core/api/api_constnats.dart';
import 'package:mandoob/features/home/data/models/home_response_model.dart';
import 'package:mandoob/features/home/data/models/mandop_home_details_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstnats.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;
  @GET(ApiConstnats.home)
  Future<HomeResponseModel> getHomeData();
  @GET(ApiConstnats.profile)
  Future<MandopHomeDetailsResponseModel> getMandopHomeDetailsData();
}
