import 'package:mandoob/core/api/api_result.dart';
import 'package:mandoob/core/api/error_handler.dart';
import 'package:mandoob/features/history/data/api/history_api_services.dart';
import 'package:mandoob/features/history/data/model/points_history_response_model.dart';

class PointsByMonthRepo {
  final HistoryApiService _historyApiService;

  PointsByMonthRepo(this._historyApiService);
  Future<ApiResult<PointsHistoryResponse>> getPointsByMonthData() async {
    try {
      final response = await _historyApiService.getPointsByMonthData();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
