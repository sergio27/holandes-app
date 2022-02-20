import 'package:holandes_app/models/word.dart';

import '../models/word.dart';

class WordPack {
  final category;
  final level;

  var words;

  WordPack({required this.category, required this.level, this.words = const []});

  bool operator ==(Object other) {
    return (other is WordPack
        && other.category == category
        && other.level == level);
  }

  @override
  String toString() {
    return "${this.category} (${this.level})";
  }
}