import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hidden_drawer/flutter_hidden_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orderpos/utils/custom_color.dart';
import 'package:orderpos/utils/custom_style.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../bloc/index/index_cubit.dart';

class OrdersDetailScreen extends StatelessWidget {
  const OrdersDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: Adaptive.w(100),
            height: Adaptive.h(17),
            decoration: BoxDecoration(
              color: mainBgColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              context.read<IndexCubit>().previous();
                            },
                            child: SvgPicture.asset(
                              'assets/svg/back-arrow.svg',
                            ),
                          ),
                          SizedBox(width: Adaptive.w(4)),
                          getTextPoppins('Siparişler',
                              colors: Colors.white, fontSize: 14),
                        ],
                      ),
                      const Icon(Icons.notifications,
                          color: Colors.white, size: 30),
                    ],
                  ),
                  SizedBox(height: Adaptive.h(2)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: Adaptive.w(40),
                        height: Adaptive.h(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: lightButton,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: Adaptive.w(2)),
                            SvgPicture.asset(
                              'assets/svg/login-icon-number.svg',
                              color: mainBgColor,
                              height: 30,
                            ),
                            SizedBox(width: Adaptive.w(2)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                getTextPoppins('Sipariş No:',
                                    colors: const Color(0xFF506081),
                                    fontSize: 12),
                                getTextPoppins('#347F5234',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    colors: mainBgColor),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: Adaptive.w(45),
                        height: Adaptive.h(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: lightButton,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: Adaptive.w(2)),
                            SvgPicture.asset(
                              'assets/svg/user-icon-line.svg',
                              color: mainBgColor,
                              height: 30,
                            ),
                            SizedBox(width: Adaptive.w(2)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                getTextPoppins('Müşteri Adı:',
                                    colors: const Color(0xFF506081),
                                    fontSize: 12),
                                getTextPoppins('Fırat Atakan K.',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    colors: mainBgColor),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: Adaptive.h(2)),
          Container(
            width: Adaptive.w(95),
            height: Adaptive.h(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFC4EBD6),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Adaptive.w(10)),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                          right: BorderSide(width: 1, color: Color(0xFF9ED1B6))),
                    ),
                    width: Adaptive.w(38),
                    child: Row(
                      children: [
                        Icon(Icons.access_time, color: mainBgColor, size: 35),
                        SizedBox(width: Adaptive.w(2)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            getTextPoppins('Durumu:',
                                colors: const Color(0xFF506081), fontSize: 12),
                            getTextPoppins('Bekliyor',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                colors: mainBgColor),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: Adaptive.w(10)),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(Icons.calendar_month_outlined,
                            color: mainBgColor, size: 35),
                        SizedBox(width: Adaptive.w(2)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            getTextPoppins('Durumu:',
                                colors: const Color(0xFF506081), fontSize: 12),
                            getTextPoppins('Bekliyor',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                colors: mainBgColor),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: Adaptive.h(2)),
          Container(
            width: Adaptive.w(95),
            height: Adaptive.h(27),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: Color(0xFFDDE0E8)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getTextPoppins('Sipariş Detayı:',
                          colors: mainBgColor, fontSize: 12),
                      SizedBox(height: Adaptive.h(1)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          getTextPoppins('1 Porsiyon Döner',
                              fontSize: 16,
                              colors: mainBgColor,
                              fontWeight: FontWeight.w500),
                          getTextPoppins('x2', colors: mainBgColor, fontSize: 16),
                        ],
                      ),
                      SizedBox(height: Adaptive.h(1)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          getTextPoppins('Lahmacun',
                              fontSize: 16,
                              colors: mainBgColor,
                              fontWeight: FontWeight.w500),
                          getTextPoppins('x3', colors: mainBgColor, fontSize: 16),
                        ],
                      ),
                      SizedBox(height: Adaptive.h(1)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          getTextPoppins('Ayran',
                              fontSize: 16,
                              colors: mainBgColor,
                              fontWeight: FontWeight.w500),
                          getTextPoppins('x3', colors: mainBgColor, fontSize: 16),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: Adaptive.w(100),
                  height: Adaptive.h(8),
                  color: lightButton,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        getTextPoppins('Toplam:',
                            colors: mainBgColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                        Row(
                          children: [
                            SvgPicture.asset('assets/svg/wallet.svg',
                                color: mainBgColor, height: 25),
                            SizedBox(width: Adaptive.w(1)),
                            getTextPoppins('388.99 ₺',
                                fontSize: 14,
                                colors: mainBgColor,
                                fontWeight: FontWeight.w700),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: Adaptive.h(2)),
          Container(
            width: Adaptive.w(95),
            height: Adaptive.h(13),
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: lightButton),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getTextPoppins('Açık Adres:', colors: mainBgColor, fontSize: 12),
                  SizedBox(height: Adaptive.h(1)),
                  Row(
                    children: [
                      SvgPicture.asset('assets/svg/location.svg',
                          color: mainBgColor),
                      SizedBox(width: Adaptive.w(3)),
                      getTextPoppins(
                          'Örnek mah 7. Cadde Kat:3 D:6 \nKartal/Soğanlık ',
                          textAlign: TextAlign.start,
                          maxLines: 2,
                          fontWeight: FontWeight.w500,
                          colors: mainBgColor,
                          fontSize: 16),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: Adaptive.h(2)),
          SizedBox(
            width: Adaptive.w(95),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.check_circle_outline,color: Color(0xFF25DF7E),size: 28),
                    getTextPoppins('Hazırlanıyor',colors: mainBgColor,fontWeight: FontWeight.w500),
                  ],
                ),
                SizedBox(height: Adaptive.h(1)),
                Row(
                  children: [
                    Icon(Icons.check_circle_outline,color: Color(0xFF25DF7E),size: 28),
                    getTextPoppins('5 dk içinde yola çıkacak',colors: mainBgColor,fontWeight: FontWeight.w500),
                  ],
                ),
                SizedBox(height: Adaptive.h(1)),
                Row(
                  children: [
                    Icon(Icons.radio_button_unchecked_sharp,color: mainBgColor,size: 28),
                    getTextPoppins('10 dk içinde yola çıkacak',colors: mainBgColor,fontWeight: FontWeight.w500),
                  ],
                ),
                SizedBox(height: Adaptive.h(1)),
                Row(
                  children: [
                    Icon(Icons.radio_button_unchecked_sharp,color: mainBgColor,size: 28),
                    getTextPoppins('Yola Çıktı',colors: mainBgColor,fontWeight: FontWeight.w500),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: Adaptive.h(2)),
          SizedBox(
            width: Adaptive.w(95),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    showFlexibleBottomSheet(
                      minHeight: 0,
                      initHeight: 0.4,
                      maxHeight: 1,
                      context: context,
                      builder: _buildBottomSheet,
                      anchors: [0, 0.5, 1],
                    );
                  },
                  child: Container(
                    width: Adaptive.w(35),
                    height: Adaptive.h(6),
                    decoration: BoxDecoration(
                      color: Color(0xFFD84E4E),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/svg/uncorrect.svg',height: 27),
                        SizedBox(width: Adaptive.w(2)),
                        getTextPoppins('Reddet',fontSize: 14),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: Adaptive.w(5)),
                Container(
                  width: Adaptive.w(35),
                  height: Adaptive.h(6),
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/svg/done.svg',height: 27),
                      SizedBox(width: Adaptive.w(2)),
                      getTextPoppins('Onayla',fontSize: 14,colors: Colors.black),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: Adaptive.h(4)),
        ],
      ),
    );
  }
}
Widget _buildBottomSheet(
    BuildContext context,
    ScrollController scrollController,
    double bottomSheetOffset,
    ) {
  return SafeArea(
    child: Material(
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(25), topLeft: Radius.circular(25)),
      child: Padding(
        padding: EdgeInsets.only(
            left: Adaptive.w(10), right: Adaptive.w(10), top: Adaptive.h(0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            getTextPoppins('Siparişi reddetme sebebini belirtiniz.',
                colors: mainBgColor, fontSize: 16, fontWeight: FontWeight.w600),
            Row(
              children: [
                Radio(
                  value: true,
                  activeColor: Color(0xFF25DF7E),
                  toggleable: true,
                  onChanged: (value) {},
                  groupValue: true,
                ),
                getTextPoppins('O konuma paket servis yok',colors: mainBgColor,fontSize: 15),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: false,
                  activeColor: Color(0xFF25DF7E),
                  toggleable: true,
                  onChanged: (value) {},
                  groupValue: true,
                ),
                getTextPoppins('Kurye yok',colors: mainBgColor,fontSize: 15),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: false,
                  activeColor: Color(0xFF25DF7E),
                  toggleable: true,
                  onChanged: (value) {},
                  groupValue: true,
                ),
                getTextPoppins('Restaurant Kapalı',colors: mainBgColor,fontSize: 15),
              ],
            ),
            Container(
              width: Adaptive.w(100),
              height: Adaptive.h(6),
              decoration: BoxDecoration(
                color: Color(0xFFE4E9F5),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: getTextPoppins('Gönder',colors: mainBgColor,fontWeight: FontWeight.w600,fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}