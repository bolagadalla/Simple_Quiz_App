import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answerText;
  final Function _selectHandler;
  Answer(this._answerText, this._selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: RaisedButton(
        color: Colors.blue[900],
        textColor: Colors.white,
        child: Text(_answerText),
        onPressed: _selectHandler,
      ),
    );
  }
}
