import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/home_repo.dart';
import 'state.dart';

class DataCubitFreezed extends Cubit<DataState> {
  final HomeRepo _homeRepo;
  DataCubitFreezed(this._homeRepo) : super(const DataState.initial());

  void getData() async {
    emit(const DataState.start());

    final res = await _homeRepo.getMandopHomeDetails();

    res.when(success: (r) {
      emit(DataState.success(r));
    }, failure: (l) {
      emit(const DataState.failed('fffffffff'));
    });
  }
}
