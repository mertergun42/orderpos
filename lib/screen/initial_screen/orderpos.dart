import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orderpos/screen/index/main_index_page.dart';
import 'package:orderpos/screen/initial_screen/splash_screen.dart';

import '../../bloc/initial/initial_cubit.dart';
import '../../widgets/custom-will-pop-scope-widget.dart';
import 'login_screen.dart';


class OrderPos extends StatelessWidget {
  const OrderPos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<InitialCubit, InitialState>(
        builder: (context, InitialState state) {
          return AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              switchInCurve: Curves.linear,
              child: getRoute(state, context));
        },
        bloc: BlocProvider.of<InitialCubit>(context),
      ),
    );
  }

  Widget getRoute(InitialState state, BuildContext context) {
    if (state is InitialStartState) {
      return const CustomWillPopScopeWidget(nextScreen: SplashScreen());
    }
    if (state is LoginState) {
      return const CustomWillPopScopeWidget(nextScreen: LoginScreen());
    }
    if (state is MainIndexState) {
      return const MainIndexPage();
    }

    throw Exception('Error');
  }
}
