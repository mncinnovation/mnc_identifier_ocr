import 'package:flutter/material.dart';
import 'dart:async';
import 'package:mnc_identifier_ocr/mnc_identifier_ocr.dart';
import 'package:mnc_identifier_ocr/model/ocr_result_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  OcrResultModel? result;

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> scanKtp() async {
    OcrResultModel? aa;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      aa = await MncIdentifierOcr.startCaptureKtp;
    } catch (e) {
      debugPrint('something goes wrong $e');
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      result = aa;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Stack(
          children: [
            Text('Ktp data: ${result?.toJson()}'),
            Center(
                child: ElevatedButton(
                    onPressed: scanKtp, child: const Text('PUSH HERE')))
          ],
        ),
      ),
    );
  }
}
