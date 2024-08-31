import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uud1/controllers/grid_controller.dart';
import 'package:uud1/routes/app_pages.dart';
import 'package:uud1/views/consts/color.dart';
import 'package:uud1/views/home/components/card_home_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final GridController controller = Get.put(GridController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Undang - Undang',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Penyelesaian Sengketa',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CardHomeScreen(title: "Materi", icon: Icons.file_copy, onTap: () => Get.toNamed(Routes.MATERI),),
                    CardHomeScreen(title: "Konsultasi", icon: Icons.chat, onTap: () => Get.toNamed(Routes.KONSULTASI)),
                  ],
                ),
                SizedBox(height: 30.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CardHomeScreen(title: "Data tim", icon: Icons.person_pin_rounded, onTap: () => Get.toNamed(Routes.DATA)),
                    CardHomeScreen(title: "Panduan", icon: Icons.info_rounded, onTap: () => Get.toNamed(Routes.PANDUAN)),
                  ],
                ),
                SizedBox(height: 30.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CardHomeScreen(title: "Mitra", icon: Icons.handshake_rounded, onTap: () => Get.toNamed(Routes.MITRA)),
                    CardHomeScreen(title: "FAQ", icon: Icons.question_answer, onTap: () => Get.toNamed(Routes.QNA)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
