import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orderpos/utils/custom_color.dart';
import 'package:orderpos/utils/custom_style.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../bloc/initial/initial_cubit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3))
        .then((value) => context.read<InitialCubit>().change(LoginState()));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: Adaptive.w(100),
          height: Adaptive.h(100),
          color: mainBgColor,
        ),
        SvgPicture.asset('assets/svg/top-left-line.svg',width: 250),
        AnimatedCard(
          direction: AnimatedCardDirection.left,
          child: Center(
            child: SvgPicture.asset('assets/svg/main-logo.svg'),
          ),
        ),
        Positioned(
          bottom: Adaptive.h(5),
          left: 0,
          right: 0,
          child: getText('OrderPos v1.0.0',colors: Colors.white.withOpacity(0.5),fontSize: 12),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: SvgPicture.asset('assets/svg/bottom-right-line.svg',width: 150),
        ),
      ],
    );
  }
}
