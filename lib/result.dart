import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);
  
  String get resultPhrase {
    String resultText  = 'You did it!';
    if(resultScore >= 9){
      resultText = 'You are Awesome';
    }else if(resultScore > 6 && resultScore <= 8){
      resultText = 'You are Good';
    }else if(resultScore > 3 && resultScore <= 6){
      resultText = 'You are Average';
    }else if(resultScore <= 3){
      resultText = 'You are Bad';
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
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,),
                FlatButton(
                  child: Text('Restart Quiz',),
                  textColor: Colors.blue,
                  onPressed: resetHandler,
                )
            ],
          )
        );
  }
}