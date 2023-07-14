import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/initial/initial_cubit.dart';

class CustomWillPopScopeWidget extends StatelessWidget {
  final Widget nextScreen;

  const CustomWillPopScopeWidget({Key? key, required this.nextScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          if (context.read<InitialCubit>().listState.length == 1) {
            return true;
          } else {
            context.read<InitialCubit>().previous();
            return false;
          }
        },
        child: nextScreen);
  }
}
