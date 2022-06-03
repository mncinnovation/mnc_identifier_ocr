import 'dart:convert';

import 'package:mnc_identifier_ocr/model/ktp_data_model.dart';

class OCRResultModel {
  final String imagePath;
  final int confidence;
  final bool isSuccess;
  final String errorMessage;
  final KTPDataModel ktpData;
  OCRResultModel({
    required this.imagePath,
    required this.confidence,
    required this.isSuccess,
    required this.errorMessage,
    required this.ktpData,
  });

  OCRResultModel copyWith({
    String? imagePath,
    int? confidence,
    bool? isSuccess,
    String? errorMessage,
    KTPDataModel? ktpData,
  }) {
    return OCRResultModel(
      imagePath: imagePath ?? this.imagePath,
      confidence: confidence ?? this.confidence,
      isSuccess: isSuccess ?? this.isSuccess,
      errorMessage: errorMessage ?? this.errorMessage,
      ktpData: ktpData ?? this.ktpData,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imagePath': imagePath,
      'confidence': confidence,
      'isSuccess': isSuccess,
      'errorMessage': errorMessage,
      'ktpData': ktpData.toMap(),
    };
  }

  factory OCRResultModel.fromMap(Map<String, dynamic> map) {
    return OCRResultModel(
      imagePath: map['imagePath'] ?? '',
      confidence: map['confidence']?.toInt() ?? 0,
      isSuccess: map['isSuccess'] ?? false,
      errorMessage: map['errorMessage'] ?? '',
      ktpData: KTPDataModel.fromMap(map['ktpData']),
    );
  }

  String toJson() => json.encode(toMap());

  factory OCRResultModel.fromJson(String source) =>
      OCRResultModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'OCRResultModel(imagePath: $imagePath, confidence: $confidence, isSuccess: $isSuccess, errorMessage: $errorMessage, ktpData: $ktpData)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OCRResultModel &&
        other.imagePath == imagePath &&
        other.confidence == confidence &&
        other.isSuccess == isSuccess &&
        other.errorMessage == errorMessage &&
        other.ktpData == ktpData;
  }

  @override
  int get hashCode {
    return imagePath.hashCode ^
        confidence.hashCode ^
        isSuccess.hashCode ^
        errorMessage.hashCode ^
        ktpData.hashCode;
  }
}
