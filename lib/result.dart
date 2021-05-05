import 'dart:ffi';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;
  Result(this.score, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You did it';
    if (score <= 10) {
      resultText = 'You are awesome';
    } else if (score <= 20) {
      resultText = 'So great';
    } else if (score <= 30) {
      resultText = 'You are strange...';
    } else {
      resultText = 'Nobody care about you';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            onPressed: resetQuiz,
            child: Text('Restart'),
          ),
        ],
      ),
    );
  }
}
