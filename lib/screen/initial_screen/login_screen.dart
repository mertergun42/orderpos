import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:orderpos/bloc/initial/initial_cubit.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            width: Adaptive.w(100),
            height: Adaptive.h(100),
            color: mainBgColor,
          ),
          SvgPicture.asset('assets/svg/top-left-line.svg', width: 250),
          Positioned(
            left: Adaptive.w(5),
            right: Adaptive.w(5),
            top: Adaptive.h(30),
            child: Column(
              children: [
                AnimatedCard(
                  direction: AnimatedCardDirection.left,
                  child: Center(
                    child: SvgPicture.asset('assets/svg/main-logo.svg'),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(5),
                ),
                SizedBox(
                  height: Adaptive.h(10),
                  child: AnimatedCard(
                    child: Center(
                      child: getTextPoppins(
                        'Cihaz \n Seri Numarası',
                        colors: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    direction: AnimatedCardDirection.right,
                  ),
                ),
                AnimatedCard(
                  direction: AnimatedCardDirection.bottom,
                  child: Center(
                    child: SvgPicture.asset('assets/svg/login-arrow.svg',
                        height: 90),
                  ),
                ),
                SizedBox(height: Adaptive.h(5)),
                Container(
                  width: Adaptive.w(95),
                  height: Adaptive.h(8),
                  decoration: BoxDecoration(
                    color: lightBlue,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Center(
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      SvgPicture.asset('assets/svg/login-icon-number.svg',
                          color: Colors.white, height: 30),
                      SizedBox(width: Adaptive.w(2)),
                      getTextPoppins('4238740203',
                          colors: Colors.white, fontSize: 18)
                    ],
                  )),
                ),
                SizedBox(height: Adaptive.h(2)),
                InkWell(
                  onTap: () {
                    context.read<InitialCubit>().change(MainIndexState());
                  },
                  child: Container(
                    width: Adaptive.w(95),
                    height: Adaptive.h(8),
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Center(
                        child: getTextPoppins('Giriş',
                            fontWeight: FontWeight.w700)),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: Adaptive.h(5),
            left: 0,
            right: 0,
            child: getText('OrderPos v1.0.0',
                colors: Colors.white.withOpacity(0.5), fontSize: 12),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset('assets/svg/bottom-right-line.svg',
                width: 150),
          ),
        ],
      ),
    );
  }
}
