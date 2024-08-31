import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uud1/controllers/question_controller.dart';
import 'package:uud1/views/consts/color.dart';

class AnswerScreen extends StatelessWidget {
  AnswerScreen({super.key});


  final QuestionController questionController = Get.put(QuestionController());

  // Fetch the answer when the widget is built

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = Get.arguments as Map<String, dynamic>;

    final int questionId = args['questionId'] ?? '';
    final String question = args['question'] ?? '';
    questionController.getAnswer(questionId);

    return Scaffold(
      appBar: AppBar(title: const Text('Answer')),
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: Obx(() {
          // Use the Obx widget to listen to changes in the 'answer' observable
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pertanyaan : ",
                style: TextStyle(
                  fontSize: 16.h,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                question,
                style: TextStyle(fontSize: 16.h),
              ),
              SizedBox(height: 10.h,),
              Text(
                "Jawaban : ",
                style: TextStyle(
                    fontSize: 16.h,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 5.h,),
              Container(
                padding: EdgeInsets.all(10.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.h),
                  color: kPrimary
                ),
                child: Text(
                  questionController.answer.value,
                  style: TextStyle(
                    color: kLight,
                    fontSize: 16.h,
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
