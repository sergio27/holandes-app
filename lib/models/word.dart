
class Word {
  String spanish;
  String dutch;
  String category;
  int level;

  Word({required this.spanish, required this.dutch,
    required this.category, required this.level});

  factory Word.fromJson(Map<String, dynamic> json) {
    return Word(
      spanish: json['spanish'],
      dutch: json['dutch'],
      category: json['category']['name'],
      level: json['level'],
    );
  }
}