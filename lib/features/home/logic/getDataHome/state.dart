import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/mandop_home_details_response_model.dart';

part 'state.freezed.dart';

@freezed
class DataState with _$DataState {
  const factory DataState.initial() = _initial;
  const factory DataState.start() = _start;
  const factory DataState.success(UserDetailsRM data) = _success;
  const factory DataState.failed(String? error) = _failed;
}
