import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
class Quiz extends StatelessWidget {
  final List<Map<String , Object>> questions;
  final Function selectQuestionsAnswers;
  final int selectQuestion;

  Quiz({
    required this.questions,
    required this.selectQuestionsAnswers,
    required this.selectQuestion
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 20.0,),
        Question(
          questions[selectQuestion]['questionText'] as String,
        ),
        SizedBox(height: 15.0,),
        ...(questions[selectQuestion]['answers'] as List<Map<String , Object>>).map((answer){
          return Answers(puttingHandler: () =>  selectQuestionsAnswers(answer['score']), answerText: answer['text'],);
        }).toList(),
        SizedBox(height: 20,),
//              Answers(_selectQuestionsAnswers)
      ],
    );
  }
}
