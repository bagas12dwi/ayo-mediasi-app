import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uud1/controllers/question_controller.dart';
import 'package:uud1/routes/app_pages.dart';
import 'package:uud1/views/consts/color.dart';
import 'package:uud1/views/qna/components/card_qna.dart';
import 'package:uud1/views/qna/components/shimmer_qna.dart';

class QnaScreen extends StatelessWidget {
  QnaScreen({super.key});

  final QuestionController questionController = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQ'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: Obx(() {
          final isLoading = questionController.isLoading.value;
          final questionList = questionController.questionList;

          if (isLoading) {
            return ListView.builder(
              itemCount: 55, // Number of shimmer items to show
              itemBuilder: (context, index) {
                return shimmerQnaCard(); // Display shimmer effect
              },
            );
          } else {
            return RefreshIndicator(
              onRefresh: () async {
                await questionController.getQna();
              },
              child: ListView.builder(
                itemCount: questionList.length,
                itemBuilder: (context, index) {
                  final question = questionList[index];
                  return CardQna(
                    question: '${question.id}. ${question.question}',
                    onTap: () => Get.toNamed(Routes.ANSWER, arguments: {'questionId': question.id, 'question': question.question}),
                  );
                },
              ),
            );
          }
        }),
      ),
    );
  }
}
