import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback? resetHandler;
  Result(this.resultScore,this.resetHandler);
  String get hashPappies {
      String rsltText;
      if(resultScore <= 5){
        rsltText = 'great work dude!';
      }else if(resultScore <= 8){
        rsltText = 'awesome,good work dude!';
      }else if(resultScore <= 12){
        rsltText = 'overall good dude!';
      }else if(resultScore <= 15) {
        rsltText = 'just average dude!';
      }else{
        rsltText = 'bad dude!';
      }
      return rsltText;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Center(
          child: Text(
            hashPappies,
            style: TextStyle(
              fontSize: 25.0,
              letterSpacing: 1.0,
              color: Colors.red,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed,
              fontStyle: FontStyle.italic,
            ),
            overflow: TextOverflow.ellipsis,
            textDirection: TextDirection.ltr,
          ),
        ),
        FlatButton(onPressed: resetHandler, child: Text('resetQuiz'),textColor: Colors.blue,)
      ],
    );
  }
}
