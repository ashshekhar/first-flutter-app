import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerStateHandler;

  Answer(this.answerStateHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text("Button 1"),
        onPressed: answerStateHandler,
      ),
    );
  }
}
