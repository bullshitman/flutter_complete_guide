import 'question.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
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
              Question(questionText: _questions[_questionIndex]),
              ElevatedButton(
                onPressed: _answerQuestion,
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
