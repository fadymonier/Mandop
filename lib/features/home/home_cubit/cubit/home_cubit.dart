import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandoob/features/home/home_cubit/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
}
