class User {
  String? maSoHocSinh;
  String? ten;
  String? _ngaySinh;
  String? _soDienThoai;
  int? diemToan;
  int? diemVan;
  int? diemAnh;

  User(this.maSoHocSinh, this.ten, this._ngaySinh, this._soDienThoai,
      this.diemToan, this.diemVan, this.diemAnh);

  String getMaSoHocSinh() => this.maSoHocSinh!;
  String getTen() => this.ten!;
  String getNgaySinh() => this._ngaySinh!;
  String getSoDienThoai() => this._soDienThoai!;
  int getDiemToan() => this.diemToan!;
  int getDiemVan() => this.diemVan!;
  int getDiemAnh() => this.diemAnh!;

  void setMaSoHocSinh({required String? maHocSinh}) {
    this.maSoHocSinh = maHocSinh;
  }

  void setTen({required String? ten}) {
    this.ten = ten;
  }

  void setNgaySinh({required String? ngaySinh}) {
    this._ngaySinh = ngaySinh;
  }

  void setSoDienThoai({required String? soDienThoai}) {
    this._soDienThoai = soDienThoai;
  }

  void setDiemToan({required int? diemToan}) {
    this.diemToan = diemToan;
  }

  void setDiemVan({required int? diemVan}) {
    this.diemVan = diemVan;
  }

  void setDiemAnh({required int? diemAnh}) {
    this.diemAnh = diemAnh;
  }

  void inThongTin() {
    print("Mã số học sinh: ${this.maSoHocSinh}" +
        "\n" +
        "Tên: ${this.ten}" +
        "\n" +
        "Ngày sinh: ${this._ngaySinh}" +
        "\n" +
        "Số điện thoại: ${this._soDienThoai}" +
        "\n" +
        "Điểm Toán: ${this.diemToan}" +
        "\n" +
        "Điểm Văn: ${this.diemVan}" +
        "\n" +
        "Điểm Anh: ${this.diemAnh}" +
        "\n");
  }

  double tinhDiemTrungBinh() =>
      (this.diemToan! + this.diemVan! + this.diemAnh!) / 3;

  String xepLoai() {
    var diemTB = this.tinhDiemTrungBinh();
    if (diemTB < 5)
      return "Yếu";
    else if (diemTB < 6.5)
      return "Trung Bình";
    else if (diemTB < 8)
      return "Học Khá";
    else
      return "Học giỏi";
  }
}
