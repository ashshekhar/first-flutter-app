import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
    print(_questionIndex);
  }

  var questions = [
    {
      'questionText': 'What\'s your favorite color ?',
      'answerText': ['Red', 'Blue', 'Green', 'Yellow']
    },
    {
      'questionText': 'What\'s your favorite sport ?',
      'answerText': ['Skiing', 'Baddy', 'Cricket', 'Soccer']
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
      body: Column(
        children: [
          Question(
            "Question: " + questions[_questionIndex]['questionText'],
          ),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ],
      ),
    ));
  }
}
