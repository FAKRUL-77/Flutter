import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _answerQuestion;
  final _answerText;

  Answer(this._answerQuestion, this._answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: double.infinity,
      child: RaisedButton(
        child: Text(_answerText),
        color: Colors.greenAccent,
        onPressed: _answerQuestion,
      ),
    );
  }
}
