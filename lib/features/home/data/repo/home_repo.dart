import 'package:mandoob/core/api/api_result.dart';
import 'package:mandoob/core/api/error_handler.dart';
import 'package:mandoob/features/home/data/api/home_api_service.dart';
import 'package:mandoob/features/home/data/models/home_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);
  Future<ApiResult<HomeResponseModel>> getHomeData() async {
    try {
      final response = await _homeApiService.getHomeData();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
