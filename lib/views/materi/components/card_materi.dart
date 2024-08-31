import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uud1/views/consts/color.dart';

class CardMateri extends StatelessWidget {
  const CardMateri({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kPrimary,
          borderRadius: BorderRadius.circular(10.h),
          boxShadow: [
            BoxShadow(
              color: const Color(0x000000).withOpacity(1),
              offset: const Offset(3, 5),
              blurRadius: 10,
              spreadRadius: -3,
            )
          ]
      ),
      padding: EdgeInsets.all(10.h),
      margin: EdgeInsets.only(bottom: 15.h),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Icon(
                color: kLight,
                size: 30.h,
                Icons.file_present
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: kLight,
                      fontSize: 16.h
                  ),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                      color: kLight,
                      fontSize: 12.h
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
