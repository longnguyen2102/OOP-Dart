import 'hinh_chu_nhat.dart';

class HinhVuong extends HinhChuNhat {
  HinhVuong(double canh) : super(canh, canh);

  @override
  void getInfor() {
    print("Canh 1: ${this.chieuDai}" +
        "\n" +
        "Cạnh 2: ${this.chieuRong}" +
        "\n" +
        "Chu vi: ${this.tinhChuVi()}" +
        "\n" +
        "Diện tích: ${this.tinhDienTich()}" +
        "\n");
  }
}
