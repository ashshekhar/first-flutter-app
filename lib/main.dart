import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer chosen!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: Column(
        children: [
          Text("Question: "),
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
