import 'package:Simple_Quiz_App/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';

// void main()
// {
//   runApp(MyApp())
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // Variables
  int _questionIndex = 0;
  int _scoreTotal = 0;
  // Functions
  void _answerQuestion(int score) {
    _scoreTotal += score;
    setState(() {
      _questionIndex++;
    });
    print("Answer chosen!");
  }

  void _restartQuiz() {
    setState(() {
      _scoreTotal = 0;
      _questionIndex = 0;
    });
  }

  // Override built Method
  @override
  Widget build(BuildContext context) {
    // Questions and answers
    var _questions = [
      {
        "questionText": "What\'s your favorite color?",
        "answers": [
          {"text": "Black", "score": 10},
          {"text": "Red", "score": 5},
          {"text": "Green", "score": 3},
          {"text": "White", "score": 1},
        ]
      },
      {
        "questionText": "What\'s your favorite animal?",
        "answers": [
          {"text": "Cat", "score": 1},
          {"text": "Dog", "score": 3},
          {"text": "Eagle", "score": 5},
          {"text": "Snake", "score": 10},
        ]
      },
      {
        "questionText": "Who\'s your favorite instructor?",
        "answers": [
          {"text": "Bob", "score": 10},
          {"text": "Billy", "score": 5},
          {"text": "Willy", "score": 3},
          {"text": "Nilly", "score": 1},
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple Quiz App"),
          centerTitle: true,
        ),
        // If statements in widgets in the form of <(condition) ? true : false>
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_scoreTotal, _restartQuiz),
      ),
    );
  }
}
