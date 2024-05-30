import 'package:flutter/material.dart';
import 'package:trading_web_app_admin/Widget/user_widget.dart';

class OrderManagement extends StatefulWidget {
  const OrderManagement({super.key});

  @override
  State<OrderManagement> createState() => _OrderManagementState();
}

class _OrderManagementState extends State<OrderManagement> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.09,
          ),
          SizedBox(
              width: screenWidth * 0.9,
              child: tradingRow(screenHeight, screenWidth)),
          SizedBox(
            height: screenHeight * 0.1,
          ),
        ],
      ),
    );
  }
}
