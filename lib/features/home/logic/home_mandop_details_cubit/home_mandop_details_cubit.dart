import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandoob/features/home/data/repo/home_mandop_details_repo.dart';
import 'package:mandoob/features/home/logic/home_mandop_details_cubit/home_mandop_details_state.dart';

class HomeManopDetailsCubit extends Cubit<HomeManopDetailsState> {
  final HomeMandopDetailsRepo _homeMandopDetailsRepo;
  HomeManopDetailsCubit(this._homeMandopDetailsRepo)
      : super(const HomeManopDetailsState.initial());

  void getMandopDetailsHomeData() async {
    emit(const HomeManopDetailsState.homeMandopDetailsLoading());
    final response = await _homeMandopDetailsRepo.getMandopHomeDetails();
    response.when(
      success: (mandopHomeDetailsResponseModel) {
        emit(HomeManopDetailsState.homeMandopDetailsSuccess(
            mandopHomeDetailsResponseModel));
      },
      failure: (errorHandler) {
        emit(HomeManopDetailsState.homeMandopDetailsError(errorHandler));
      },
    );
  }
}
