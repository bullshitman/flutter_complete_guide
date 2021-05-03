import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function selectAnswer;
  Answer(this.selectAnswer, {this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        onPressed: selectAnswer,
        child: Text(
          answerText,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
