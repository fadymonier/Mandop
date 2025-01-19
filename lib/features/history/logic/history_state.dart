import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mandoob/core/api/error_handler.dart';
import 'package:mandoob/features/history/data/model/points_history_response_model.dart';

part 'history_state.freezed.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = _Initial;
  const factory HistoryState.historyLoading() = _HistoryLoading;
  const factory HistoryState.historySuccess(PointsHistoryResponse data) =
      _HistorySuccess;
  const factory HistoryState.historyError(ErrorHandler? errorHandler) =
      _HistoryError;
}
//dart run build_runner build --delete-conflicting-outputs
