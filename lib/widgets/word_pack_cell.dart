import 'package:flutter/material.dart';

import '../screens/test_screen.dart';

class WordPackCell extends StatelessWidget {
  final wordPack;

  WordPackCell({required this.wordPack});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("${wordPack.category}"),
            ),
            Text("${wordPack.level}"),
          ],
        ),
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return TestScreen(wordPack: wordPack,);
        }));
      },
    );
  }
}