import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  static const _questions = [
    {
      'questionText': 'What\'s your favorite color ?',
      'answerText': ['Red', 'Blue', 'Green', 'Yellow']
    },
    {
      'questionText': 'What\'s your favorite sport ?',
      'answerText': ['Skiing', 'Baddy', 'Cricket']
    },
    {
      'questionText': 'What\'s your favorite food ?',
      'answerText': ['Cheese', 'Burger', 'Ham', 'Pasta']
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              questions: _questions,
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex)
          : Result(),
    ));
  }
}
