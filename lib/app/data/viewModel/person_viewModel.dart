import 'package:flutter_mvvm_app/app/data/model/person.dart';

class PersonViewModel {
  PersonViewModel({required this.person});

  final Person person;

  String get name => person.name;
  int get age => person.age;
}
