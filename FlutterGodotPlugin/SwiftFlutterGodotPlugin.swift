import Flutter
import SwiftGodot

public class SwiftFlutterGodotPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_godot_bridge", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterGodotPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "sendDataToGodot":
      if let arguments = call.arguments as? [String: Any], let data = arguments["data"] as? String {
        sendDataToGodot(data: data)
        result(nil)
      } else {
        result(FlutterError(code: "INVALID_ARGUMENTS", message: "Data is required", details: nil))
      }
    case "receiveDataFromGodot":
      let data = receiveDataFromGodot()
      result(data)
    default:
      result(FlutterMethodNotImplemented)
    }
  }

  private func sendDataToGodot(data: String) {
    // Use SwiftGodot to send data to Godot
    Godot.shared.sendData(data: data)
  }

  private func receiveDataFromGodot() -> String {
    // Use SwiftGodot to receive data from Godot
    return Godot.shared.receiveData()
  }
}