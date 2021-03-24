import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your facorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 4},
        {'text': 'Snake', 'score': 12},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 10},
      ]
    },
    {
      'questionText': 'What\'s your facorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Fakrul', 'score': 5},
        {'text': 'Milon', 'score': 15},
        {'text': 'Nazmul', 'score': 10},
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    print(_totalScore);
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetResult() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(_questions, _answerQuestion, _questionIndex)
              : Result(
                  _resetResult,
                  _totalScore,
                )),
    );
  }
}
