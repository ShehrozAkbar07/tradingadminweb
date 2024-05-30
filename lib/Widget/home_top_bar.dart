import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading_web_app_admin/Const/color.dart';

class HomeTopBar extends StatefulWidget {
  const HomeTopBar({super.key});

  @override
  State<HomeTopBar> createState() => _HomeTopBarState();
}

class _HomeTopBarState extends State<HomeTopBar> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: screenHeight * 0.1,
                width: screenWidth * 0.2,
                // color: Colors.blue,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("LOGO",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              SizedBox(
                // color: Colors.blue,
                height: screenHeight * 0.1,
                width: screenWidth * 0.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Admin",
                      style: TextStyle(
                          fontSize: 4.sp,
                          wordSpacing: 1.5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                        height: screenHeight * 0.06,
                        width: screenWidth * 0.04,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xff0f172e),
                        ),
                        child: const Icon(
                          Icons.notifications_outlined,
                          color: whiteColor,
                        )),
                    Container(
                        height: screenHeight * 0.06,
                        width: screenWidth * 0.04,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xff0f172e),
                        ),
                        child: const Icon(
                          Icons.person_outline,
                          color: whiteColor,
                        )),
                    Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.12,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color(0xff0f172e),
                      ),
                      child: Center(
                        child: Text(
                          "Send Notification",
                          style: TextStyle(
                              fontSize: 3.3.sp,
                              wordSpacing: 1.5,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.04,
          ),
          Container(
            height: screenHeight * 0.002,
            width: screenWidth * 1,
            decoration: const BoxDecoration(
              color: Color(0xff0d2242),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
        ],
      ),
    );
  }
}
