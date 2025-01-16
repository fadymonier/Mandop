import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandoob/features/history/data/repo/points_history_repo.dart';
import 'package:mandoob/features/history/logic/history_state.dart';

class HistoryCubit extends Cubit<HistoryState> {
  final PointsHistoryRepo _pointsHistoryRepo;
  HistoryCubit(this._pointsHistoryRepo) : super(const HistoryState.initial());

  void getHistory() async {
    final response = await _pointsHistoryRepo.getPointsHistoryData();

    response.when(
      success: (pointsHistoryResponse) {
        emit(HistoryState.historySuccess(pointsHistoryResponse));
      },
      failure: (errorHandler) {
        emit(HistoryState.historyError(errorHandler));
      },
    );
  }
}
