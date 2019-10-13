import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
      setState(() {
        if(_questionIndex<2){
        _questionIndex += 1;
        }
    });
    
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      { 
        'questionText': 'What is the color of Sun?',
        'answer': ['Red', 'Green', 'Yellow', 'Orange']
      },
      { 
        'questionText': 'What is the hardest part of human body?',
        'answer': ['Toungue', 'Head', 'Elbow', 'Hand']
      },
      { 
        'questionText': 'What is the animal which flies?',
        'answer': ['Rabbit', 'Duck', 'Tiger', 'Lion']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
