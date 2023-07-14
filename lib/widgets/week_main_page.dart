import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/custom_color.dart';
import '../utils/custom_style.dart';

class WeekMainPage extends StatefulWidget {
  const WeekMainPage({Key? key}) : super(key: key);

  @override
  State<WeekMainPage> createState() => _WeekMainPageState();
}

class _WeekMainPageState extends State<WeekMainPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
      itemCount: 1,
      itemBuilder: (BuildContext c, int i) {
        return AnimationConfiguration.staggeredList(
          position: i,
          delay: const Duration(milliseconds: 100),
          child: SlideAnimation(
            duration: const Duration(milliseconds: 1750),
            curve: Curves.fastLinearToSlowEaseIn,
            horizontalOffset: 30,
            verticalOffset: 300.0,
            child: FlipAnimation(
              duration: const Duration(milliseconds: 1750),
              curve: Curves.fastLinearToSlowEaseIn,
              flipAxis: FlipAxis.x,
              child: Column(
                children: [
                  Container(
                    width: Adaptive.w(100),
                    height: Adaptive.h(15),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      border: Border.all(color: Color(0xFFDDE0E8),width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.all(15),
                          width: Adaptive.w(18),
                          height: Adaptive.h(9),
                          decoration: BoxDecoration(
                              color: Color(0xFFE5E9F5),
                              borderRadius: BorderRadius.all(Radius.circular(100))
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: SvgPicture.asset('assets/svg/food-icon.svg',),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: Adaptive.w(1)),
                              child: getTextPoppins(
                                'Gel Al',
                                colors: mainBgColor,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: Adaptive.h(1)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(2),
                                  width: Adaptive.w(14),
                                  height: Adaptive.h(3.2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xFFDDE0E8),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.asset('assets/png/yemeksepeti.png',fit: BoxFit.cover,width: 10),
                                      ),
                                      SizedBox(width: Adaptive.w(2)),
                                      getTextPoppins('10',colors: mainBgColor,fontSize: 14),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(2),
                                  width: Adaptive.w(14),
                                  height: Adaptive.h(3.2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xFFDDE0E8),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.asset('assets/png/getir.png',fit: BoxFit.cover,width: 10),
                                      ),
                                      SizedBox(width: Adaptive.w(2)),
                                      getTextPoppins('12',colors: mainBgColor,fontSize: 14),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(2),
                                  width: Adaptive.w(14),
                                  height: Adaptive.h(3.2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xFFDDE0E8),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.asset('assets/png/yemeksepeti.png',fit: BoxFit.cover,width: 10),
                                      ),
                                      SizedBox(width: Adaptive.w(2)),
                                      getTextPoppins('12',colors: mainBgColor,fontSize: 14),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: Adaptive.w(1)),
                        getTextPoppins(
                          '32',
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          colors: Colors.black,
                          maxLines: 2,
                        ),
                        SizedBox(width: Adaptive.w(1)),
                      ],
                    ),
                  ),
                  SizedBox(height: Adaptive.h(2)),
                  Container(
                    width: Adaptive.w(100),
                    height: Adaptive.h(15),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      border: Border.all(color: Color(0xFFDDE0E8),width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.all(15),
                          width: Adaptive.w(18),
                          height: Adaptive.h(9),
                          decoration: BoxDecoration(
                              color: Color(0xFFE5E9F5),
                              borderRadius: BorderRadius.all(Radius.circular(100))
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: SvgPicture.asset('assets/svg/food-icon.svg',),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: Adaptive.w(1)),
                              child: getTextPoppins(
                                'Gel Al',
                                colors: mainBgColor,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: Adaptive.h(1)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(2),
                                  width: Adaptive.w(14),
                                  height: Adaptive.h(3.2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xFFDDE0E8),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.asset('assets/png/yemeksepeti.png',fit: BoxFit.cover,width: 10),
                                      ),
                                      SizedBox(width: Adaptive.w(2)),
                                      getTextPoppins('10',colors: mainBgColor,fontSize: 14),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(2),
                                  width: Adaptive.w(14),
                                  height: Adaptive.h(3.2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xFFDDE0E8),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.asset('assets/png/getir.png',fit: BoxFit.cover,width: 10),
                                      ),
                                      SizedBox(width: Adaptive.w(2)),
                                      getTextPoppins('12',colors: mainBgColor,fontSize: 14),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(2),
                                  width: Adaptive.w(14),
                                  height: Adaptive.h(3.2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xFFDDE0E8),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.asset('assets/png/yemeksepeti.png',fit: BoxFit.cover,width: 10),
                                      ),
                                      SizedBox(width: Adaptive.w(2)),
                                      getTextPoppins('12',colors: mainBgColor,fontSize: 14),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: Adaptive.w(1)),
                        getTextPoppins(
                          '32',
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          colors: Colors.black,
                          maxLines: 2,
                        ),
                        SizedBox(width: Adaptive.w(1)),
                      ],
                    ),
                  ),
                  SizedBox(height: Adaptive.h(2)),
                  Container(
                    width: Adaptive.w(100),
                    height: Adaptive.h(15),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      border: Border.all(color: Color(0xFFDDE0E8),width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.all(15),
                          width: Adaptive.w(18),
                          height: Adaptive.h(9),
                          decoration: BoxDecoration(
                              color: Color(0xFFE5E9F5),
                              borderRadius: BorderRadius.all(Radius.circular(100))
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: SvgPicture.asset('assets/svg/food-icon.svg',),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: Adaptive.w(1)),
                              child: getTextPoppins(
                                'Gel Al',
                                colors: mainBgColor,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: Adaptive.h(1)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(2),
                                  width: Adaptive.w(14),
                                  height: Adaptive.h(3.2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xFFDDE0E8),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.asset('assets/png/yemeksepeti.png',fit: BoxFit.cover,width: 10),
                                      ),
                                      SizedBox(width: Adaptive.w(2)),
                                      getTextPoppins('10',colors: mainBgColor,fontSize: 14),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(2),
                                  width: Adaptive.w(14),
                                  height: Adaptive.h(3.2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xFFDDE0E8),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.asset('assets/png/getir.png',fit: BoxFit.cover,width: 10),
                                      ),
                                      SizedBox(width: Adaptive.w(2)),
                                      getTextPoppins('12',colors: mainBgColor,fontSize: 14),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(2),
                                  width: Adaptive.w(14),
                                  height: Adaptive.h(3.2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xFFDDE0E8),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.asset('assets/png/yemeksepeti.png',fit: BoxFit.cover,width: 10),
                                      ),
                                      SizedBox(width: Adaptive.w(2)),
                                      getTextPoppins('12',colors: mainBgColor,fontSize: 14),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: Adaptive.w(1)),
                        getTextPoppins(
                          '32',
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          colors: Colors.black,
                          maxLines: 2,
                        ),
                        SizedBox(width: Adaptive.w(1)),
                      ],
                    ),
                  ),
                  SizedBox(height: Adaptive.h(2)),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
