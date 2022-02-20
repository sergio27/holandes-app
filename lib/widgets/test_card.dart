import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class TestCard extends StatelessWidget {
  final word;
  final TextEditingController answerController;

  TestCard({required this.word, required this.answerController});

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
            TextField(
              controller: answerController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
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