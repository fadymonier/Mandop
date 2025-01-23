import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandoob/features/home/data/repo/home_repo.dart';
import 'package:mandoob/features/home/logic/home_cubit/home_state.dart';

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
    emit(const HomeState.homeMandopDetailsLoading());

    final response = await _homeRepo.getMandopHomeDetails();

    response.when(
      success: (userDetailsRM) {
        emit(HomeState.homeMandopDetailsSuccess(userDetailsRM));
      },
      failure: (errorHandler) {
        emit(HomeState.homeMandopDetailsError(errorHandler));
      },
    );
  }
}
