import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading_web_app_admin/Const/color.dart';
import 'package:trading_web_app_admin/View/dashboard/assets/assets.dart';
import 'package:trading_web_app_admin/View/dashboard/dashboard_screen.dart';
import 'package:trading_web_app_admin/View/dashboard/settings/settings.dart';
import 'package:trading_web_app_admin/View/dashboard/trade_management/trade_management.dart';
import 'package:trading_web_app_admin/View/dashboard/trading/trading.dart';
import 'package:trading_web_app_admin/View/dashboard/users/user.dart';
import 'package:trading_web_app_admin/Widget/home_top_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 6, vsync: this);
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff030512),
              Color(0xff020512),
              Color(0xff020512),
              Color(0xff0e1228),
              Color(0xff030512),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeTopBar(),
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
                        "Dashboard",
                        style: TextStyle(
                            fontSize: 3.sp,
                            color: whiteColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Users",
                        style: TextStyle(
                            fontSize: 3.sp,
                            color: whiteColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Traders Management",
                        style: TextStyle(
                            fontSize: 3.sp,
                            color: whiteColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Asset",
                        style: TextStyle(
                            fontSize: 3.sp,
                            color: whiteColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Trading",
                        style: TextStyle(
                            fontSize: 3.sp,
                            color: whiteColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Settings",
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
                  DashboardScreen(),
                  Users(),
                  TradeManagement(),
                  Assets(),
                  Trading(),
                  Settings(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
