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
                  'Step 1',
                  'Description of step 1',
                  Icons.accessibility,
                ),
                buildPage(
                  context,
                  'Step 2',
                  'Description of step 2',
                  Icons.account_balance,
                ),
                buildPage(
                  context,
                  'Step 3',
                  'Description of step 3',
                  Icons.alarm,
                ),
                buildLastPage(
                  context,
                  'Step 4',
                  'Description of step 4',
                  Icons.assessment,
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

  Widget buildLastPage(BuildContext context, String title, String description, IconData icon) {
    return Container(
      padding: EdgeInsets.all(16.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 100,
            color: Theme.of(context).primaryColor,
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
          SizedBox(height: 30.h),
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

  Widget buildPage(BuildContext context, String title, String description, IconData icon) {
    return Container(
      padding: EdgeInsets.all(16.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 100,
            color: Theme.of(context).primaryColor,
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
        ],
      ),
    );
  }

  Widget buildIndicator(int currentIndex) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
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
