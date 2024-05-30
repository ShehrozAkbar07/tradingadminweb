import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String texxt;
  const CustomButton({
    Key? key,
    required this.texxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xffc326f3), Color(0xff4981bb)],
        ),
      ),
      height: screenHeight * 0.06,
      width: screenWidth * 0.2,
      child: Center(
        child: Text(
          texxt,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white, fontSize: 3.2.sp,
            //  color: Color(AppColors.titleText),
          ),
        ),
      ),
    );
  }
}
