import 'package:flutter/material.dart';

import '../widgets/test_card.dart';

class ResultsScreen extends StatefulWidget {
  final resultMessage;

  ResultsScreen({required this.resultMessage});

  @override
  ResultsScreenState createState() => ResultsScreenState();
}

class ResultsScreenState extends State<ResultsScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultados"),
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Center(
        child: Column(
          children: [
            Text(widget.resultMessage),
          ],
        ),
      ),
    );
  }
}