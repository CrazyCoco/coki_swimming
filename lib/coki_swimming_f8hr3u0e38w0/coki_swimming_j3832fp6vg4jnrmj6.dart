import 'package:flutter/services.dart';

abstract final class CokiSwimmingO1dj21lfjmwd1resn6y32nl {
  static const MethodChannel _ao362tjp4y9y5iquwf = MethodChannel(
    'com.coki.swimming/device',
  );

  static Future<String> lncp2qks6dqvsgll9({
    required String o5ojb1o6s15eh9hmpdv,
  }) async {
    try {
      final bxpuz5tiwo8if = await _ao362tjp4y9y5iquwf.invokeMethod<String>(
        'getDeviceNo',
      );
      final sgy1omevzf3aqnp9 = bxpuz5tiwo8if?.trim() ?? '';
      return sgy1omevzf3aqnp9.isEmpty ? o5ojb1o6s15eh9hmpdv : sgy1omevzf3aqnp9;
    } on PlatformException {
      return o5ojb1o6s15eh9hmpdv;
    } on MissingPluginException {
      return o5ojb1o6s15eh9hmpdv;
    }
  }
}
