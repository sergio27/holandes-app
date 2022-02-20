import 'package:flutter/material.dart';

import '../widgets/test_card.dart';

class TestScreen extends StatefulWidget {
  final wordPack;

  TestScreen({required this.wordPack});

  @override
  TestScreenState createState() => TestScreenState();
}

class TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.wordPack}"),
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Center(
        child: TestCard(word: widget.wordPack.words.first),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            widget.wordPack.words.shuffle();
          });
        },
        tooltip: 'Grade',
        child: Icon(Icons.grading),
      ),
    );
  }
}
