import 'package:uud1/views/panduan/panduan_screen.dart';

class Question {
  int id;
  String question;

  Question({
    required this.id,
    required this.question,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
        id: (json['id']??0) as int,
        question: (json['question']??'') as String,
    );
  }
}
