import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:holandes_app/widgets/category_list.dart';

import 'api/api_controller.dart';
import 'models/word.dart';
import 'screens/word_pack_screen.dart';
import 'utilities/game_controller.dart';
import 'widgets/word_pack_list.dart';

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
  final gameController = GameController();

  List<Word> _words = [];

  @override
  void initState() {
    super.initState();

    loadWords();
  }

  void loadWords() {
    if(_words.isEmpty) {
      apiController.fetchWords().then((response) {
        setState(() {
          Iterable list = json.decode(utf8.decode(response.bodyBytes));
          _words = list.map((model) => Word.fromJson(model)).toList();
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Center(
        child: WordPackList(
            wordPacks: gameController.getWordPacks(_words)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Refresh',
        child: Icon(Icons.refresh),
      ),
    );
  }
}
