import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mandoob/core/api/error_handler.dart';
import 'package:mandoob/features/history/data/model/points_history_response_model.dart';

part 'date_state.freezed.dart';

@freezed
class DateState with _$DateState {
  const factory DateState.initial() = _Initial;
  const factory DateState.dateLoading() = _DateLoading;
  const factory DateState.dateSuccess(PointsHistoryResponse data) =
      _DateSuccess;
  const factory DateState.dateError(ErrorHandler? errorHandler) = _DateError;
}
//dart run build_runner build --delete-conflicting-outputs
