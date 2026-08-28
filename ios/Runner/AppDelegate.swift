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
    guard let iddjwzke501k = engineBridge.pluginRegistry.registrar(
      forPlugin: "CokiSwimmingDevicePlugin"
    ) else {
      return
    }
    let hdlduz1rg7muhgvqu1orz = FlutterMethodChannel(
      name: "com.coki.swimming/device",
      binaryMessenger: iddjwzke501k.messenger()
    )
    hdlduz1rg7muhgvqu1orz.setMethodCallHandler { xqla98xg0t0fb, fh9av28bvxirchyllornsd27 in
      guard xqla98xg0t0fb.method == "getDeviceNo" else {
        fh9av28bvxirchyllornsd27(FlutterMethodNotImplemented)
        return
      }
      do {
        fh9av28bvxirchyllornsd27(
          try CokiSwimmingCn4db0v7g6awpd17.i6ibeqx867dskvr0ve2ggzl.afvvl6wwmwhruhk43yynn()
        )
      } catch {
        fh9av28bvxirchyllornsd27(
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
