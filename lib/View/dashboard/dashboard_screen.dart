import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading_web_app_admin/Const/color.dart';
import 'package:trading_web_app_admin/Widget/lineear_chart.dart';
import 'package:trading_web_app_admin/Widget/trading_volumer.dart';
import 'package:trading_web_app_admin/Widget/user_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Map<String, String>? _mySelection1;

  List<Map<String, String>> network = [
    {'Duration': 'AUD/CD', 'image': 'assets/images/bit.png'},
    {'Duration': 'USD', 'image': 'assets/images/bnb.png'},
    {'Duration': 'QWT', 'image': 'assets/images/eos.png'},
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * 0.05,
            ),
            SizedBox(
              width: screenWidth * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  dashboardContainer(screenHeight, screenWidth, 'Total Users'),
                  dashboardContainer(screenHeight, screenWidth, 'Total Trades'),
                  dashboardContainer(screenHeight, screenWidth, 'Win Rates'),
                  dashboardContainer(
                      screenHeight, screenWidth, 'Total Traders'),
                  dashboardContainer(
                      screenHeight, screenWidth, 'Total Asset Management')
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: screenHeight * 0.53,
                  width: screenWidth * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: greyishblue),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                    child: Column(children: [
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      SizedBox(
                        width: screenWidth * 0.4,
                        child: dashboardRow(screenHeight, screenWidth),
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color(0xff081323),
                        ),
                        height: screenHeight * 0.06,
                        child: Center(
                          child: Text(
                            'View all',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white, fontSize: 3.2.sp,
                              //  color: Color(AppColors.titleText),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                Container(
                  height: screenHeight * 0.53,
                  width: screenWidth * 0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: greyishblue),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: screenHeight * 0.04,
                        ),
                        Text(
                          'Graph Showing Trading Volume',
                          style: TextStyle(
                            fontSize: 4.sp,
                            wordSpacing: 1.5,
                            color: whiteColor,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),
                        Center(
                          child: SizedBox(
                            height: screenHeight * 0.4,
                            width: screenWidth * 0.9,
                            child: const TradingVolume(),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: screenHeight * 0.53,
                  width: screenWidth * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: greyishblue),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: screenHeight * 0.04,
                        ),
                        Container(
                          height: screenHeight * 0.05,
                          width: screenWidth * 0.12,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xff081323)),
                          child: DropdownButton<Map<String, String>>(
                            dropdownColor: const Color(0xff040c19),
                            icon: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                size: 5.sp,
                              ),
                            ),
                            underline: const SizedBox(),
                            isExpanded: true,
                            hint: Center(
                              child: Text(
                                'Select Currency',
                                style: TextStyle(
                                  fontSize: 3.sp,
                                  wordSpacing: 1.5,
                                  color: grey,
                                ),
                              ),
                            ),
                            value: _mySelection1,
                            onChanged: (newValue) {
                              setState(() {
                                _mySelection1 = newValue;
                              });
                            },
                            items: network.map((Map<String, String> map) {
                              return DropdownMenuItem<Map<String, String>>(
                                value: map,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Center(
                                      child: Text(
                                        map['Duration'].toString(),
                                        style: TextStyle(
                                          fontSize: 3.sp,
                                          wordSpacing: 1.5,
                                          color: grey,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),
                        Center(
                          child: SizedBox(
                            height: screenHeight * 0.4,
                            width: screenWidth * 0.9,
                            child: const LineChartSample2(),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: screenHeight * 0.53,
                  width: screenWidth * 0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: greyishblue),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: screenHeight * 0.04,
                        ),
                        Text(
                          'Graph Showing Traders Growth',
                          style: TextStyle(
                            fontSize: 4.sp,
                            wordSpacing: 1.5,
                            color: whiteColor,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),
                        Center(
                          child: SizedBox(
                            height: screenHeight * 0.4,
                            width: screenWidth * 0.9,
                            child: const LineChartSample2(),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.06,
            )
          ],
        ),
      ),
    );
  }
}

Widget dashboardContainer(
    double screenHeight, double screenWidth, String title) {
  return Container(
      height: screenHeight * 0.12,
      // width: screenHeight * 0.23,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: const Color(0xff0f172e),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: screenHeight * 0.03, horizontal: screenWidth * 0.02),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.auto_graph_sharp,
              color: grey,
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 3.3.sp,
                        wordSpacing: 1.5,
                        color: grey,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Text(
                    "-----",
                    style: TextStyle(
                        fontSize: 3.3.sp,
                        wordSpacing: 1.5,
                        color: grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ));
}
