import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
//  final Function? puttingHandler;
  final VoidCallback puttingHandler; // final modifier is work on run-time execution
  final answerText;
  Answers(
     {
       required this.puttingHandler,
       required this.answerText}
      );
//  Answer(void Function() selectQuestionsAnswers, {this.selectHandler});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: puttingHandler,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(100.0, 30.0),
        ),
        // we pass onpress as to point "function name" without parenthesis
      ),
    );
  }
}
