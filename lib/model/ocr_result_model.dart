import 'dart:convert';

OcrResultModel ocrResultModelFromMap(String str) =>
    OcrResultModel.fromMap(json.decode(str));

String ocrResultModelToMap(OcrResultModel data) => json.encode(data.toMap());

class OcrResultModel {
  OcrResultModel({
    required this.isSuccess,
    required this.errorMessage,
    required this.imagePath,
    required this.ktp,
  });

  final bool? isSuccess;
  final String? errorMessage;
  final String? imagePath;
  final Ktp? ktp;

  factory OcrResultModel.fromJson(String source) =>
      OcrResultModel.fromMap(json.decode(source));

  String toJson() => json.encode(toMap());

  factory OcrResultModel.fromMap(Map<String, dynamic> json) => OcrResultModel(
        isSuccess: json["isSuccess"],
        errorMessage: json["errorMessage"],
        imagePath: json["imagePath"],
        ktp: Ktp.fromMap(json["ktp"]),
      );

  Map<String, dynamic> toMap() => {
        "isSuccess": isSuccess,
        "errorMessage": errorMessage,
        "imagePath": imagePath,
        "ktp": ktp?.toMap(),
      };
}

class Ktp {
  Ktp({
    required this.nik,
    required this.nama,
    required this.tempatLahir,
    required this.golDarah,
    required this.tglLahir,
    required this.jenisKelamin,
    required this.alamat,
    required this.rt,
    required this.rw,
    required this.kelurahan,
    required this.kecamatan,
    required this.agama,
    required this.statusPerkawinan,
    required this.pekerjaan,
    required this.kewarganegaraan,
    required this.berlakuHingga,
    required this.provinsi,
    required this.kabKot,
  });

  final String? nik;
  final String? nama;
  final String? tempatLahir;
  final String? golDarah;
  final String? tglLahir;
  final String? jenisKelamin;
  final String? alamat;
  final String? rt;
  final String? rw;
  final String? kelurahan;
  final String? kecamatan;
  final String? agama;
  final String? statusPerkawinan;
  final String? pekerjaan;
  final String? kewarganegaraan;
  final String? berlakuHingga;
  final String? provinsi;
  final String? kabKot;

  factory Ktp.fromMap(Map<String, dynamic> json) => Ktp(
        nik: json["nik"],
        nama: json["nama"],
        tempatLahir: json["tempatLahir"],
        golDarah: json["golDarah"],
        tglLahir: json["tglLahir"],
        jenisKelamin: json["jenisKelamin"],
        alamat: json["alamat"],
        rt: json["rt"],
        rw: json["rw"],
        kelurahan: json["kelurahan"],
        kecamatan: json["kecamatan"],
        agama: json["agama"],
        statusPerkawinan: json["statusPerkawinan"],
        pekerjaan: json["pekerjaan"],
        kewarganegaraan: json["kewarganegaraan"],
        berlakuHingga: json["berlakuHingga"],
        provinsi: json["provinsi"],
        kabKot: json["kabKot"],
      );

  Map<String, dynamic> toMap() => {
        "nik": nik,
        "nama": nama,
        "tempatLahir": tempatLahir,
        "golDarah": golDarah,
        "tglLahir": tglLahir,
        "jenisKelamin": jenisKelamin,
        "alamat": alamat,
        "rt": rt,
        "rw": rw,
        "kelurahan": kelurahan,
        "kecamatan": kecamatan,
        "agama": agama,
        "statusPerkawinan": statusPerkawinan,
        "pekerjaan": pekerjaan,
        "kewarganegaraan": kewarganegaraan,
        "berlakuHingga": berlakuHingga,
        "provinsi": provinsi,
        "kabKot": kabKot,
      };
}
