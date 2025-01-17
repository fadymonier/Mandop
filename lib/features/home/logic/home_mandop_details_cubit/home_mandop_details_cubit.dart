import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandoob/features/home/data/models/mandop_home_details_response_model.dart';
import 'package:mandoob/features/home/data/repo/home_mandop_details_repo.dart';
import 'package:mandoob/features/home/logic/home_mandop_details_cubit/home_mandop_details_state.dart';

class HomeMandopDetailsCubit extends Cubit<HomeManopDetailsState> {
  final HomeMandopDetailsRepo _homeMandopDetailsRepo;

  HomeMandopDetailsCubit(this._homeMandopDetailsRepo)
      : super(const HomeManopDetailsState.initial());

  void getMandopDetailsHomeData() async {
    emit(const HomeManopDetailsState.homeMandopDetailsLoading());
    final response = await _homeMandopDetailsRepo.getMandopHomeDetails();

    print(response.toString());
    response.when(
      success: (userDetailsRM) {
        // final data = UserDetailsRM.fromJson.();
        emit(HomeManopDetailsState.homeMandopDetailsSuccess(userDetailsRM));
      },
      failure: (errorHandler) {
        emit(HomeManopDetailsState.homeMandopDetailsError(errorHandler));
      },
    );
  }
}
