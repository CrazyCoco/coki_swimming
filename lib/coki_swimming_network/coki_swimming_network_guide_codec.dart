part of '../main.dart';

class CokiSwimmingGuideCodec {
  const CokiSwimmingGuideCodec();

  String encode(String plainText) {
    _validateConfiguration();
    final encrypted = _encrypter.encrypt(
      plainText,
      iv: coki_crypto.IV.fromUtf8(CokiSwimmingCryptoConfig.aesIv),
    );
    return hex.encode(encrypted.bytes);
  }

  String decode(String encryptedHex) {
    _validateConfiguration();
    final bytes = hex.decode(encryptedHex);
    return _encrypter.decrypt(
      coki_crypto.Encrypted(Uint8List.fromList(bytes)),
      iv: coki_crypto.IV.fromUtf8(CokiSwimmingCryptoConfig.aesIv),
    );
  }

  dynamic decodeResponse(dynamic value) {
    if (value is List) {
      return value.map(decodeResponse).toList(growable: false);
    }
    if (value is Map) {
      return value.map((key, item) => MapEntry(key, decodeResponse(item)));
    }
    if (value is! String) return value;

    final normalized = value.trim();
    if ((normalized.startsWith('{') && normalized.endsWith('}')) ||
        (normalized.startsWith('[') && normalized.endsWith(']'))) {
      try {
        return decodeResponse(jsonDecode(normalized));
      } on FormatException {
        return value;
      }
    }
    if (!_looksEncrypted(normalized)) return value;
    try {
      final decrypted = decode(normalized);
      try {
        return decodeResponse(jsonDecode(decrypted));
      } on FormatException {
        return decrypted;
      }
    } on Object {
      return value;
    }
  }

  bool _looksEncrypted(String value) =>
      value.length >= 32 &&
      value.length.isEven &&
      RegExp(r'^[0-9a-fA-F]+$').hasMatch(value);

  void _validateConfiguration() {
    if (CokiSwimmingCryptoConfig.aesKey.length != 16 ||
        CokiSwimmingCryptoConfig.aesIv.length != 16) {
      throw const CokiSwimmingGuideConfigurationException(
        'Coki AI encryption is not configured correctly.',
      );
    }
  }

  coki_crypto.Encrypter get _encrypter => coki_crypto.Encrypter(
    coki_crypto.AES(
      coki_crypto.Key.fromUtf8(CokiSwimmingCryptoConfig.aesKey),
      mode: coki_crypto.AESMode.cbc,
      padding: 'PKCS7',
    ),
  );
}
