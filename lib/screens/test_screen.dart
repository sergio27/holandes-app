import 'package:flutter/material.dart';

import '../widgets/test_card.dart';

class TestScreen extends StatefulWidget {
  final wordPack;

  TestScreen({required this.wordPack});

  @override
  TestScreenState createState() => TestScreenState();
}

class TestScreenState extends State<TestScreen> {
  bool checking = false;
  double progress = 0.0;
  int score = 0;

  int wordIndex = 0;
  var word;
  bool rightAnswer = false;

  final TextEditingController answerController = TextEditingController();


  @override
  void initState() {
    super.initState();

    word = widget.wordPack.words.first;
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
              Container(
                padding: EdgeInsets.all(30.0),
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.white,
                    value:progress,
                  )
              ),
              TestCard(
                word: word,
                answerController: answerController,
              ),
              if (checking) Icon(rightAnswer? Icons.done: Icons.close),
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if(!checking)
              checkAnswer();
            else
              showNextWord();

            checking = !checking;
          });
        },
        child: Icon(checking? Icons.navigate_next: Icons.grading),
      ),
    );
  }

  void checkAnswer() {
    var answer = answerController.text;
    if(answer == word.dutch) {
      rightAnswer = true;
      score += 1;
    }
    else {
      rightAnswer = false;
    }
  }

  void showNextWord() {
    answerController.text = "";

    if(wordIndex +1 >= widget.wordPack.words.length)
      wordIndex = 0;
    else
      wordIndex +=1;

    word = widget.wordPack.words[wordIndex];

    progress = wordIndex / widget.wordPack.words.length;
  }
}