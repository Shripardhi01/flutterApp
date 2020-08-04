import 'package:App1/answer.dart';
import 'package:App1/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite colour?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite teacher?',
      'answers': ['shri', 'shri', 'shri', 'no else'],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    // var aBool = true, false
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // print('answer 1 chosen');
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more question!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // questions = [];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
