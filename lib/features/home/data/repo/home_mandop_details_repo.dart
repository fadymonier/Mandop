import 'package:mandoob/core/api/api_result.dart';
import 'package:mandoob/core/api/error_handler.dart';
import 'package:mandoob/features/home/data/api/home_api_service.dart';
import 'package:mandoob/features/home/data/models/mandop_home_details_response_model.dart';

class HomeMandopDetailsRepo {
  final HomeApiService _homeApiService;

  HomeMandopDetailsRepo(this._homeApiService);
  Future<ApiResult<MandopDataRM>> getMandopHomeDetails() async {
    try {
      final response = await _homeApiService.getMandopHomeDetailsData();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
