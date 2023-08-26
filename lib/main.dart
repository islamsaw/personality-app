import 'package:flutter/material.dart';
import 'package:personality_app/answers.dart';
import 'package:personality_app/questions.dart';
import 'package:personality_app/quiz.dart';
import 'package:personality_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionindex = 0;
  final _questions = const [
    {
      "thequestion": "what's your favorite color?",
      "answers": [
        {"text": "Blue", "score": 2},
        {"text":"Black", "score": 3},
        {"text":"Red", "score": 4},
        {"text":"White", "score": 5}
      ],
    },
    {
      "thequestion": "what's your favorite animal?",
      "answers": [
        {"text":"Falcon", "score": 2},
        {"text":"Cat", "score": 3},
        {"text":"Donkey", "score": 4},
        {"text":"Lion", "score": 5}
      ],
    },
    {
      "thequestion": "who's your favorite instructor?",
      "answers": [
        {"text":"Max", "score": 2},
        {"text":"Youssef", "score": 3},
        {"text":"Ibrahim", "score": 4},
        {"text":"Islam", "score": 5}
      ],
    }
  ];
  var _totalscore=0;
  void _answerquestion(int score) {
    _totalscore += score;
    setState(() {
      _questionindex = _questionindex + 1;
    });
  }
  void _resetquiz(){
    setState(() {
      _totalscore=0;
      _questionindex=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.lightBlue),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Personality App"),
            centerTitle: true,
          ),
          body: _questionindex < _questions.length
              ? Quiz(
                  answerquestion: _answerquestion,
                  questionindex: _questionindex,
                  questions: _questions,
                )
              : Result(_totalscore,_resetquiz),
        ));
  }
}
