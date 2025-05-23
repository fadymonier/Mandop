import 'package:mandoob/core/api/api_result.dart';
import 'package:mandoob/core/api/error_handler.dart';
import 'package:mandoob/features/history/data/api/history_api_services.dart';
import 'package:mandoob/features/history/data/model/points_by_month_response.dart';

class PointsHistoryRepo {
  final HistoryApiService _historyApiService;

  PointsHistoryRepo(this._historyApiService);
  Future<ApiResult<PointsByMonthResponse>> getPointsHistoryData() async {
    try {
      final response = await _historyApiService.getPointsHistoryData();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
