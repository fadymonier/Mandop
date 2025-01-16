import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mandoob/core/api/error_handler.dart';
import 'package:mandoob/features/home/data/models/mandop_home_details_response_model.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = Initial;
  const factory ProfileState.profileLoading() = ProfileLoading;
  const factory ProfileState.profileSuccess(UserDetailsRM userDetailsRM) =
      ProfileSuccess;
  const factory ProfileState.profileError(ErrorHandler errorHandler) =
      ProfileError;
}
