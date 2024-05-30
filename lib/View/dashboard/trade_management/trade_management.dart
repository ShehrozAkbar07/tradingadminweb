import 'package:flutter/material.dart';
import 'package:trading_web_app_admin/Widget/textfield_with_column.dart';
import 'package:trading_web_app_admin/Widget/user_widget.dart';

class TradeManagement extends StatefulWidget {
  const TradeManagement({super.key});

  @override
  State<TradeManagement> createState() => _TradeManagementState();
}

class _TradeManagementState extends State<TradeManagement> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight * 0.06,
          ),
          Row(
            children: [
              customTextFieldWithColumn(
                  'Search Trader', screenHeight, screenWidth),
              SizedBox(
                width: screenWidth * 0.03,
              ),
              SizedBox(
                  width: screenWidth * 0.1,
                  child: customTextFieldWithColumn(
                      'Filter From', screenHeight, screenWidth)),
              SizedBox(
                width: screenWidth * 0.03,
              ),
              SizedBox(
                  width: screenWidth * 0.1,
                  child: customTextFieldWithColumn(
                      'Filter To', screenHeight, screenWidth)),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.09,
          ),
          SizedBox(
              width: screenWidth * 0.9,
              child: tradeManagement(screenHeight, screenWidth)),
        ],
      ),
    );
  }
}
