import 'package:dio/dio.dart';
import 'package:mandoob/core/api/api_constnats.dart';
import 'package:mandoob/features/history/data/model/points_by_month_response.dart';
import 'package:mandoob/features/history/data/model/points_history_response_model.dart';
import 'package:retrofit/retrofit.dart';
part 'history_api_services.g.dart';

@RestApi(baseUrl: ApiConstnats.baseUrl)
abstract class HistoryApiService {
  factory HistoryApiService(Dio dio) = _HistoryApiService;

  @GET(ApiConstnats.monthPoints)
  Future<PointsByMonthResponse> getPointsHistoryData();

  @GET(ApiConstnats.pointsHistory)
  Future<PointsHistoryResponse> getPointsByMonthData();
}
