import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'initial_state.dart';

class InitialCubit extends Cubit<InitialState> {
  InitialCubit() : super(InitialStartState());
  List<InitialState> listState = [InitialStartState()];
  List<String?> appBar = [null];

  void change(InitialState state, {String? appBarString}) {
    listState.add(state);
    appBar.add(appBarString);
    emit(listState.last);
  }

  void previous() {
    listState.removeLast();
    appBar.removeLast();
    emit(listState.last);
  }

  void reset() {
    listState = [InitialStartState()];
    appBar = [null];
  }
}
