import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import './result.dart';

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
  var _questions = [
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

  void _answerQuestion() {
      setState(() {
        if(_questionIndex < _questions.length){
        _questionIndex += 1;
        }
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length? 
        Quiz(
          answerQuestion: _answerQuestion, 
          questionIndex: _questionIndex,
          questions: _questions,
        ) : Result(),
      ),
    );
  }
}
