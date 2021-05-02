import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final questionIndex;
  Quiz(
      {@required this.answerQuestion,
      @required this.questions,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map(
              (answer) => Answer(
                selectAnswer: answerQuestion,
                answerText: answer,
              ),
            )
            .toList(),
      ],
    );
  }
}
