import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//

class MyApp extends StatelessWidget {
  void answerQuestion() {
    questionIndex++;
  }

  var questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color',
      'What\'s your favorite animal'
    ];
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('First app!'),
          ),
          body: Column(
            children: [
              Text(questions[questionIndex]),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text('Answer 1'),
              ),
              ElevatedButton(
                onPressed: () => print('Answer 2 chosen'),
                child: Text('Answer 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  //
                  print('Answer 3 chosen');
                },
                child: Text('Answer 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
