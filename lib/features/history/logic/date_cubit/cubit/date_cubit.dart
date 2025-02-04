import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandoob/features/history/data/repo/points_by_month_repo.dart';
import 'package:mandoob/features/history/logic/date_cubit/cubit/date_state.dart';

class DateCubit extends Cubit<DateState> {
  final PointsByMonthRepo _pointsByMonthRepo;
  DateCubit(this._pointsByMonthRepo) : super(const DateState.initial());

  void getPointsByMonthData() async {
    emit(const DateState.dateLoading());
    final response = await _pointsByMonthRepo.getPointsByMonthData();
    response.when(
      success: (r) {
        emit(DateState.dateSuccess(r));
      },
      failure: (errorHandler) {
        emit(DateState.dateError(errorHandler));
      },
    );
  }
}
