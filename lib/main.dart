import 'dart:convert';

import 'package:flutter/material.dart';

import 'models/word.dart';
import 'api/api_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Holandés',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Holandés'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final apiController = APIController();
  var _word = Word(
    spanish: "jugar",
    dutch: "spelen",
    category: "Werkwoorden",
    level: 1,
  );

  void _refresh() {
    apiController.fetchWords().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        final words = list.map((model) => Word.fromJson(model)).toList();
        words.shuffle();
        if(words.length > 0)
          _word = words.first;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${_word.spanish}',
            ),
            Text(
              '${_word.dutch}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _refresh,
        tooltip: 'Refresh',
        child: Icon(Icons.refresh),
      ),
    );
  }
}
