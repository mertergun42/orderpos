import 'package:flutter/material.dart';
import 'package:flutter_hidden_drawer/flutter_hidden_drawer.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orderpos/bloc/index/index_cubit.dart';
import 'package:orderpos/utils/custom_color.dart';
import 'package:orderpos/utils/custom_style.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OrderWaitingWidget extends StatefulWidget {
  const OrderWaitingWidget({Key? key}) : super(key: key);

  @override
  State<OrderWaitingWidget> createState() => _OrderWaitingWidgetState();
}

class _OrderWaitingWidgetState extends State<OrderWaitingWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
      itemCount: 1,
      itemBuilder: (BuildContext d, int e) {
        return AnimationConfiguration.staggeredList(
          position: e,
          delay: const Duration(milliseconds: 100),
          child: SlideAnimation(
            duration: const Duration(milliseconds: 1750),
            curve: Curves.fastLinearToSlowEaseIn,
            horizontalOffset: 30,
            verticalOffset: 300.0,
            child: FlipAnimation(
              duration: const Duration(milliseconds: 1750),
              curve: Curves.fastLinearToSlowEaseIn,
              flipAxis: FlipAxis.y,
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (BuildContext a, int s) {
                      List<String> orderAccount = [
                        'Zeynep Ö.',
                        'Mehmet S.',
                        'Gizem Ö.',
                      ];
                      List<String> orderPay = [
                        '123.99',
                        '234.99',
                        '90.99',
                      ];
                      return Padding(
                        padding: EdgeInsets.only(top: Adaptive.h(2)),
                        child: InkWell(
                          child: Container(
                            width: Adaptive.w(100),
                            height: Adaptive.h(15),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.8),
                              border: Border.all(
                                  color: const Color(0xFFDDE0E8), width: 1),
                              borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(5),
                                          width: Adaptive.w(21),
                                          height: Adaptive.h(2),
                                          decoration: const BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(100))),
                                        ),
                                        Container(
                                          width: Adaptive.w(20),
                                          height: Adaptive.h(10),
                                          decoration: const BoxDecoration(
                                              color: Color(0xFFE5E9F5),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50))),
                                          child: Padding(
                                            padding: EdgeInsets.all(15),
                                            child: SvgPicture.asset(
                                              'assets/svg/food-icon.svg',
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 0,
                                          bottom: 0,
                                          child: Container(
                                            width: Adaptive.w(8),
                                            height: Adaptive.h(4),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(100),
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'assets/png/getir.png'),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: Adaptive.w(2)),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          getTextPoppins(
                                            orderAccount[s],
                                            colors: mainBgColor,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                          ),
                                          getTextPoppins('10.10.2022',
                                              fontSize: 12,
                                              colors: Color(0xFFA0A6B7)),
                                          getTextPoppins('#615371716',
                                              fontSize: 12, colors: mainColor),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        getTextPoppins(
                                          orderPay[s],
                                          fontSize: 30,
                                          fontWeight: FontWeight.w600,
                                          colors: Colors.black,
                                        ),
                                        getTextPoppins('₺',
                                            fontSize: 30,
                                            colors: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ],
                                    ),
                                    getTextPoppins('Gel Al',
                                        colors: const Color(0xFFAAAFBF),
                                        fontSize: 14),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          onTap: (){
                            context.read<IndexCubit>().change(OrdersDetailState());
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
