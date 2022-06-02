import 'dart:async';

import 'package:flutter/services.dart';

class MncIdentifierOcr {
  static const MethodChannel _channel = MethodChannel('mnc_identifier_ocr');

  static Future<dynamic> get startCaptureKtp async {
    try {
      final String? json = await _channel.invokeMethod('startCaptureKtp');
      //TODO add model
      return json;
    } catch (e) {
      rethrow;
    }
  }
}
