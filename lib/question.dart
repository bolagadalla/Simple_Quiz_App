import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;
  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        // fills the whole space with the widget
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          _questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
