import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mnc_identifier_ocr/mnc_identifier_ocr.dart';

void main() {
  const MethodChannel channel = MethodChannel('mnc_identifier_ocr');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    //expect(await MncIdentifierOcr.startCaptureKtp, '42');
  });
}