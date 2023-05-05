import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import 'splashscreen.dart';

void main() {
  runApp(MaterialApp(home: SplashScreen()));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 2},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Snake', 'score': 2},
        {'text': 'Cat', 'score': 1},
      ],
    },
  ];

  var _questionIndex = 0; //To find The Questions Index for the completed quiz
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerquestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _questionIndex < _questions.length
          ? Scaffold(
              appBar: AppBar(
                title: Text('Quiz App'),
              ),
              body: Center(
                child: Quiz(
                  answerquestion: _answerquestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ),
              ),
            )
          : Scaffold(
              appBar: AppBar(
                title: Text('Result'),
              ),
              body: Result(_totalScore, _resetQuiz),
            ),
    );
  }
}
