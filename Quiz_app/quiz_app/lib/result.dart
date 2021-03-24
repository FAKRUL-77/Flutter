import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function _resetResult;
  final int _totalScore;

  Result(this._resetResult, this._totalScore);

  String get getResultText {
    String result;
    if (_totalScore < 15) {
      result = 'You are innocent';
    } else if (_totalScore < 25) {
      result = 'You are good';
    } else {
      result = 'You are average';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(
            _totalScore.toString(),
            style: TextStyle(
              fontSize: 100,
              color: Colors.blue.shade700,
              shadows: [
                Shadow(
                  color: Colors.blue.shade900.withOpacity(1.0),
                  offset: Offset(5, 10),
                  blurRadius: 5,
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            getResultText,
            style: TextStyle(
                color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        RaisedButton(
          child: Text('Restart Quiz !!'),
          onPressed: _resetResult,
        )
      ],
    );
  }
}
