import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading_web_app_admin/Const/color.dart';

Widget amountContainer(String title, double screenHeight, double screenWidth) {
  return Column(
    children: [
      InkWell(
        onTap: () {},
        child: Container(
          height: screenHeight * 0.05,
          width: screenWidth * 0.13,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: const Color(0xff0f172e),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.004),
            child: Center(
              child: Text(
                "\$ $title",
                style: TextStyle(
                    fontSize: 3.sp,
                    wordSpacing: 1.5,
                    color: whiteColor,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: screenHeight * 0.02,
      ),
    ],
  );
}

Widget customTextFieldWithColumn(
    String title, double screenHeight, double screenWidth,
    {bool isAlign = false, String? hintText}) {
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
      SizedBox(
        width: screenWidth * 0.2,
        height: screenHeight * 0.05,
        child: TextFormField(
          textAlign: isAlign ? TextAlign.center : TextAlign.start,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            // hintStyle: const TextStyle(
            //   color: Colors.white,
            // ),
            labelStyle: const TextStyle(color: Colors.white, fontSize: 14),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
            fillColor: const Color(0xff081323),
            filled: true,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
            border: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color(0xff081323), width: 1.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color(0xff081323), width: 1.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color(0xff081323), width: 1.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),
    ],
  );
}
