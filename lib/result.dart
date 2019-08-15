import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore,this.resetHandler);
  String get resultPhrase {
    var resultText ='';
    if(resultScore ==100) {
      resultText ='You have done the Quiz - Ma\'Shaa Allaah - Awesome : 10 out of 10 Correct Answers';
    } else if(resultScore ==90) {
      resultText ='You have done the Quiz - Ma\'Shaa Allaah - Excellent : 9 out of 10 Correct Answers, Repeat Again'; 
    } else if(resultScore ==80) {
      resultText ='You have done the Quiz - Ma\'Shaa Allaah - Excellent : 8 out of 10 Correct Answers, Repeat Again';
    } else if(resultScore ==70) {
      resultText ='You have done the Quiz - In\'Shaa Allaah - Repeat Again : 7 out of 10 Correct Answers';
    } else if(resultScore ==60) {
      resultText ='You have done the Quiz - In\'Shaa Allaah - Repeat Again : 6 out of 10 Correct Answers';
    } else if(resultScore ==50) {
      resultText ='You have done the Quiz - In\'Shaa Allaah - Repeat Again : 5 out of 10 Correct Answers';
    } else if(resultScore ==40) {
      resultText ='You have done the Quiz - In\'Shaa Allaah - Repeat Again : 4 out of 10 Correct Answers';
    } else if(resultScore ==30) {
      resultText ='You have done the Quiz - In\'Shaa Allaah - Repeat Again : 3 out of 10 Correct Answers';
    } else if(resultScore ==20) {
      resultText ='You have done the Quiz - In\'Shaa Allaah - Repeat Again : 2 out of 10 Correct Answers';
    } else if(resultScore ==10) {
      resultText ='You have done the Quiz - In\'Shaa Allaah - Repeat Again : 1 out of 10 Correct Answers';
    } else if(resultScore ==0) {
      resultText ='You have done the Quiz - In\'Shaa Allaah - Repeat Again : 0 out of 10 Correct Answers';
    }

    
    else if(resultScore ==20) {
      resultText ='You have done the Quiz - Good : 50% Correct Answers';
    } else if(resultScore ==10) {
      resultText ='You have done the Quiz - Not Bad : 25% Correct Answers';
    } else if(resultScore ==0) {
      resultText ='You have done the Quiz - Very Bad : No Correct Answers';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style:TextStyle(
            fontSize:36,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.blue, 
            onPressed:resetHandler)
        ]
      ),
    );
  }
}