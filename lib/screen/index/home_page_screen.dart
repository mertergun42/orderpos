import 'dart:ui';

import 'package:animated_card/animated_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orderpos/bloc/filter/filter_cubit.dart';
import 'package:orderpos/utils/custom_color.dart';
import 'package:orderpos/utils/custom_style.dart';
import 'package:orderpos/widgets/today_main_page.dart';
import 'package:orderpos/widgets/week_main_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/mounth_main_page.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: Adaptive.w(100),
                height: Adaptive.h(41),
                decoration: BoxDecoration(
                  color: mainBgColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/svg/logo-top-left.svg',
                              ),
                              SizedBox(width: Adaptive.w(4)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  getTextPoppins('Köfteci Yusuf',
                                      colors: Colors.white, fontSize: 14),
                                  getTextPoppins('Yönetici',
                                      colors:
                                          Color(0xFF25DF7E).withOpacity(0.8),
                                      fontSize: 10)
                                ],
                              ),
                            ],
                          ),
                          Icon(Icons.notifications,
                              color: Colors.white, size: 30),
                        ],
                      ),
                      SizedBox(height: Adaptive.h(4)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: Adaptive.w(15),
                                height: Adaptive.h(7),
                                decoration: BoxDecoration(
                                  color: lightBlue,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: SvgPicture.asset(
                                    'assets/svg/restaurant.svg',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Adaptive.h(1),
                              ),
                              getTextPoppins('Resturant', colors: Colors.white),
                              SizedBox(
                                height: Adaptive.h(0.2),
                              ),
                              getTextPoppins('Açık',
                                  colors: Color(0xFF25DF7E), fontSize: 12),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: Adaptive.w(15),
                                height: Adaptive.h(7),
                                decoration: BoxDecoration(
                                  color: lightBlue,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: SvgPicture.asset(
                                    'assets/svg/packet-services.svg',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Adaptive.h(1),
                              ),
                              getTextPoppins('Paket Servis',
                                  colors: Colors.white),
                              SizedBox(
                                height: Adaptive.h(0.2),
                              ),
                              getTextPoppins('Kapalı',
                                  colors: Colors.red, fontSize: 12),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: Adaptive.w(15),
                                height: Adaptive.h(7),
                                decoration: BoxDecoration(
                                  color: lightBlue,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: SvgPicture.asset(
                                    'assets/svg/user-item.svg',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Adaptive.h(1),
                              ),
                              getTextPoppins('Gel Al', colors: Colors.white),
                              SizedBox(
                                height: Adaptive.h(0.2),
                              ),
                              getTextPoppins('Açık',
                                  colors: Color(0xFF25DF7E), fontSize: 12),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AnimatedCard(
                                      direction: AnimatedCardDirection.top,
                                      child: Dialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(100)),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(sigmaX: 4,sigmaY: 4,),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: const Color(0xFF25DF7E),
                                            ),
                                            height: Adaptive.h(50),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(left: Adaptive.w(8),right: Adaptive.w(8)),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      getTextPoppins('Filtre',
                                                          colors: Colors.black,
                                                          fontWeight:
                                                          FontWeight.w600),
                                                      SvgPicture.asset(
                                                          'assets/svg/sliders.svg',
                                                          color: Colors.black),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: Adaptive.h(2)),
                                                Center(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                      color: Colors.white,
                                                    ),
                                                    width: Adaptive.w(75),
                                                    height: Adaptive.h(6),
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                        left: Adaptive.w(8),
                                                        right: Adaptive.w(8),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        children: [
                                                          getTextPoppins('Getir',
                                                              colors: mainBgColor),
                                                          Switch(
                                                            activeColor:
                                                            Colors.white,
                                                            activeTrackColor:
                                                            Colors.green,
                                                            splashRadius: 50.0,
                                                            value: false,
                                                            onChanged: (value) {},
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: Adaptive.h(1)),
                                                Center(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                      color: Color(0xFF60EAA2),
                                                    ),
                                                    width: Adaptive.w(75),
                                                    height: Adaptive.h(6),
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                        left: Adaptive.w(8),
                                                        right: Adaptive.w(8),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        children: [
                                                          getTextPoppins(
                                                              'Yemek Sepeti',
                                                              colors: mainBgColor),
                                                          Switch(
                                                            activeColor:
                                                            Colors.black,
                                                            activeTrackColor:
                                                            const Color(
                                                                0xFF1AC66C),
                                                            splashRadius: 50.0,
                                                            value: true,
                                                            onChanged: (value) {},
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: Adaptive.h(1)),
                                                Center(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                      color: Color(0xFF60EAA2),
                                                    ),
                                                    width: Adaptive.w(75),
                                                    height: Adaptive.h(6),
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                        left: Adaptive.w(8),
                                                        right: Adaptive.w(8),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        children: [
                                                          getTextPoppins('Trendyol',
                                                              colors: mainBgColor),
                                                          Switch(
                                                            activeColor:
                                                            Colors.black,
                                                            activeTrackColor:
                                                            const Color(
                                                                0xFF1AC66C),
                                                            splashRadius: 50.0,
                                                            value: true,
                                                            onChanged: (value) {},
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: Adaptive.h(1)),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: Adaptive.w(22),
                                                      height: Adaptive.h(10),
                                                      decoration: BoxDecoration(
                                                        color: Colors.transparent,
                                                        borderRadius: BorderRadius.circular(10),
                                                        border: Border.all(color: Color(0xFF7FF8B9),width: 1),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          getTextPoppins('Resturant',colors: Colors.black,fontSize: 12,fontWeight: FontWeight.w600),
                                                          Icon(Icons.check_circle,size:  20),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(width: Adaptive.w(2)),
                                                    Container(
                                                      width: Adaptive.w(22),
                                                      height: Adaptive.h(10),
                                                      decoration: BoxDecoration(
                                                        color: Colors.transparent,
                                                        borderRadius: BorderRadius.circular(10),
                                                        border: Border.all(color: Color(0xFF7FF8B9),width: 1),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          getTextPoppins('Paket Servis',colors: Colors.black,fontSize: 12,fontWeight: FontWeight.w600),
                                                          Icon(Icons.check_circle,size:  20),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(width: Adaptive.w(2)),
                                                    Container(
                                                      width: Adaptive.w(22),
                                                      height: Adaptive.h(10),
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(10),
                                                        border: Border.all(color: Color(0xFF7FF8B9),width: 1),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          getTextPoppins('Gel Al',colors: Colors.black,fontSize: 12,fontWeight: FontWeight.w600),
                                                          Icon(Icons.check_circle,size:  20,color: Colors.green),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: Adaptive.h(1)),
                                                Center(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                      color: Color(0xFF60EAA2),
                                                    ),
                                                    width: Adaptive.w(75),
                                                    height: Adaptive.h(6),
                                                    child: Center(
                                                      child: getTextPoppins(
                                                          'Onayla',
                                                          fontSize: 14,
                                                          colors: mainBgColor),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: Container(
                              width: Adaptive.w(15),
                              height: Adaptive.h(13),
                              decoration: BoxDecoration(
                                color: lightBlue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: SvgPicture.asset(
                                    'assets/svg/sliders.svg',
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Adaptive.h(2)),
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: Adaptive.h(0.5)),
                            width: Adaptive.w(95),
                            height: Adaptive.h(13.5),
                            decoration: BoxDecoration(
                              color: mainColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: getTextPoppins('Aktif Sipariş Listesi',
                                colors: Colors.black, fontSize: 12),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            left: 0,
                            top: Adaptive.h(4),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: lightBlue,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(11),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        getTextPoppins('31',
                                            colors: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600),
                                        getTextPoppins('Masa',
                                            fontSize: 12, colors: Colors.white),
                                        Container(
                                            width: 10,
                                            height: 2,
                                            color:
                                                Colors.white.withOpacity(0.3)),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        getTextPoppins('23',
                                            colors: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600),
                                        getTextPoppins('Paket Servis',
                                            fontSize: 12, colors: Colors.white),
                                        Container(
                                            width: 10,
                                            height: 2,
                                            color:
                                                Colors.white.withOpacity(0.3)),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        getTextPoppins('02',
                                            colors: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600),
                                        getTextPoppins('Gel Al',
                                            fontSize: 12, colors: Colors.white),
                                        Container(
                                            width: 10,
                                            height: 2,
                                            color:
                                                Colors.white.withOpacity(0.3)),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        getTextPoppins('12',
                                            colors: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600),
                                        getTextPoppins('Bekleyen',
                                            fontSize: 12, colors: Colors.white),
                                        Container(
                                            width: 10,
                                            height: 2,
                                            color:
                                                Colors.white.withOpacity(0.3)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
             Padding(
               padding: EdgeInsets.all(0),
               child:  BlocBuilder<FilterCubit, FilterState>(
                 builder: (context, state) {
                   return SizedBox(
                     height: 90,
                     width: Adaptive.w(100),
                     child: Padding(
                       padding: const EdgeInsets.only(top: 20),
                       child: Container(
                         width: Adaptive.w(100),
                         decoration: BoxDecoration(
                           borderRadius: const BorderRadius.all(
                               const Radius.circular(100)),
                           color: Color(0xFFE5E9F5),
                         ),
                         child: ListView.builder(
                             scrollDirection: Axis.horizontal,
                             itemCount: 3,
                             padding: EdgeInsets.all(0),
                             shrinkWrap: true,
                             itemBuilder: (context, index) {
                               List<String> listName = [
                                 'Bugün',
                                 'Bu Hafta',
                                 'Bu Ay',
                               ];
                               if (index == 0) {
                                 return ClipRRect(
                                   borderRadius: const BorderRadius.only(
                                       topLeft: Radius.circular(100),
                                       bottomLeft: Radius.circular(100)),
                                   child: InkWell(
                                     onTap: () {
                                       context
                                           .read<FilterCubit>()
                                           .changeTabbar(index);
                                     },
                                     child: Container(
                                       width: Adaptive.w(35),
                                       height: 85,
                                       color: context
                                           .read<FilterCubit>()
                                           .currentIndex ==
                                           index
                                           ? mainColor
                                           : Color(0xFFE5E9F5),
                                       child: Column(
                                         crossAxisAlignment:
                                         CrossAxisAlignment.center,
                                         mainAxisAlignment:
                                         MainAxisAlignment.center,
                                         children: [
                                           const SizedBox(height: 5),
                                           getTextPoppins(listName[index],
                                               fontSize: 16,
                                               colors: Colors.black),
                                         ],
                                       ),
                                     ),
                                   ),
                                 );
                               }
                               if (index == 2) {
                                 return ClipRRect(
                                   borderRadius: const BorderRadius.only(
                                       topRight: Radius.circular(100),
                                       bottomRight: Radius.circular(100)),
                                   child: InkWell(
                                     onTap: () {
                                       context
                                           .read<FilterCubit>()
                                           .changeTabbar(index);
                                     },
                                     child: Container(
                                       width: Adaptive.w(35),
                                       height: 85,
                                       color: context
                                           .read<FilterCubit>()
                                           .currentIndex ==
                                           index
                                           ? mainColor
                                           : Color(0xFFE5E9F5),
                                       child: Column(
                                         crossAxisAlignment:
                                         CrossAxisAlignment.center,
                                         mainAxisAlignment:
                                         MainAxisAlignment.center,
                                         children: [
                                           const SizedBox(height: 5),
                                           getTextPoppins(listName[index],
                                               fontSize: 16,
                                               colors: Colors.black),
                                         ],
                                       ),
                                     ),
                                   ),
                                 );
                               }
                               return InkWell(
                                 onTap: () {
                                   if (context
                                       .read<FilterCubit>()
                                       .currentIndex !=
                                       index) {
                                     context
                                         .read<FilterCubit>()
                                         .changeTabbar(index);
                                   }
                                 },
                                 child: Container(
                                   width: Adaptive.w(26),
                                   height: 85,
                                   decoration: BoxDecoration(
                                     border: Border(
                                       left: BorderSide(
                                           width: 2, color: Color(0xFFDCE1EE)),
                                       right: BorderSide(
                                           width: 2, color: Color(0xFFDCE1EE)),
                                     ),
                                     color: context
                                         .read<FilterCubit>()
                                         .currentIndex ==
                                         index
                                         ? mainColor
                                         : Color(0xFFE5E9F5),
                                   ),
                                   child: Column(
                                     crossAxisAlignment:
                                     CrossAxisAlignment.center,
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       getTextPoppins(listName[index],
                                           colors: Colors.black),
                                     ],
                                   ),
                                 ),
                               );
                             }),
                       ),
                     ),
                   );
                 },
               ),
             ),
              SizedBox(height: Adaptive.h(3)),
              BlocBuilder<FilterCubit, FilterState>(builder: (context, state) {
                if (state is FilterInitial) {
                  return TodayScreen();
                }
                if (state is FilterWeekInitial) {
                  return WeekMainPage();
                }
                if (state is FilterMounthInitial) {
                  return MounthMainPage();
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              }),
              SizedBox(height: Adaptive.h(10)),
            ],
          ),
        ),
        Positioned(
          bottom: Adaptive.h(3),
          child: Container(
            width: Adaptive.w(95),
            height: Adaptive.h(8),
            decoration: BoxDecoration(
              color: mainBgColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Container(
                        width: Adaptive.w(13),
                        height: Adaptive.h(12),
                        decoration: BoxDecoration(
                            color: Color(0xFF2F2552).withOpacity(0.9),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: SvgPicture.asset(
                            'assets/svg/money.svg',
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        getTextPoppins('Toplam Ciro',
                            colors: Colors.white.withOpacity(0.6),
                            fontSize: 12),
                        getTextPoppins('1200 ₺',
                            colors: Colors.white, fontSize: 16),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: Adaptive.w(5),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Container(
                        width: Adaptive.w(13),
                        height: Adaptive.h(12),
                        decoration: BoxDecoration(
                            color: Color(0xFF2F2552).withOpacity(0.9),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: SvgPicture.asset(
                            'assets/svg/shop-bag.svg',
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        getTextPoppins('Toplam Ciro',
                            colors: Colors.white.withOpacity(0.6),
                            fontSize: 12),
                        getTextPoppins('1200 ₺',
                            colors: Colors.white, fontSize: 16),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
