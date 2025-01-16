import 'package:mandoob/core/api/api_result.dart';
import 'package:mandoob/core/api/error_handler.dart';
import 'package:mandoob/features/home/data/models/mandop_home_details_response_model.dart';
import 'package:mandoob/features/profile/data/api/profile_api_service.dart';

class ProfileRepo {
  final ProfileApiService _profileApiService;

  ProfileRepo(this._profileApiService);
  Future<ApiResult<UserDetailsRM>> getProfileDetailsData() async {
    try {
      final response = await _profileApiService.getProfileDetailsData();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
