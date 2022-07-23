import 'package:awesome_app/answer.dart';
import 'package:flutter/material.dart';
class Question  extends StatelessWidget {
 String questionText;
  Question(this.questionText);

//  Question(this.questionText, Answer answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(questionText,style: TextStyle(
        fontSize: 22.0,
        letterSpacing: 1.0,),
      textAlign: TextAlign.center,
      ),
    );
  }
}
