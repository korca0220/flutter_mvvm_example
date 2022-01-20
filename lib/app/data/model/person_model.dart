class PersonModel {
  PersonModel({
    this.name = "",
    this.age = 0,
  });

  final String name;
  final int age;

  factory PersonModel.fromJson(dynamic json) {
    return PersonModel(
      name: json['name'] ?? "",
      age: json['age'] ?? 0,
    );
  }
}
