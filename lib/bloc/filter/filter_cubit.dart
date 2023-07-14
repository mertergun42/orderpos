import 'package:bloc/bloc.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {

  int currentIndex = 0;

  FilterCubit() : super(FilterInitial());

  void changeTabbar(int index) {
    currentIndex = index;
    switch (index) {
      case 0:
        emit(FilterInitial());
        break;
      case 1:
        emit(FilterWeekInitial());
        break;
      case 2:
        emit(FilterMounthInitial());
        break;
    }
  }
}
