import 'package:flutter/material.dart';

class WordCard extends StatelessWidget {
  final word;

  WordCard({required this.word});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              word.spanish,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              word.dutch,
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
        padding: EdgeInsets.all(25.0),
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}