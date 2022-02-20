import 'package:flutter/material.dart';

import '../widgets/test_card.dart';

class TestScreen extends StatefulWidget {
  final wordPack;
  bool checking = false;

  var word;
  bool rightAnswer = false;

  final TextEditingController answerController = TextEditingController();

  TestScreen({required this.wordPack});

  @override
  TestScreenState createState() => TestScreenState();
}

class TestScreenState extends State<TestScreen> {

  @override
  void initState() {
    super.initState();

    widget.word = widget.wordPack.words.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.wordPack}"),
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Center(
          child: Column(
            children: [
              TestCard(
                word: widget.word,
                answerController: widget.answerController,
              ),
              if (widget.checking) Icon(widget.rightAnswer? Icons.done: Icons.close),
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if(!widget.checking) {
              var answer = widget.answerController.text;
              if(answer == widget.word.dutch) {
                widget.rightAnswer = true;
              }
              else {
                widget.rightAnswer = false;
              }

              widget.checking = true;
            }
            else {
              widget.answerController.text = "";

              widget.wordPack.words.shuffle();
              widget.word = widget.wordPack.words.first;
              widget.checking = false;
            }
          });
        },
        child: Icon(widget.checking? Icons.navigate_next: Icons.grading),
      ),
    );
  }
}
