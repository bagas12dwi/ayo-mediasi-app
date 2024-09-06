import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uud1/controllers/panduan_controller.dart';
import 'package:uud1/views/consts/color.dart';

class PanduanScreen extends StatelessWidget {
  PanduanScreen({super.key});
  final PanduanController panduanController = Get.put(PanduanController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Panduan Penggunaan Aplikasi'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: panduanController.pageController.value,
              children: [
                buildPage(
                  context,
                  'Tentang Aplikasi',
                  'Ayo Mediasi adalah aplikasi yang memudahkan individu, mediator, dan profesional hukum untuk memahami dan menerapkan undang-undang mediasi. Dengan akses cepat ke peraturan lengkap, penjelasan rinci, dan sumber daya tambahan, aplikasi ini mendukung praktik mediasi yang efektif dan sesuai hukum.',
                  'logo.png',
                  true,
                ),
                buildPage(
                  context,
                  'Step 1',
                  'Berikut merupakan tampilan menu utama dari aplikasi, tersedia menu materi, konsultasi, data tim, panduan, mitra dan FAQ',
                  '1.png',
                  false,
                ),
                buildPage(
                  context,
                  'Step 2',
                  'Ketika masuk menu materi akan terdapat tampilan seperti ini. Pada halaman ini berisi materi perundang - undangan tentang mediasi',
                  '2.png',
                  false,
                ),
                buildPage(
                  context,
                  'Step 3',
                  'Setelah memilih materi undang - undang maka akan terdapat tampilan seperti ini. Disini anda bisa mencari kata - kata sesuai dengan gambar petunjuk',
                  '3.png',
                  false,
                ),
                buildPage(
                  context,
                  'Step 4',
                  'Berikut merupakan tampilan menu konsultasi. Dihalaman ini anda bisa mengirimkan email untuk konsultasi dengan tim',
                  '4.png',
                  false,
                ),
                buildPage(
                  context,
                  'Step 5',
                  'Ini merupakan tampilan menu data tim. berikut merupakan data tim Ayo Mediasi',
                  '5.png',
                  false,
                ),
                buildPage(
                  context,
                  'Step 6',
                  "Menu FAQ ini menyajikan pertanyaan dan jawaban yang sering diajukan, membantu Anda menemukan informasi dengan cepat.",
                  '6.png',
                  false,
                ),
                buildLastPage(
                  context,
                  'Step 7',
                  'Berikut merupakan tampilan jawaban dari pertanyaan yang anda pilih',
                  '7.png',
                ),
              ],
            ),
          ),
          Obx(() => buildIndicator(panduanController.currentPage.value)),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  Widget buildLastPage(BuildContext context, String title, String description, String imgPath) {
    return Container(
      padding: EdgeInsets.all(16.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .5,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/panduan/$imgPath'))
            ),
          ),
          SizedBox(height: 30.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 24.h,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.h,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              // Action when the button is pressed, e.g., navigate to another page
              Get.back(); // Example: Navigate back to the previous screen
            },
            child: const Text('Get Started'),
          ),
        ],
      ),
    );
  }

  Widget buildPage(BuildContext context, String title, String description, String imgPath, bool isFirstPage) {
    return Container(
      padding: EdgeInsets.all(16.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: isFirstPage ? MediaQuery.of(context).size.height * .3 : MediaQuery.of(context).size.height * .5,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/panduan/$imgPath'))
            ),
          ),
          // Image.asset('assets/panduan/$imgPath'),
          SizedBox(height: 30.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 24.h,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIndicator(int currentIndex) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(8, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 4.h),
          width: currentIndex == index ? 12.0 : 8.0,
          height: currentIndex == index ? 12.0 : 8.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentIndex == index ? kPrimary : kThird,
          ),
        );
      }),
    );
  }
}
