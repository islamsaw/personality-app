import 'package:flutter/material.dart';

import 'answers.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionindex;
  final Function answerquestion;

  Quiz(
      {required this.questions,
      required this.answerquestion,
      required this.questionindex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionindex]["thequestion"] as String,
        ),
       ...(questions[questionindex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerquestion(answer["score"]), answer["text"] as String);
        }).toList()
      ],
    );
  }
}
