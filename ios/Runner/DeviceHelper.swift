import UIKit

final class DeviceHelper {
  static let shared = DeviceHelper()

  private let appID = "76550774"

  private init() {}

  func getDeviceID() throws -> String {
    if let existing = try KeychainManager.shared.readDeviceID(), !existing.isEmpty {
      return existing
    }

    let idfv = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
    let deviceID = "\(idfv)\(appID)"
    try KeychainManager.shared.saveDeviceID(deviceID)
    return deviceID
  }
}
