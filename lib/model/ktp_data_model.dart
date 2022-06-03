import 'dart:convert';

class KTPDataModel {
  final String nik;
  final String provinsi;
  final String kabupatenKota;
  final String nama;
  final String tempatLahir;
  final String tanggalLahir;
  final String jenisKelamin;
  final String golDarah;
  final String alamat;
  final String rt;
  final String rw;
  final String kelurahan;
  final String kecamatan;
  final String agama;
  final String statusPerkawinan;
  final String pekerjaan;
  final String kewarganegaraan;
  final String berlakuHingga;
  KTPDataModel({
    required this.nik,
    required this.provinsi,
    required this.kabupatenKota,
    required this.nama,
    required this.tempatLahir,
    required this.tanggalLahir,
    required this.jenisKelamin,
    required this.golDarah,
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
  });

  KTPDataModel copyWith({
    String? nik,
    String? provinsi,
    String? kabupatenKota,
    String? nama,
    String? tempatLahir,
    String? tanggalLahir,
    String? jenisKelamin,
    String? golDarah,
    String? alamat,
    String? rt,
    String? rw,
    String? kelurahan,
    String? kecamatan,
    String? agama,
    String? statusPerkawinan,
    String? pekerjaan,
    String? kewarganegaraan,
    String? berlakuHingga,
  }) {
    return KTPDataModel(
      nik: nik ?? this.nik,
      provinsi: provinsi ?? this.provinsi,
      kabupatenKota: kabupatenKota ?? this.kabupatenKota,
      nama: nama ?? this.nama,
      tempatLahir: tempatLahir ?? this.tempatLahir,
      tanggalLahir: tanggalLahir ?? this.tanggalLahir,
      jenisKelamin: jenisKelamin ?? this.jenisKelamin,
      golDarah: golDarah ?? this.golDarah,
      alamat: alamat ?? this.alamat,
      rt: rt ?? this.rt,
      rw: rw ?? this.rw,
      kelurahan: kelurahan ?? this.kelurahan,
      kecamatan: kecamatan ?? this.kecamatan,
      agama: agama ?? this.agama,
      statusPerkawinan: statusPerkawinan ?? this.statusPerkawinan,
      pekerjaan: pekerjaan ?? this.pekerjaan,
      kewarganegaraan: kewarganegaraan ?? this.kewarganegaraan,
      berlakuHingga: berlakuHingga ?? this.berlakuHingga,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nik': nik,
      'provinsi': provinsi,
      'kabupatenKota': kabupatenKota,
      'nama': nama,
      'tempatLahir': tempatLahir,
      'tanggalLahir': tanggalLahir,
      'jenisKelamin': jenisKelamin,
      'golDarah': golDarah,
      'alamat': alamat,
      'rt': rt,
      'rw': rw,
      'kelurahan': kelurahan,
      'kecamatan': kecamatan,
      'agama': agama,
      'statusPerkawinan': statusPerkawinan,
      'pekerjaan': pekerjaan,
      'kewarganegaraan': kewarganegaraan,
      'berlakuHingga': berlakuHingga,
    };
  }

  factory KTPDataModel.fromMap(Map<String, dynamic> map) {
    return KTPDataModel(
      nik: map['nik'] ?? '',
      provinsi: map['provinsi'] ?? '',
      kabupatenKota: map['kabupatenKota'] ?? '',
      nama: map['nama'] ?? '',
      tempatLahir: map['tempatLahir'] ?? '',
      tanggalLahir: map['tanggalLahir'] ?? '',
      jenisKelamin: map['jenisKelamin'] ?? '',
      golDarah: map['golDarah'] ?? '',
      alamat: map['alamat'] ?? '',
      rt: map['rt'] ?? '',
      rw: map['rw'] ?? '',
      kelurahan: map['kelurahan'] ?? '',
      kecamatan: map['kecamatan'] ?? '',
      agama: map['agama'] ?? '',
      statusPerkawinan: map['statusPerkawinan'] ?? '',
      pekerjaan: map['pekerjaan'] ?? '',
      kewarganegaraan: map['kewarganegaraan'] ?? '',
      berlakuHingga: map['berlakuHingga'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory KTPDataModel.fromJson(String source) =>
      KTPDataModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'KTPDataModel(nik: $nik, provinsi: $provinsi, kabupatenKota: $kabupatenKota, nama: $nama, tempatLahir: $tempatLahir, tanggalLahir: $tanggalLahir, jenisKelamin: $jenisKelamin, golDarah: $golDarah, alamat: $alamat, rt: $rt, rw: $rw, kelurahan: $kelurahan, kecamatan: $kecamatan, agama: $agama, statusPerkawinan: $statusPerkawinan, pekerjaan: $pekerjaan, kewarganegaraan: $kewarganegaraan, berlakuHingga: $berlakuHingga)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is KTPDataModel &&
        other.nik == nik &&
        other.provinsi == provinsi &&
        other.kabupatenKota == kabupatenKota &&
        other.nama == nama &&
        other.tempatLahir == tempatLahir &&
        other.tanggalLahir == tanggalLahir &&
        other.jenisKelamin == jenisKelamin &&
        other.golDarah == golDarah &&
        other.alamat == alamat &&
        other.rt == rt &&
        other.rw == rw &&
        other.kelurahan == kelurahan &&
        other.kecamatan == kecamatan &&
        other.agama == agama &&
        other.statusPerkawinan == statusPerkawinan &&
        other.pekerjaan == pekerjaan &&
        other.kewarganegaraan == kewarganegaraan &&
        other.berlakuHingga == berlakuHingga;
  }

  @override
  int get hashCode {
    return nik.hashCode ^
        provinsi.hashCode ^
        kabupatenKota.hashCode ^
        nama.hashCode ^
        tempatLahir.hashCode ^
        tanggalLahir.hashCode ^
        jenisKelamin.hashCode ^
        golDarah.hashCode ^
        alamat.hashCode ^
        rt.hashCode ^
        rw.hashCode ^
        kelurahan.hashCode ^
        kecamatan.hashCode ^
        agama.hashCode ^
        statusPerkawinan.hashCode ^
        pekerjaan.hashCode ^
        kewarganegaraan.hashCode ^
        berlakuHingga.hashCode;
  }
}
