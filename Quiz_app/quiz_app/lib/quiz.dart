import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> _questions;
  final Function _answerQuestion;
  final _questionIndex;
  Quiz(this._questions, this._answerQuestion, this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_questions[_questionIndex]['questionText']),
        ...(_questions[_questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => _answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
