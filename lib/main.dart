import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

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
  // Functions
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print("Answer chosen!");
  }

  // Override built Method
  @override
  Widget build(BuildContext context) {
    // Questions and answers
    var questions = [
      {
        "questionText": "What\'s your favorite color?",
        "answers": ["Black", "Red", "Green", "White"]
      },
      {
        "questionText": "What\'s your favorite animal?",
        "answers": ["Cat", "Dog", "Eagle", "Snake"]
      },
      {
        "questionText": "Who\'s your favorite instructor?",
        "answers": ["Max", "Bob", "Billy", "Lily"]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]["questionText"]),
            // The ... operator takes a list and adds them as a widget to the
            // current list am in.
            ...(questions[_questionIndex]["answers"] as List<String>)
                .map((answer) {
              return Answer(answer, _answerQuestion);
            }).toList()
          ],
        ),
      ),
    );
  }
}
