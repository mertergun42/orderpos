import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hidden_drawer/flutter_hidden_drawer.dart';
import 'package:flutter_svg/svg.dart';
// ignore: unused_import
import 'package:orderpos/bloc/initial/initial_cubit.dart';
import 'package:orderpos/screen/index/orders_detail_screen.dart';
import 'package:orderpos/screen/index/orders_screen.dart';
import 'package:orderpos/utils/custom_color.dart';
import 'package:orderpos/utils/custom_style.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../bloc/index/index_cubit.dart';
import 'home_page_screen.dart';

class MainIndexPage extends StatefulWidget {
  const MainIndexPage({Key? key}) : super(key: key);

  @override
  State<MainIndexPage> createState() => _MainIndexPageState();
}

class _MainIndexPageState extends State<MainIndexPage> {
  @override
  Widget build(BuildContext context) {
    return HiddenDrawer(
      drawer: HiddenDrawerMenu(
        menuActiveColor: mainBgColor,
        menuColor: mainBgColor,
        drawerDecoration: BoxDecoration(
          color: mainBgColor,
        ),
        header: Padding(
          padding: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.only(top: Adaptive.h(5)),
            child: Container(
              width: Adaptive.w(50),
              height: Adaptive.h(100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Adaptive.w(20),
                    height: Adaptive.h(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child:
                          Image.asset('assets/png/ma.jpg', fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(height: Adaptive.h(1)),
                  getTextPoppins('Köfteci Yusuf',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      colors: Colors.white),
                  SizedBox(height: Adaptive.h(0.2)),
                  getTextPoppins('yusuf@kofteciyusu.com',
                      colors: Colors.white.withOpacity(0.4), fontSize: 10),
                  SizedBox(height: Adaptive.h(0.2)),
                  getTextPoppins('Yönetici',
                      fontSize: 12, colors: Colors.green),
                ],
              ),
            ),
          ),
        ),
        menu: [
          DrawerMenu(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: InkWell(
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/user-icon.svg',
                    ),
                    SizedBox(width: Adaptive.w(6)),
                    getTextPoppins('Restaurant Ayarları', fontSize: 14)
                  ],
                ),
                onTap: () {
                  showFlexibleBottomSheet(
                    minHeight: 0,
                    initHeight: 0.6,
                    maxHeight: 1,
                    context: context,
                    builder: _buildBottomSheet,
                    anchors: [0, 0.5, 1],
                  );
                },
              ),
            ),
            onPressed: () {},
          ),
          DrawerMenu(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: InkWell(
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/enteg-person.svg',
                    ),
                    SizedBox(width: Adaptive.w(6)),
                    getTextPoppins('Entegrasyonlar', fontSize: 14)
                  ],
                ),
                onTap: () {
                  showFlexibleBottomSheet(
                    minHeight: 0,
                    initHeight: 0.6,
                    maxHeight: 1,
                    context: context,
                    builder: _buildBottomSheet,
                    anchors: [0, 0.5, 1],
                  );
                },
              ),
            ),
            onPressed: () {},
          ),
          DrawerMenu(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: InkWell(
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/order.svg',
                    ),
                    SizedBox(width: Adaptive.w(6)),
                    getTextPoppins('Siparişler', fontSize: 14)
                  ],
                ),
                onTap: () {
                  showFlexibleBottomSheet(
                    minHeight: 0,
                    initHeight: 0.6,
                    maxHeight: 1,
                    context: context,
                    builder: _buildBottomSheet,
                    anchors: [0, 0.5, 1],
                  );
                },
              ),
            ),
            onPressed: () {},
          ),
          DrawerMenu(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: InkWell(
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/exit.svg',
                    ),
                    SizedBox(width: Adaptive.w(6)),
                    getTextPoppins('Çıkış', fontSize: 14)
                  ],
                ),
                onTap: () {
                  showFlexibleBottomSheet(
                    minHeight: 0,
                    initHeight: 0.6,
                    maxHeight: 1,
                    context: context,
                    builder: _buildBottomSheet,
                    anchors: [0, 0.5, 1],
                  );
                },
              ),
            ),
            onPressed: () {},
          ),
        ],
        footer: getTextPoppins('Orderpos v1.0.0',
            fontSize: 12, colors: Colors.white.withOpacity(0.4)),
      ),
      child: BlocBuilder<IndexCubit, IndexState>(
        builder: (context, state) {
          return Container(
            width: Adaptive.w(100),
            height: Adaptive.h(100),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: SvgPicture.asset('assets/svg/bottom-right-line.svg',
                      width: 150),
                ),
                SvgPicture.asset('assets/svg/top-left-line.svg', width: 250),
                Padding(
                  padding: EdgeInsets.only(
                      top: Adaptive.h(2),
                      left: Adaptive.w(2),
                      right: Adaptive.w(2)),
                  child: getPage(state, context),
                ),
              ],
            ),
          );
        },
        bloc: BlocProvider.of<IndexCubit>(context),
      ),
    );
  }

  Widget getPage(IndexState state, BuildContext context) {
    if (state is IndexInitial) {
      return const HomePageScreen();
    }

    if (state is OrdersState) {
      return WillPopScope(
          onWillPop: () async {
            if (context.read<IndexCubit>().listState.length == 1) {
              return true;
            } else {
              context.read<IndexCubit>().previous();
              return false;
            }
          },
          child: const OrdersScreen());
    }

    if (state is OrdersDetailState) {
      return WillPopScope(
          onWillPop: () async {
            if (context.read<IndexCubit>().listState.length == 1) {
              return true;
            } else {
              context.read<IndexCubit>().previous();
              return false;
            }
          },
          child: const OrdersDetailScreen());
    }

    throw Exception("");
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
            left: Adaptive.w(10), right: Adaptive.w(10), top: Adaptive.h(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                getTextPoppins('Rezervasyon',
                    colors: mainBgColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
                Switch(
                  activeColor: Colors.white,
                  focusColor: Colors.red,
                  activeTrackColor: Colors.green,
                  splashRadius: 50.0,
                  value: true,
                  onChanged: (value) {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                getTextPoppins('Vale',
                    colors: mainBgColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
                Switch(
                  activeColor: Colors.white,
                  activeTrackColor: Colors.green,
                  splashRadius: 50.0,
                  value: true,
                  onChanged: (value) {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                getTextPoppins('Paket Servis',
                    colors: mainBgColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
                Switch(
                  activeColor: Colors.white,
                  activeTrackColor: Colors.green,
                  splashRadius: 50.0,
                  value: false,
                  onChanged: (value) {},
                ),
              ],
            ),
            getTextPoppins('Paket servis ne kadar süre kapalı kalsın ?',
                colors: mainBgColor, fontSize: 14, fontWeight: FontWeight.w400),
            Row(
              children: [
                Radio(
                  value: true,
                  activeColor: Color(0xFF25DF7E),
                  toggleable: true,
                  onChanged: (value) {},
                  groupValue: true,
                ),
                getTextPoppins('15 dakika', colors: mainBgColor, fontSize: 15),
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
                getTextPoppins('30 dakika', colors: mainBgColor, fontSize: 15),
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
                getTextPoppins('1 saat', colors: mainBgColor, fontSize: 15),
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
                getTextPoppins(
                  'Gün Boyu',
                  colors: mainBgColor,
                  fontSize: 15,
                ),
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
                child: getTextPoppins('Kaydet',
                    colors: mainBgColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
