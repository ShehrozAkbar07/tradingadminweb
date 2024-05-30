import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading_web_app_admin/Const/color.dart';
import 'package:trading_web_app_admin/Widget/user_widget.dart';

class Assets extends StatefulWidget {
  const Assets({super.key});

  @override
  State<Assets> createState() => _AssetsState();
}

class _AssetsState extends State<Assets> {
  Map<String, String>? _mySelection1;
  List<Map<String, String>> network = [
    {'Duration': 'Forex', 'image': 'assets/images/bit.png'},
    {'Duration': 'Forex', 'image': 'assets/images/bnb.png'},
  ];
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tradeable Asset',
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
                    height: screenHeight * 0.05,
                    width: screenWidth * 0.16,
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
                      hint: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Text(
                          'Forex',
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
                              Text(
                                map['Duration'].toString(),
                                style: TextStyle(
                                  fontSize: 3.sp,
                                  wordSpacing: 1.5,
                                  color: grey,
                                ),
                              )
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.09,
          ),
          SizedBox(
              width: screenWidth * 0.9,
              child: uaerRow(screenHeight, screenWidth)),
        ],
      ),
    );
  }
}
