import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uud1/controllers/splash_controller.dart';
import 'package:uud1/views/splash/splash.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  final SplashController _splashController = Get.put(SplashController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _splashController.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _splashController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => OrientationBuilder(
        builder: (context, Orientation orientation) {
          return const Splash();
        },
      ),
    );
  }
}
