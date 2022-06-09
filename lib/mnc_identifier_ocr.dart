import 'dart:async';

import 'package:flutter/services.dart';
import 'package:mnc_identifier_ocr/model/ocr_result_model.dart';

class MncIdentifierOcr {
  static const MethodChannel _channel = MethodChannel('mnc_identifier_ocr');

  static Future<OcrResultModel> get startCaptureKtp async {
    try {
      final String? json = await _channel.invokeMethod('startCaptureKtp');
      if (json == null) {
        throw 'mnc-identifier-ocr: unexpected null data from scanner';
      }
      return OcrResultModel.fromJson(json);
    } catch (e) {
      rethrow;
    }
  }
}
