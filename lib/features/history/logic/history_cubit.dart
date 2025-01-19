import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandoob/features/history/data/repo/points_history_repo.dart';
import 'package:mandoob/features/history/logic/history_state.dart';

class HistoryCubit extends Cubit<HistoryState> {
  final PointsHistoryRepo _pointsHistoryRepo;
  HistoryCubit(this._pointsHistoryRepo) : super(const HistoryState.initial());

  void getHistoryData() async {
    emit(const HistoryState.historyLoading());
    final response = await _pointsHistoryRepo.getPointsHistoryData();
    response.when(
      success: (r) {
        emit(HistoryState.historySuccess(r));
      },
      failure: (errorHandler) {
        emit(HistoryState.historyError(errorHandler));
      },
    );
  }
}
