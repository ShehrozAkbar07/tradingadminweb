import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading_web_app_admin/Const/color.dart';
import 'package:trading_web_app_admin/View/dashboard/trading/order_management.dart';

class Trading extends StatefulWidget {
  const Trading({super.key});

  @override
  State<Trading> createState() => _TradingState();
}

class _TradingState extends State<Trading> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: screenHeight * 0.02,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
          child: Container(
            width: screenWidth * 1,
            height: screenHeight * 0.05,
            decoration: const BoxDecoration(
              // color: Colors.red,
              border: Border(
                bottom: BorderSide(
                  color: Color(0xff0d2242),
                  width: 2.0,
                ),
              ),
            ),
            // color: Colors.yellow,
            child: TabBar(
              indicatorWeight: 0.8,
              dividerColor: Colors.amberAccent,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.blue,
              labelStyle: const TextStyle(fontWeight: FontWeight.w400),
              controller: tabController,
              isScrollable: true,
              labelPadding: EdgeInsets.symmetric(horizontal: 5.w),
              tabs: [
                Tab(
                  child: Text(
                    "Order Management",
                    style: TextStyle(
                        fontSize: 3.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Tab(
                  child: Text(
                    "Order Details Panel",
                    style: TextStyle(
                        fontSize: 3.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Tab(
                  child: Text(
                    "Trade History",
                    style: TextStyle(
                        fontSize: 3.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Tab(
                  child: Text(
                    "Trade Details Panel",
                    style: TextStyle(
                        fontSize: 3.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Tab(
                  child: Text(
                    "Trading Tools",
                    style: TextStyle(
                        fontSize: 3.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: const [
              OrderManagement(),
              OrderManagement(),
              OrderManagement(),
              OrderManagement(),
              OrderManagement(),

              // Assets(),
              // TradeManagement(),
              // Users(),
            ],
          ),
        )
      ],
    );
  }
}
