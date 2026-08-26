import 'package:flutter/services.dart';

abstract final class CokiSwimmingDeviceService {
  static const MethodChannel _channel = MethodChannel(
    'com.coki.swimming/device',
  );

  static Future<String> resolveDeviceNo({required String fallback}) async {
    try {
      final deviceNo = await _channel.invokeMethod<String>('getDeviceNo');
      final normalized = deviceNo?.trim() ?? '';
      return normalized.isEmpty ? fallback : normalized;
    } on PlatformException {
      return fallback;
    } on MissingPluginException {
      return fallback;
    }
  }
}
