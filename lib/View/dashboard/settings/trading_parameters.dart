import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading_web_app_admin/Const/color.dart';
import 'package:trading_web_app_admin/Widget/custom_button.dart';
import 'package:trading_web_app_admin/Widget/textfield_with_column.dart';

class TradingParameters extends StatefulWidget {
  const TradingParameters({super.key});

  @override
  State<TradingParameters> createState() => _TradingParametersState();
}

class _TradingParametersState extends State<TradingParameters> {
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
            "Trade Size Limits:",
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
                    'Minimum Trade Size', screenHeight, screenWidth),
              ),
              SizedBox(
                width: screenWidth * 0.03,
              ),
              SizedBox(
                width: screenWidth * 0.14,
                child: customTextFieldWithColumn(
                    'Maximum Trade Size', screenHeight, screenWidth),
              )
            ],
          ),
          SizedBox(
            height: screenHeight * 0.04,
          ),
          Text(
            "Leverage/Margin Settings:",
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
                    'Minimum leverage', screenHeight, screenWidth),
              ),
              SizedBox(
                width: screenWidth * 0.03,
              ),
              SizedBox(
                width: screenWidth * 0.14,
                child: customTextFieldWithColumn(
                    'Margin Cell level', screenHeight, screenWidth),
              ),
              SizedBox(
                width: screenWidth * 0.03,
              ),
              SizedBox(
                width: screenWidth * 0.14,
                child: customTextFieldWithColumn(
                    'Margin Requirements', screenHeight, screenWidth),
              )
            ],
          ),
          SizedBox(
            height: screenHeight * 0.05,
          ),
          Row(
            children: [
              SizedBox(
                width: screenWidth * 0.14,
                child: customTextFieldWithColumn(
                    'Regular Trading Hours', screenHeight, screenWidth),
              ),
              SizedBox(
                width: screenWidth * 0.03,
              ),
              SizedBox(
                width: screenWidth * 0.14,
                child: customTextFieldWithColumn(
                    'Extended Trading Hours', screenHeight, screenWidth),
              ),
              SizedBox(
                width: screenWidth * 0.03,
              ),
              SizedBox(
                width: screenWidth * 0.14,
                child: customTextFieldWithColumn(
                    'Market Holidays', screenHeight, screenWidth),
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
