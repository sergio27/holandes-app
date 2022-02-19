import 'package:flutter/material.dart';
import 'package:holandes_app/widgets/category_cell.dart';

import '../models/word_pack.dart';
import '../widgets/word_pack_cell.dart';

class WordPackList extends StatelessWidget {
  final wordPacks;

  WordPackList({required this.wordPacks});

  @override
  Widget build(BuildContext context) {
    var entries = getWordPackWidgets(wordPacks);

    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Center(child: entries[index]),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  List<Container> getWordPackWidgets(List<WordPack> wordPacks) {
    List<Container> list = [];
    for(var i = 0; i < wordPacks.length; i++){
      list.add(new Container(
        child: WordPackCell(wordPack: wordPacks[i]),
      ),);
    }
    return list;
  }
}