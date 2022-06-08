import Flutter
import OCR
import UIKit

public class SwiftMncIdentifierOcrPlugin: NSObject, OCRDelegate, FlutterPlugin {
  var result: FlutterResult?

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(
      name: "mnc_identifier_ocr", binaryMessenger: registrar.messenger())
    let instance = SwiftMncIdentifierOcrPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    self.result = result

    if call.method == "startCaptureKtp" {
      let viewController = UIApplication.shared.keyWindow?.rootViewController

      if viewController != nil {
        let client = OCRClient()
        client.delegate = self
        client.showOCRIdentifier(viewController!)
      } else {
        result(FlutterError(code: "Unexpected nil", message: "Mnc-identifier-ocr: Could not retrieve rootViewController", details: "Expected rootViewController to be not nil"))
      }
    } else {
      result(FlutterMethodNotImplemented)
    }
  }

  public func ocrResult(_ ktpResult: OCRResultModel!) {
    if let result = self.result {
      result(ktpResult.asJson)
    }
  }

  func parseToJson(_ ktpResult: OCRResultModel!) -> String {
    return
      "{\"captureKtpResult\": {\"errorMessage\": \"Success\",\"imageUri\": {},\"isSuccess\": true,\"imgPath\": \(ktpResult.ktpPath), \"ktp\": {\"agama\": \"\(ktpResult.ktpData.agama)\",\"alamat\": \"\(ktpResult.ktpData.alamat)\",\"berlakuHingga\": \"\(ktpResult.ktpData.berlakuHingga)\",\"confidence\": 0,\"golDarah\": \"\(ktpResult.ktpData.golDarah)\",\"jenisKelamin\": \"\(ktpResult.ktpData.jenisKelamin)\",\"kabKot\": \"\(ktpResult.ktpData.kabkota)\",\"kecamatan\": \"\(ktpResult.ktpData.kecamatan)\",\"kelurahan\": \"\(ktpResult.ktpData.kelurahan)\",\"kewarganegaraan\": \"\(ktpResult.ktpData.kewarganegaraan)\",\"nama\": \"\(ktpResult.ktpData.nama)\",\"nik\": \"\(ktpResult.ktpData.nik)\",\"pekerjaan\": \"\(ktpResult.ktpData.pekerjaan)\",\"provinsi\": \"\(ktpResult.ktpData.provinsi)\",\"rt\": \"\(ktpResult.ktpData.rt)\",\"rw\": \"\(ktpResult.ktpData.rw)\",\"statusPerkawinan\": \"\(ktpResult.ktpData.statusPerkawinan)\",\"tempatLahir\": \"\(ktpResult.ktpData.tempatLahir)\",\"tglLahir\": \"\(ktpResult.ktpData.tanggalLahir)\"}}}"
  }
}
