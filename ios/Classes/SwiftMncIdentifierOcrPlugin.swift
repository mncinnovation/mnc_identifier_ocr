import Flutter
import MNCOCRIdentifier
import UIKit

public class SwiftMncIdentifierOcrPlugin: NSObject, MNCOCRIdentifierDelegate, FlutterPlugin {
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
        //get argument from flutter
        var withFlash: Bool = false
        var cameraOnly: Bool = false
        if let args = call.arguments as? Dictionary<String, Any> {
          withFlash = (args["withFlash"] as? Bool) ?? false 
          cameraOnly = (args["cameraOnly"] as? Bool) ?? false 
        } 
        
        let client = MNCOCRIdentifierClient()
        client.delegate = self
        client.isFlashEnable = withFlash
        client.isCameraOnly = cameraOnly
        client.showOCRIdentifier(viewController!)
      } else {
        result(FlutterError(code: "Unexpected nil", message: "Mnc-identifier-ocr: Could not retrieve rootViewController", details: "Expected rootViewController to be not nil"))
      }
    } else {
      result(FlutterMethodNotImplemented)
    }
  }

  public func ocrResult(_ ktpResult: MNCOCRIdentifierResult?) {
    if let result = self.result {
       if ktpResult != nil {
        result(ktpResult!.asJson())
      } else {
        result(FlutterError(code: "Unexpected nil", message: "Mnc-identifier-ocr: Could not retrieve KTP result", details: "Expected KTP result to be not nil"))
      }
    }
  }
}
