import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uud1/routes/app_pages.dart';
import 'package:uud1/views/materi/components/card_materi.dart';

class MateriScreen extends StatelessWidget {
  const MateriScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Materi",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () => Get.toNamed(Routes.DETAIL, arguments: 'assets/uud45.pdf'),
                child: CardMateri(
                  title: 'UNDANG - UNDANG DASAR 1945',
                  subTitle: '',
                ),
              ),
              GestureDetector(
                onTap: () => Get.toNamed(Routes.DETAIL, arguments: 'assets/uu.pdf'),
                child: CardMateri(
                  title: 'UNDANG - UNDANG REPUBLIK INDONESIA NOMOR 30 TAHUN 1999',
                  subTitle: 'TENTANG ARBITRASE DAN ALTERNATIF PENYELESAIAN SENGKETA',
                ),
              ),
              GestureDetector(
                onTap: () => Get.toNamed(Routes.DETAIL, arguments: 'assets/perma.pdf'),
                child: CardMateri(
                  title: 'PERATURAN MAHKAMAH AGUNG REPUBLIK INDONESIA NOMOR 1 TAHUN 2016',
                  subTitle: 'TENTANG PROSEDUR MEDIASI DI PENGADILAN',
                ),
              ),
              GestureDetector(
                onTap: () => Get.toNamed(Routes.DETAIL, arguments: 'assets/perma_no3.pdf'),
                child: CardMateri(
                  title: 'PERATURAN MAHKAMAH AGUNG REPUBLIK INDONESIA NOMOR 3 TAHUN 2022',
                  subTitle: 'MEDIASI DI PENGADILAN SECARA ELEKTRONIK',
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
