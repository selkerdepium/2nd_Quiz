import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Color.fromARGB(
                255, 255, 255, 255), // change background color of button
            backgroundColor:
                Color.fromARGB(255, 0, 0, 0), // change text color of button
          ),
          onPressed: selectHandler,
          child: Text(answerText)),
    );
  }
}
