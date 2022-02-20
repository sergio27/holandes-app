import 'package:flutter/material.dart';

import '../models/word.dart';
import '../widgets/word_card.dart';

class WordPackScreen extends StatefulWidget {
  final wordPack;

  WordPackScreen({required this.wordPack});

  @override
  WordPackScreenState createState() => WordPackScreenState();
}

class WordPackScreenState extends State<WordPackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.wordPack}"),
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Center(
        child: WordCard(word: widget.wordPack.words.first),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            widget.wordPack.words.shuffle();
          });
        },
        tooltip: 'Refresh',
        child: Icon(Icons.refresh),
      ),
    );
  }
}
