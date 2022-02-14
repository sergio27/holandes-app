import 'package:flutter/material.dart';

class WordCard extends StatelessWidget {
  WordCard({required this.word});

  final word;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                word != null? '${word!.category}' : "",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Text(
              word != null? '${word!.spanish}' : "",
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              word != null? '${word!.dutch}' : "",
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