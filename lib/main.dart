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
  var _totalScore = 0;
  var _questions = [
    {
      'questionText':
          'Which is memory management scheme by which computer stores and retrieve data from second storage for use in main memory?',
      'answer': [
        {'text': 'Jumper', 'score': 0},
        {'text': 'Baseband', 'score': 0},
        {'text': 'Latency', 'score': 0},
        {'text': 'Paging', 'score': 1}
      ]
    },
    {
      'questionText': 'An identity theft scheme in computer is known as?',
      'answer': [
        {'text': 'Vishing', 'score': 0},
        {'text': 'Fhishing', 'score': 0},
        {'text': 'Phishing', 'score': 1},
        {'text': 'Jacking', 'score': 0}
      ]
    },
    {
      'questionText':
          'Which out of the following is a Dos based operating system?',
      'answer': [
        {'text': 'Commodore DOS', 'score': 0},
        {'text': 'TRSDOS', 'score': 0},
        {'text': 'ANDOS', 'score': 0},
        {'text': 'All of the above', 'score': 1}
      ]
    },
    {
      'questionText':
          'What is used out of the following to change windows start up option?',
      'answer': [
        {'text': 'MScongfig', 'score': 0},
        {'text': 'Ipconfig', 'score': 0},
        {'text': 'Powercfg', 'score': 0},
        {'text': 'Pathping', 'score': 1}
      ]
    },
    {
      'questionText':
          'Which command will show all the connections to your computer?',
      'answer': [
        {'text': 'Recimg', 'score': 0},
        {'text': 'Telnet', 'score': 0},
        {'text': 'Netstat', 'score': 1},
        {'text': 'Cipher', 'score': 0}
      ]
    },
    {
      'questionText':
          'Which unit is used for measuring the speed of processor?',
      'answer': [
        {'text': 'MPIS', 'score': 0},
        {'text': 'MISP', 'score': 0},
        {'text': 'MIPS', 'score': 1},
        {'text': 'MSIP', 'score': 0}
      ]
    },
    {
      'questionText': 'What is the full form of ASCII?',
      'answer': [
        {
          'text': 'American Standard Code for Information Interchange',
          'score': 1
        },
        {
          'text': 'American Standard Computer for Information Interchange',
          'score': 0
        },
        {
          'text': 'American Standard Code for Internet Interchange', 
          'score': 0},
        {
          'text': 'American Standard Computer for Internet Interchange',
          'score': 1
        }
      ]
    },
    {
      'questionText': 'Defragmenters are used for what?',
      'answer': [
        {
          'text':
              'It is used to calculate sum used to check the integrity of a file.',
          'score': 0
        },
        {
          'text': 'It is used to arrange data in order to read faster',
          'score': 1
        },
        {
          'text':
              'To copy file faster from one folder to other on same computer',
          'score': 0
        },
        {
          'text': 'Bits are transferred from one location to another',
          'score': 0
        }
      ]
    },
    {
      'questionText': 'What does FTP stand for?',
      'answer': [
        {'text': 'File Transfer Protocol', 'score': 1},
        {'text': 'Floating task Protocol', 'score': 0},
        {'text': 'Frequency Transistor Protocol', 'score': 0},
        {'text': 'Frontside Transistor Protocol', 'score': 0}
      ]
    },
    {
      'questionText':
          'Out of the following what kind of hackers are considered as good hackers?',
      'answer': [
        {'text': 'Black Hat Hackers', 'score': 0},
        {'text': 'Gray Hat Hackers', 'score': 0},
        {'text': 'White Hat Hackers', 'score': 1},
        {'text': 'Red Hat Hackers', 'score': 0}
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz(){
    setState(() {
     _questionIndex = 0;
     _totalScore = 0; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
