import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String answerText;
  Question(this.answerText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Text(
            answerText,
            style: TextStyle(
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
