import 'package:flutter/material.dart';

import '../models/word_pack.dart';

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
        title: Text("${widget.wordPack.category} (${widget.wordPack.level})"),
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Center(
        child: Text(""),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        tooltip: 'Refresh',
        child: Icon(Icons.refresh),
      ),
    );
  }
}
