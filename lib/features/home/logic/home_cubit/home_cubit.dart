import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandoob/features/home/data/models/home_response_model.dart';
import 'package:mandoob/features/home/data/models/mandop_home_details_response_model.dart';
import 'package:mandoob/features/home/data/repo/home_repo.dart';
import 'package:mandoob/features/home/logic/home_cubit/home_state.dart';
import 'package:mandoob/features/home/logic/home_mandop_details_cubit/home_mandop_details_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getHomeData() async {
    emit(const HomeState.homeLoading());
    final response = await _homeRepo.getHomeData();

    response.when(
      success: (homeResponseModel) {
        emit(HomeState.homeSuccess(homeResponseModel));
      },
      failure: (errorHandler) {
        emit(HomeState.homeError(errorHandler));
      },
    );
  }

  void getMandopDetailsHomeData() async {
    emit(HomeState.homeMandopDetailsLoading());
    final response = await _homeRepo.getMandopHomeDetails();

    print(response.toString());
    response.when(
      success: (userDetailsRM) {
        // final data = UserDetailsRM.fromJson.();
        emit(HomeState.homeMandopDetailsSuccess(userDetailsRM));
      },
      failure: (errorHandler) {
        emit(HomeState.homeMandopDetailsError(errorHandler));
      },
    );
  }
}
