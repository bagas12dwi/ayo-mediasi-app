import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uud1/routes/app_pages.dart';
import 'package:uud1/views/consts/color.dart';
import 'package:uud1/views/tim/components/card_data_tim.dart';

class DataTimScreen extends StatelessWidget {
  const DataTimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Tim'),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Get.toNamed(Routes.CV, arguments: {'cvPath': 'assets/CV_shinfani.pdf', 'nama': 'Shinfani Kartika Wardhani, S.H.'}),
                child: const CardDataTim(
                  nama: 'Shinfani Kartika Wardhani, S.H.',
                  tanggal: 'Blitar, 13 April 2000',
                  email: 'shinfani.kwrdni@gmail.com',
                  phone: '0895396220458',
                  profilPath: 'assets/shinfani.jpeg',
                ),
              ),
              GestureDetector(
                onTap: () => Get.toNamed(Routes.CV, arguments: {'cvPath': 'assets/CV_yana.pdf', 'nama': 'Yana Indawati, SH.,M.Kn'}),
                child: const CardDataTim(
                  nama: 'Yana Indawati, SH.,M.Kn',
                  tanggal: 'Surabaya, 26 Januari 1979',
                  email: 'yana.ih@upnjatim.ac.id',
                  phone: '08123131130',
                  profilPath: 'assets/yana.jpg',
                ),
              ),
              GestureDetector(
                onTap: () => Get.toNamed(Routes.CV, arguments: {'cvPath': 'assets/CV_sascha.pdf', 'nama': 'Sascha Zahra Vernanda'}),
                child: const CardDataTim(
                  nama: 'Sascha Zahra Vernanda',
                  tanggal: '-',
                  email: 'saschaazahra@gmail.com',
                  phone: '0895403877208',
                  profilPath: 'assets/sascha.jpg',
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
