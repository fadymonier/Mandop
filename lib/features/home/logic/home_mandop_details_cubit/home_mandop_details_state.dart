import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mandoob/core/api/error_handler.dart';
import 'package:mandoob/features/home/data/models/mandop_home_details_response_model.dart';

part 'home_mandop_details_state.freezed.dart';

@freezed
class HomeManopDetailsState with _$HomeManopDetailsState {
  const factory HomeManopDetailsState.initial() = _Initial;
  const factory HomeManopDetailsState.homeMandopDetailsLoading() =
      _HomeMandopDetailsLoading;
  const factory HomeManopDetailsState.homeMandopDetailsSuccess(
          MandopHomeDetailsResponseModel mandopHomeDetailsResponseModel) =
      _HomeMandopDetailsSuccess;
  const factory HomeManopDetailsState.homeMandopDetailsError(
      ErrorHandler errorHandler) = _HomeMandopDetailsError;
}
