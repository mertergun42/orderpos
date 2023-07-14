import 'package:bloc/bloc.dart';

part 'drawer_state.dart';

class DrawerCubit extends Cubit<DrawerState> {

  int currentIndex = 0;

  DrawerCubit() : super(DrawerInitial());

  void changePage(int index) {
    currentIndex = index;
    switch (index) {
      case 0:
        emit(DrawerInitial());
        break;
      case 1:
        emit(EntegrasyonInitial());
        break;
      case 2:
        emit(OrderInitial());
        break;
      case 3:
        emit(ExitInitial());
        break;
    }
  }
}
