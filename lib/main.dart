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
  var _finalScore = 0;

  void _answerQuestion(int score) {
    _finalScore += score;

    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
    _questionIndex = 0;
    _finalScore = 0;
    });
  }

  static const _questions = [
    {
      'questionText': 'What\'s your favorite color ?',
      'answerText': [
        {'text': 'Red', 'score': 2},
        {'text': 'Blue', 'score': 3},
        {'text': 'Green', 'score': 3},
        {'text': 'Yellow', 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s your favorite sport ?',
      'answerText': [
        {'text': 'Skiing', 'score': 2},
        {'text': 'Baddy', 'score': 3},
        {'text': 'Cricket', 'score': 3},
      ]
    },
    {
      'questionText': 'What\'s your favorite food ?',
      'answerText': [
        {'text': 'Ham', 'score': 2},
        {'text': 'Cheese', 'score': 3},
        {'text': 'Burger', 'score': 3},
        {'text': 'Pancakes', 'score': 10}
      ]
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
          : Result(_finalScore, _resetQuiz),
    ));
  }
}
