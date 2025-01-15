import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mandoob/core/api/error_handler.dart';
import 'package:mandoob/features/home/data/models/home_response_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.homeLoading() = HomeLoading;
  const factory HomeState.homeSuccess(HomeResponseModel homeResponseModel) =
      HomeSuccess;
  const factory HomeState.homeError(ErrorHandler errorHandler) = HomeError;
}
