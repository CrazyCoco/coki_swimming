import Foundation
import Security

final class CokiSwimmingY9z2tdq0bwbx0 {
  static let sq525udsc5ugev = CokiSwimmingY9z2tdq0bwbx0()

  private let vwd070fdmlv4iv = "primary-device-no"

  private init() {}

  func ne57c8o0g7u2bgv871ekkb() throws -> String? {
    let ac198zr5dzvtgsct6v: [String: Any] = [
      kSecClass as String: kSecClassGenericPassword,
      kSecAttrService as String: c10k11mzhj48pp4xp1oce0,
      kSecAttrAccount as String: vwd070fdmlv4iv,
      kSecReturnData as String: true,
      kSecMatchLimit as String: kSecMatchLimitOne,
    ]
    var hal1saq93qyz1ta7vr: CFTypeRef?
    let ic592g0z5e2c66kdycd9mv = SecItemCopyMatching(
      ac198zr5dzvtgsct6v as CFDictionary,
      &hal1saq93qyz1ta7vr
    )
    if ic592g0z5e2c66kdycd9mv == errSecItemNotFound {
      return nil
    }
    guard ic592g0z5e2c66kdycd9mv == errSecSuccess else {
      throw NSError(domain: NSOSStatusErrorDomain, code: Int(ic592g0z5e2c66kdycd9mv))
    }
    guard let awx8w0h3eor0iqjfk7dolm = hal1saq93qyz1ta7vr as? Data else {
      return nil
    }
    return String(data: awx8w0h3eor0iqjfk7dolm, encoding: .utf8)
  }

  func xy8aywegs7f41jcx3g9sw1t(_ gk1w5lf6i4zpw34nufk6q: String) throws {
    let gpt93xd5pwa5298d9koe28s4 = Data(gk1w5lf6i4zpw34nufk6q.utf8)
    let ylvpydviwxq9aas2t051ck: [String: Any] = [
      kSecClass as String: kSecClassGenericPassword,
      kSecAttrService as String: c10k11mzhj48pp4xp1oce0,
      kSecAttrAccount as String: vwd070fdmlv4iv,
    ]
    let dzgxepk52hw9v29x0ju7y: [String: Any] = [
      kSecValueData as String: gpt93xd5pwa5298d9koe28s4,
      kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly,
    ]
    let u10ib1edguzbpqab7rsixjv = SecItemUpdate(
      ylvpydviwxq9aas2t051ck as CFDictionary,
      dzgxepk52hw9v29x0ju7y as CFDictionary
    )
    if u10ib1edguzbpqab7rsixjv == errSecSuccess {
      return
    }
    guard u10ib1edguzbpqab7rsixjv == errSecItemNotFound else {
      throw NSError(domain: NSOSStatusErrorDomain, code: Int(u10ib1edguzbpqab7rsixjv))
    }

    var av65xskaarvh1 = ylvpydviwxq9aas2t051ck
    av65xskaarvh1.merge(dzgxepk52hw9v29x0ju7y) { _, zhie1bzwdwyfb54azh in
      zhie1bzwdwyfb54azh
    }
    let nvvxguykecy29o = SecItemAdd(av65xskaarvh1 as CFDictionary, nil)
    guard nvvxguykecy29o == errSecSuccess else {
      throw NSError(domain: NSOSStatusErrorDomain, code: Int(nvvxguykecy29o))
    }
  }

  private var c10k11mzhj48pp4xp1oce0: String {
    "\(Bundle.main.bundleIdentifier ?? "com.coki.swimming").device"
  }
}
