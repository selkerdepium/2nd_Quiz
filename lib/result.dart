import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);
  Color resultColor;

  String get resultPhrase {
    String resultText;
    if (resultScore >= 20) {
      resultText = 'Great! Your Score is: $resultScore';
      resultColor = Colors.green;
    } else if (resultScore >= 10) {
      resultText = "Awesome Dude! Your Score is: $resultScore";
      resultColor = Colors.green;
    } else {
      resultText = "Huh Try Again Next Time! Your Score is: $resultScore";
      resultColor = Colors.red;
    }
    return resultText ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: resultColor,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Try Again'),
              onPressed: () {
                resetQuiz();
              },
            ),
          ],
        ),
      ),
    );
  }
}
