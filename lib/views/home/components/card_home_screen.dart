import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uud1/views/consts/color.dart';

class CardHomeScreen extends StatelessWidget {
  const CardHomeScreen({super.key, required this.title, required this.icon, required this.onTap, });
  final String title;
  final IconData icon;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150.h,
        width: 150.h,
        decoration: BoxDecoration(
            color: kPrimary,
            borderRadius: BorderRadius.circular(20.h),
            boxShadow: [
              BoxShadow(
                color: const Color(0x000000).withOpacity(1),
                offset: const Offset(3, 5),
                blurRadius: 10,
                spreadRadius: -3,
              )
            ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: kLight,
              size: 40.h,
            ),
            SizedBox(height: 10.h,),
            Text(
              title,
              style: TextStyle(
                  fontSize: 20.h,
                  color: kLight
              ),
            ),
          ],
        ),
      ),
    );
  }
}
