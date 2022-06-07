import Flutter
import UIKit

public class SwiftMncIdentifierOcrPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "mnc_identifier_ocr", binaryMessenger: registrar.messenger())
    let instance = SwiftMncIdentifierOcrPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
