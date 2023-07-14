import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hidden_drawer/flutter_hidden_drawer.dart';
import 'package:orderpos/bloc/drawer/drawer_cubit.dart';
import 'package:orderpos/bloc/filter/filter_cubit.dart';

import '../../bloc/index/index_cubit.dart';
import '../../bloc/initial/initial_cubit.dart';
import '../../bloc/internet/internet_cubit.dart';
import '../../bloc/order_filter/order_filter_cubit.dart';
import 'orderpos.dart';

class InitialScreen extends StatelessWidget {
  final Connectivity connectivity;

  const InitialScreen({Key? key, required this.connectivity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(
        create: (context) => DrawerMenuState(),
      ),],
    child:  MultiBlocProvider(
      providers: [
        BlocProvider<InternetCubit>(
          create: (BuildContext context) =>
              InternetCubit(connectivity: connectivity),
        ),
        BlocProvider<InitialCubit>(
          create: (BuildContext context) => InitialCubit(),
        ),
        BlocProvider<IndexCubit>(
          create: (BuildContext context) => IndexCubit(),
        ),
        BlocProvider<FilterCubit>(
          create: (BuildContext context) => FilterCubit(),
        ),
        BlocProvider<DrawerCubit>(
          create: (BuildContext context) => DrawerCubit(),
        ),
        BlocProvider<OrderFilterCubit>(
          create: (BuildContext context) => OrderFilterCubit(),
        ),
      ],
      child: BlocBuilder<InternetCubit, InternetState>(
        builder: (context, state) {
          if (state is InternetConnected) {
            return const OrderPos();
          } else if (state is InternetDisconnected) {
            return Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(Icons.signal_cellular_connected_no_internet_4_bar,
                      size: 50, color: Color.fromRGBO(77, 96, 100, 1.0)),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      "İnternet bağlantınızı kontrol edin.",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueGrey),
                    ),
                  )
                ],
              ),
            );
          }
          return const CircularProgressIndicator();
        },
      ),
    ),
    );
  }
}
