import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:trading_web_app_admin/AppRoutes/routes.dart';
import 'package:trading_web_app_admin/Widget/custom_button.dart';
import 'package:trading_web_app_admin/Widget/textfield_with_column.dart';

class LoginAccount extends StatefulWidget {
  const LoginAccount({super.key});

  @override
  State<LoginAccount> createState() => _LoginAccountState();
}

class _LoginAccountState extends State<LoginAccount> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xff030512),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Admin Account',
              style: TextStyle(
                  fontSize: 7.sp,
                  wordSpacing: 1.5,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            customTextFieldWithColumn(
                'Email Address', screenHeight, screenWidth),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            customTextFieldWithColumn('Password', screenHeight, screenWidth),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.dashboard);
                },
                child: const CustomButton(texxt: 'Sign In'))
          ],
        ),
      ),
    );
  }
}
