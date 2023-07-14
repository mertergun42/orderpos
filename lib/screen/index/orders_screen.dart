import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orderpos/bloc/order_filter/order_filter_cubit.dart';
import 'package:orderpos/utils/custom_color.dart';
import 'package:orderpos/utils/custom_style.dart';
import 'package:orderpos/widgets/order_delete_widget.dart';
import 'package:orderpos/widgets/order_list_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../bloc/index/index_cubit.dart';
import '../../widgets/order_waiting_widget.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Adaptive.w(100),
          height: Adaptive.h(20),
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
                          onTap: (){
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
                    const Icon(Icons.notifications, color: Colors.white, size: 30),
                  ],
                ),
                SizedBox(height: Adaptive.h(4)),
                BlocBuilder<OrderFilterCubit, OrderFilterState>(
                  builder: (context, state) {
                    return SizedBox(
                      height: Adaptive.h(8.5),
                      width: Adaptive.w(100),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: Adaptive.w(100),
                          decoration:const BoxDecoration(
                            borderRadius:  BorderRadius.all(
                                 Radius.circular(100)),
                            color: Color(0xFFE5E9F5),
                          ),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                List<String> listName = [
                                  'Aktif',
                                  'Bekliyor',
                                  'İptal',
                                ];
                                if (index == 0) {
                                  return ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100)),
                                    child: InkWell(
                                      onTap: () {
                                        context
                                            .read<OrderFilterCubit>().orderStatus(index);
                                      },
                                      child: Container(
                                        width: Adaptive.w(30),
                                        height: 85,
                                        color: context
                                            .read<OrderFilterCubit>()
                                            .currentIndex ==
                                            index
                                            ? mainColor
                                            : const Color(0xFFE5E9F5),
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
                                            .read<OrderFilterCubit>()
                                            .orderStatus(index);
                                      },
                                      child: Container(
                                        width: Adaptive.w(32.3),
                                        height: 85,
                                        color: context
                                            .read<OrderFilterCubit>()
                                            .currentIndex ==
                                            index
                                            ? mainColor
                                            : const Color(0xFFE5E9F5),
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
                                        .read<OrderFilterCubit>()
                                        .currentIndex !=
                                        index) {
                                      context
                                          .read<OrderFilterCubit>()
                                          .orderStatus(index);
                                    }
                                  },
                                  child: Container(
                                    width: Adaptive.w(26),
                                    height: 85,
                                    decoration: BoxDecoration(
                                      border: const Border(
                                        left: const BorderSide(
                                            width: 2, color: Color(0xFFDCE1EE)),
                                        right: const BorderSide(
                                            width: 2, color: const Color(0xFFDCE1EE)),
                                      ),
                                      color: context
                                          .read<OrderFilterCubit>()
                                          .currentIndex ==
                                          index
                                          ? mainColor
                                          : const Color(0xFFE5E9F5),
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
                )
              ],
            ),
          ),
        ),
        BlocBuilder<OrderFilterCubit, OrderFilterState>(builder: (context, state) {
          if (state is OrderFilterInitial) {
            return const OrderListWidget();
          }
          if (state is OrderWaitingInitial) {
            return const OrderWaitingWidget();
          }
          if (state is OrderCancelInitial) {}
          return const OrderDeleteWidget();
        })
      ],
    );
  }
}
