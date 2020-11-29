import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartQuiz;

  Result(this.resultScore, this.restartQuiz);

  String get resultPhrase {
    var resultText = "You did it!";
    if (resultScore <= 8)
      resultText = "You are awesome and innocent!\nYour score was: " +
          resultScore.toString();
    else if (resultScore <= 12)
      resultText =
          "You are likeable...\nYour score was: " + resultScore.toString();
    else if (resultScore <= 16)
      resultText =
          "You are ... strange?!\nYour score was: " + resultScore.toString();
    else
      resultText = "You are so bad!\nYour score was: " + resultScore.toString();

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
              child: Text("Retry"),
              color: Colors.blue[900],
              textColor: Colors.white,
              onPressed: restartQuiz)
        ],
      ),
    );
  }
}
