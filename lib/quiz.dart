import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {

  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final questionIndex;
  Quiz({this.answerQuestion, this.questions, this.questionIndex});
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
                selectAnswer: _answerQuestion,
                answerText: answer,
              ),
            )
            .toList(),
      ],
    );
  }
}
