class Person {
  Person({
    this.name = "",
    this.age = 0,
  });

  final String name;
  final int age;

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'],
      age: json['age'],
    );
  }
}
