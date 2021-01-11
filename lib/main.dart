import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex += 1;
    print(questionIndex);
  }

  var questions = [
    'What\'s your favorite color ?',
    'What\'s your favorite sport ?',
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
          Text("Question: " + questions[questionIndex]),
          RaisedButton(
            child: Text("Button 1"),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text("Button 2"),
            onPressed: () => print("Answer 2 chosen!"),
          ),
          RaisedButton(
            child: Text("Button 3"),
            onPressed: () {
              print("Answer 3 chosen!");
            },
          ),
        ],
      ),
    ));
  }
}
