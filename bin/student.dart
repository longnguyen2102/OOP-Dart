import 'person.dart';

class Student extends Person {
  int? _mark;
  String? _grade;

  Student({id, name}) : super(id: id, name: name);

  void setMark({int? mark}) {
    this._mark = mark;
  }

  void setGrade({String? grade}) {
    this._grade = grade;
  }

  int getMark() => this._mark!;
  String getGrade() => this._grade!;

  @override
  void input() {
    super.input();
  }

  @override
  void display() {
    int age = super.getAge();
    print("Học sinh $name $age tuổi học lớp $_grade có số điểm là: $_mark");
  }
}
