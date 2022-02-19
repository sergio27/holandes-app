import '../models/word.dart';
import '../models/word_pack.dart';

class GameController {

  List<String> getCategories(var words) {
    List<String> categories = [];

    words.forEach((Word word) {

      if(!categories.contains(word.category))
        categories.add(word.category);
    });
    categories.sort();
    return categories;
  }

  List<WordPack> getWordPacks(var words) {
    List<WordPack> wordPacks = [];

    words.forEach((Word word) {
      WordPack pack = WordPack(category: word.category, level:word.level);
      if(!wordPacks.contains(pack))
        wordPacks.add(pack);
    });

    wordPacks.sort( (WordPack a, WordPack b) {
      if(a.category == b.category) {
        return a.level.compareTo(b.level);
      }
      else {
        return a.category.compareTo(b.category);
      }
    });

    return wordPacks;
  }
}