import 'person_sample.dart';

class Person extends PersonSample {
  String? id;
  String? name;
  int? _age;

  Person({required this.id, required this.name});

  void setAge({int? age}) {
    this._age = age;
  }

  int getAge() => this._age!;

  @override
  void display() {}

  @override
  void input() {}
}
