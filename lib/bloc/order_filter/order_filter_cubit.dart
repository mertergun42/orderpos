import 'package:bloc/bloc.dart';

part 'order_filter_state.dart';

class OrderFilterCubit extends Cubit<OrderFilterState> {

  int currentIndex = 0;

  OrderFilterCubit() : super(OrderFilterInitial());

  void orderStatus(int index) {
    currentIndex = index;
    switch (index) {
      case 0:
        emit(OrderFilterInitial());
        break;
      case 1:
        emit(OrderWaitingInitial());
        break;
      case 2:
        emit(OrderCancelInitial());
        break;
    }
  }
}
