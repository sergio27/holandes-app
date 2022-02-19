import 'package:holandes_app/models/word.dart';

class WordPack {
  final category;
  final level;

  WordPack({required this.category, this.level});

  bool operator ==(Object other) {
    return (other is WordPack
        && other.category == category
        && other.level == level);
  }
}