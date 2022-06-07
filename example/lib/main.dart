import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:mnc_identifier_ocr/mnc_identifier_ocr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _json = '...';

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> scanKtp() async {
    String json;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      json = await MncIdentifierOcr.startCaptureKtp ?? 'no data';
    } on PlatformException {
      json = 'error';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _json = json;
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
            Text('Ktp data: $_json'),
            Center(
                child: ElevatedButton(
                    onPressed: scanKtp, child: const Text('PUSH HERE')))
          ],
        ),
      ),
    );
  }
}
