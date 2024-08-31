import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uud1/controllers/pdf_controller.dart';
import 'package:uud1/routes/app_pages.dart';
import 'package:uud1/views/consts/color.dart';
import 'package:uud1/views/wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          initialRoute: Routes.SPLASH,
          getPages: AppPages.pages,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: kLight,
            appBarTheme: const AppBarTheme(
              backgroundColor: kLight
            )
          ),
        );
      }
    );
  }
}
