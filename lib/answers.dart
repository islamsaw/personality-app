import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selected;
final String answertext;
  Answer(this.selected,this.answertext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            selected.call();
          },
          child: Text(answertext)),
    );
  }
}
