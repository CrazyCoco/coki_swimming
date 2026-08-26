import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate, FlutterImplicitEngineDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  func didInitializeImplicitFlutterEngine(_ engineBridge: FlutterImplicitEngineBridge) {
    GeneratedPluginRegistrant.register(with: engineBridge.pluginRegistry)
    guard let registrar = engineBridge.pluginRegistry.registrar(
      forPlugin: "CokiSwimmingDevicePlugin"
    ) else {
      return
    }
    let channel = FlutterMethodChannel(
      name: "com.coki.swimming/device",
      binaryMessenger: registrar.messenger()
    )
    channel.setMethodCallHandler { call, result in
      guard call.method == "getDeviceNo" else {
        result(FlutterMethodNotImplemented)
        return
      }
      do {
        result(try DeviceHelper.shared.getDeviceID())
      } catch {
        result(
          FlutterError(
            code: "keychain_error",
            message: "Unable to access the device identifier.",
            details: nil
          )
        )
      }
    }
  }
}
