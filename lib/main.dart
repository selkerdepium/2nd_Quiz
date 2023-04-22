import 'package:flutter/material.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': ['Lion', 'Cat', 'Dog', 'Snake'],
    },
  ];

  var _questionIndex = 0; //To find The Questions Index for the completed quiz

  void _answerquestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);

    if (_questionIndex < _questions.length) //if questions ran out
    {
      print("We have more questions");
    } else {
      print("No More Questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerquestion: _answerquestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : const Center(
              child: Text("You Did it!"),
            ),
    ));
  }
}
