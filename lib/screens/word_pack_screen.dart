import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:holandes_app/widgets/category_list.dart';

import '../api/api_controller.dart';
import '../models/word.dart';
import '../utilities/game_controller.dart';
import '../widgets/word_pack_list.dart';

class WordPackScreen extends StatefulWidget {
  @override
  WordPackScreenState createState() => WordPackScreenState();
}

class WordPackScreenState extends State<WordPackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category"),
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
