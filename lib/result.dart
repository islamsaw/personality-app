import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function restart;
  Result(this.resultscore, this.restart);
  String get resultphrase {
    var resulttext;
    if (resultscore <= 6) {
      resulttext = "You are awesome and innocent";
    } else if (resultscore <= 10) {
      resulttext = "You are awesome";
    } else if (resultscore <= 14) {
      resulttext = "You are strange!";
    } else {
      resulttext = "You are bad!!";
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultphrase,
            style: TextStyle(fontSize: 30),
          ),
          TextButton(
              onPressed: () {
                restart.call();
              },
              child: Text(
                "Restart Quiz!",
                style: TextStyle(color: Colors.blueAccent, fontSize: 20),
              ))
        ],
      ),
    );
  }
}
