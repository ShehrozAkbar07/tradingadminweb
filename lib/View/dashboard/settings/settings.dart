import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading_web_app_admin/Const/color.dart';
import 'package:trading_web_app_admin/View/dashboard/settings/general_settings.dart';
import 'package:trading_web_app_admin/View/dashboard/settings/integeration_testing.dart';
import 'package:trading_web_app_admin/View/dashboard/settings/notification_setting.dart';
import 'package:trading_web_app_admin/View/dashboard/settings/risk_managements.dart';
import 'package:trading_web_app_admin/View/dashboard/settings/trading_parameters.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 7, vsync: this);

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
                    "General Settings",
                    style: TextStyle(
                        fontSize: 3.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Tab(
                  child: Text(
                    "Trading Parameters",
                    style: TextStyle(
                        fontSize: 3.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Tab(
                  child: Text(
                    "Risk Management",
                    style: TextStyle(
                        fontSize: 3.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Tab(
                  child: Text(
                    "Integration Settings",
                    style: TextStyle(
                        fontSize: 3.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Tab(
                  child: Text(
                    "User Management",
                    style: TextStyle(
                        fontSize: 3.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Tab(
                  child: Text(
                    "Compliance and Security",
                    style: TextStyle(
                        fontSize: 3.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Tab(
                  child: Text(
                    "Notification Settings",
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
              GeneralSettings(),
              TradingParameters(),
              RiskManagements(),
              IntegerationTesting(),
              RiskManagements(),
              TradingParameters(),
              NotificationSetting(),
            ],
          ),
        )
      ],
    );
  }
}
