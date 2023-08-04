import Flutter
import UIKit

public class SwiftInactivityScreenDetectorPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "inactivity_screen_detector", binaryMessenger: registrar.messenger())
    let instance = SwiftInactivityScreenDetectorPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
