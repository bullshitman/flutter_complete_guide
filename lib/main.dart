import 'question.dart';
import 'package:flutter/material.dart';
import 'answer.dart';

void main() => runApp(MyApp());

//

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Green', 'Red', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Lion', 'Wolf', 'MenBearPig'],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': ['Max', 'Angela', 'Nobody', 'Universe'],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('First app!'),
          ),
          body: Column(
            children: [
              Question(
                questionText: _questions[_questionIndex]['questionText'],
              ),
              ...(_questions[_questionIndex]['answers'] as List<String>)
                  .map(
                    (answer) => Answer(
                      selectAnswer: _answerQuestion,
                      answerText: answer,
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
