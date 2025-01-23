import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandoob/features/profile/data/repo/profile_repo.dart';
import 'package:mandoob/features/profile/logic/cubit/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo _profileRepo;
  ProfileCubit(this._profileRepo) : super(const ProfileState.initial());

  void getProfileDetailsData() async {
    emit(const ProfileState.profileLoading());
    final response = await _profileRepo.getProfileDetailsData();
    response.when(
      success: (r) {
        emit(ProfileState.profileSuccess(r));
      },
      failure: (errorHandler) {
        emit(ProfileState.profileError(errorHandler));
      },
    );
  }
}
