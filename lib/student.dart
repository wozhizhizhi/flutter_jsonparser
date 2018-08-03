class Student {
  String id;
  String name;
  int score;

  Student({this.id, this.name, this.score});

  factory Student.fromJson(Map<String, dynamic> json) {
    return new Student(
      id: json['id'],
      name: json['name'],
      score: json['score'],
    );
  }
}
