import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'index_state.dart';

class IndexCubit extends Cubit<IndexState> {
  IndexCubit() : super(IndexInitial());
  List<IndexState> listState = [IndexInitial()];
  List<String?> listAppbar = [null];
  List<String?> listAppBarPath = [null];
  List<AppBarType> listAppbarType = [AppBarType.main];

  void change(IndexState state,
      {String? appBarString,
      String? appBarPath,
      AppBarType appBarType = AppBarType.main}) {
    listState.add(state);
    listAppbar.add(appBarString);
    listAppbarType.add(appBarType);
    listAppBarPath.add(appBarPath);
    emit(listState.last);
  }

  void previous() {
    listState.removeLast();
    listAppbar.removeLast();
    listAppbarType.removeLast();
    listAppBarPath.removeLast();
    emit(listState.last);
  }

  void reset() {
    listState = [IndexInitial()];
    listAppbar = [null];
    listAppbarType = [AppBarType.main];
    listAppBarPath = [null];
    emit(listState.last);
  }
}

enum AppBarType {
  main,
  white,
  red,
}
