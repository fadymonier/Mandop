import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mandoob/core/api/error_handler.dart';
import 'package:mandoob/features/home/data/models/mandop_home_details_response_model.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.profileLoading() = _ProfileLoading;
  const factory ProfileState.profileSuccess(UserDetailsRM userDetailsRM) =
      _ProfileSuccess;
  const factory ProfileState.profileError(ErrorHandler errorHandler) =
      _ProfileError;
}
