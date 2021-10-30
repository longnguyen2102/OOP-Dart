//import 'package:oop_dart/oop_dart.dart' as oop_dart;

import '../bin/User.dart';
import 'hinh_chu_nhat.dart';
import 'hinh_vuong.dart';
import 'student.dart';

void main(List<String> arguments) {
  //Bài 1
  var hocsinh = User(
      "1651012102", "Nguyễn Hoàng Long", "16-10-1998", "0898154710", 10, 7, 9);
  hocsinh.inThongTin();
  print("Điểm Trung Bình: ${hocsinh.tinhDiemTrungBinh()}" +
      " Xếp loại: ${hocsinh.xepLoai()}");

  var hocsinh2 = User("1854050049", "Nguyễn Thị Mỹ Loan", "07-07-20000",
      "0898154710", 10, 4, 6);
  hocsinh2.inThongTin();
  print("Điểm Trung Bình: ${hocsinh2.tinhDiemTrungBinh()}" +
      " Xếp loại: ${hocsinh2.xepLoai()}");

  List<User> userList = [hocsinh, hocsinh2];
  findDTBMax(userList: userList);

  //Bài 2
  var hinhChuNhat = HinhChuNhat(10, 8);
  hinhChuNhat.getInfor();
  var hinhChuNhat2 = HinhChuNhat(20, 18);
  hinhChuNhat2.getInfor();

  var hinhVuong = HinhVuong(6);
  hinhVuong.getInfor();

  //Bài 3
  Student sv1 = Student(id: "1", name: "Long");
  sv1.setAge(age: 10);
  sv1.setGrade(grade: "5A");
  sv1.setMark(mark: 8);
  sv1.display();

  Student sv2 = Student(id: "2", name: "Huy");
  sv2.setAge(age: 10);
  sv2.setGrade(grade: "5B");
  sv2.setMark(mark: 9);
  sv2.display();
}

findDTBMax({required List<User> userList}) {
  double dtbMax = 0;
  User? dtbMaxUser;

  for (User user in userList) {
    if (user.tinhDiemTrungBinh() > dtbMax) {
      dtbMax = user.tinhDiemTrungBinh();
      dtbMaxUser = user;
    }
  }
  print("Hoc sinh co diem cao nhat la: " + dtbMaxUser!.ten.toString());
}
