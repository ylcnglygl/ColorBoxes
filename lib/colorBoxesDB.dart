class ColorBoxesDB {
  int score = 0;

  ColorBoxesDB(this.score);

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['score'] = score;
    return map;
  }

  ColorBoxesDB.fromMap(Map<String, dynamic> map) {
    this.score = map['score'];
  }

  String toString() {
    return '$score';
  }
}
