import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uud1/views/consts/color.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 250.h,
                width: 250.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/logo.png'))
                ),
              ),
              // Image.asset('assets/logo.png'),
              SizedBox(height: 30.h,),
              Text(
                'Selesaikan Sengketa dengan Bijak dan Damai',
                style: TextStyle(
                  fontSize: 16.h
                ),
              ),
              Text(
                'Ayo Mediasi !',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.h
                ),
              ),
              Text(
                'Mediasi Pengadilan adalah jalan tengah untuk mencapai kesepakatan yang adil tanpa perlu berlarut-larut dalam konflik. Mari ciptakan solusi bersama yang menguntungkan semua pihak, dan jaga hubungan baik melalui proses mediasi yang efektif dan transparan.',
                style: TextStyle(
                  fontSize: 16.h
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.h,),
              const CircularProgressIndicator(
                color: kPrimary,
              )
            ],
          ),
        ),
      ),
    );
  }
}
