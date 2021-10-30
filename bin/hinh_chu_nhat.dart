class HinhChuNhat {
  double? chieuDai;
  double? chieuRong;

  HinhChuNhat(this.chieuDai, this.chieuRong);

  double getChieuDai() => this.chieuDai!;
  double getChieuRong() => this.chieuRong!;

  void setChieuDai({required double? chieuDai}) {
    this.chieuDai = chieuDai;
  }

  void setChieuRong({required double? chieuRong}) {
    this.chieuRong = chieuRong;
  }

  double tinhChuVi() {
    return (this.chieuDai! + this.chieuRong!) * 2;
  }

  double tinhDienTich() {
    return this.chieuDai! * this.chieuRong!;
  }

  void getInfor() {
    print("Chiều dài: ${this.chieuDai}" +
        "\n" +
        "Chiều rộng: ${this.chieuRong}" +
        "\n" +
        "Chu vi: ${this.tinhChuVi()}" +
        "\n" +
        "Diện tích: ${this.tinhDienTich()}" +
        "\n");
  }
}
