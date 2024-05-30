import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading_web_app_admin/Const/color.dart';
import 'package:trading_web_app_admin/Widget/custom_button.dart';
import 'package:trading_web_app_admin/Widget/textfield_with_column.dart';

class RiskManagements extends StatefulWidget {
  const RiskManagements({super.key});

  @override
  State<RiskManagements> createState() => _RiskManagementsState();
}

class _RiskManagementsState extends State<RiskManagements> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight * 0.04,
          ),
          Text(
            "Position Limits:",
            style: TextStyle(
                fontSize: 4.9.sp,
                color: whiteColor,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Row(
            children: [
              SizedBox(
                width: screenWidth * 0.14,
                child: customTextFieldWithColumn(
                    'Minimum Position Size', screenHeight, screenWidth),
              ),
              SizedBox(
                width: screenWidth * 0.03,
              ),
              SizedBox(
                width: screenWidth * 0.14,
                child: customTextFieldWithColumn(
                    'Position Size Restrict By Asset',
                    screenHeight,
                    screenWidth),
              )
            ],
          ),
          SizedBox(
            height: screenHeight * 0.04,
          ),
          Text(
            "Stop- Loss/ Take-Profit Setting:",
            style: TextStyle(
                fontSize: 4.6.sp,
                color: whiteColor,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Row(
            children: [
              SizedBox(
                width: screenWidth * 0.14,
                child: customTextFieldWithColumn(
                    'Default Stop-Loss Level', screenHeight, screenWidth),
              ),
              SizedBox(
                width: screenWidth * 0.03,
              ),
              SizedBox(
                width: screenWidth * 0.14,
                child: customTextFieldWithColumn(
                    'Default Take Profit Level', screenHeight, screenWidth),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.04,
          ),
          Text(
            "Risk Controls:",
            style: TextStyle(
                fontSize: 4.6.sp,
                color: whiteColor,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Row(
            children: [
              SizedBox(
                width: screenWidth * 0.14,
                child: customTextFieldWithColumn(
                    "Risk Percentage per Trade", screenHeight, screenWidth),
              ),
              SizedBox(
                width: screenWidth * 0.03,
              ),
              SizedBox(
                width: screenWidth * 0.14,
                child: customTextFieldWithColumn(
                    'Maximum Daily Loss Limit', screenHeight, screenWidth),
              ),
              SizedBox(
                width: screenWidth * 0.03,
              ),
              SizedBox(
                width: screenWidth * 0.14,
                child: customTextFieldWithColumn(
                    'Risk Exposure Monitoring', screenHeight, screenWidth),
              )
            ],
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          SizedBox(
              width: screenWidth * 0.13,
              child: const CustomButton(texxt: 'Save'))
        ],
      ),
    );
  }
}

Widget proofContainer(double screenWidth, double screenHeight, String title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
          fontSize: 3.4.sp,
          wordSpacing: 1.5,
          color: grey,
        ),
      ),
      SizedBox(
        height: screenHeight * 0.015,
      ),
      Container(
        width: screenWidth * 0.2,
        height: screenHeight * 0.06,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xff081323)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
          child: Row(
            children: [
              const Icon(
                Icons.file_upload_outlined,
                color: whiteColor,
              ),
              SizedBox(
                width: screenWidth * 0.02,
              ),
              Text(
                "Choose a file",
                style: TextStyle(
                  fontSize: 3.sp,
                  wordSpacing: 1.5,
                  color: grey,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
