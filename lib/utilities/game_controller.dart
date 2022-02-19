import '../models/word.dart';

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
}