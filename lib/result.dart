import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get finalResult {
    if (totalScore < 12) {
      return "You're average!";
    } else if (totalScore > 12 && totalScore < 20) {
      return "You're cool!";
    } else {
      return "You're awesome!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            finalResult,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(child: Text("Restart Quiz!"), onPressed: resetQuiz)
        ],
      ),
    );
  }
}
