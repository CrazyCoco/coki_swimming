part of '../main.dart';

class CokiSwimmingIgywuamq46txa {
  const CokiSwimmingIgywuamq46txa();

  String hq7kuytptc5d(String nqajzcrlenuj1lchylg4q) {
    _jo5j91lwpkunto5cv();
    final nmn3xe65un3ipzw6b8 = _m6iuginm5urrfbhad2ewiz.encrypt(
      nqajzcrlenuj1lchylg4q,
      iv: coki_crypto.IV.fromUtf8(CokiSwimmingGn7bwh1q6jy30ibjg.iq6osprm235j41),
    );
    return hex.encode(nmn3xe65un3ipzw6b8.bytes);
  }

  String yc2fpbebmr8lbe(String z9791pr2jsnvhp) {
    _jo5j91lwpkunto5cv();
    final iickhzqibt5fpk6et3j6z = hex.decode(z9791pr2jsnvhp);
    return _m6iuginm5urrfbhad2ewiz.decrypt(
      coki_crypto.Encrypted(Uint8List.fromList(iickhzqibt5fpk6et3j6z)),
      iv: coki_crypto.IV.fromUtf8(CokiSwimmingGn7bwh1q6jy30ibjg.iq6osprm235j41),
    );
  }

  dynamic beb1vfb770q61e9of9l7lr(dynamic ejuwbpkk43snn9krfjh) {
    if (ejuwbpkk43snn9krfjh is List) {
      return ejuwbpkk43snn9krfjh
          .map(beb1vfb770q61e9of9l7lr)
          .toList(growable: false);
    }
    if (ejuwbpkk43snn9krfjh is Map) {
      return ejuwbpkk43snn9krfjh.map(
        (zmjxomhecwkwbfr, ls7twvw7oha0797j7s13) => MapEntry(
          zmjxomhecwkwbfr,
          beb1vfb770q61e9of9l7lr(ls7twvw7oha0797j7s13),
        ),
      );
    }
    if (ejuwbpkk43snn9krfjh is! String) return ejuwbpkk43snn9krfjh;

    final ubxetgs6wz5hwrt8j = ejuwbpkk43snn9krfjh.trim();
    if ((ubxetgs6wz5hwrt8j.startsWith('{') &&
            ubxetgs6wz5hwrt8j.endsWith('}')) ||
        (ubxetgs6wz5hwrt8j.startsWith('[') &&
            ubxetgs6wz5hwrt8j.endsWith(']'))) {
      try {
        return beb1vfb770q61e9of9l7lr(jsonDecode(ubxetgs6wz5hwrt8j));
      } on FormatException {
        return ejuwbpkk43snn9krfjh;
      }
    }
    if (!_rpua85u45ljqj0bw(ubxetgs6wz5hwrt8j)) return ejuwbpkk43snn9krfjh;
    try {
      final das29izlo5tsna6d42kt0wx = yc2fpbebmr8lbe(ubxetgs6wz5hwrt8j);
      try {
        return beb1vfb770q61e9of9l7lr(jsonDecode(das29izlo5tsna6d42kt0wx));
      } on FormatException {
        return das29izlo5tsna6d42kt0wx;
      }
    } on Object {
      return ejuwbpkk43snn9krfjh;
    }
  }

  bool _rpua85u45ljqj0bw(String bya06i3fd1wekd7g8lihl4) =>
      bya06i3fd1wekd7g8lihl4.length >= 32 &&
      bya06i3fd1wekd7g8lihl4.length.isEven &&
      RegExp(r'^[0-9a-fA-F]+$').hasMatch(bya06i3fd1wekd7g8lihl4);

  void _jo5j91lwpkunto5cv() {
    if (CokiSwimmingGn7bwh1q6jy30ibjg.v9joimo308h88t76nl3.length != 16 ||
        CokiSwimmingGn7bwh1q6jy30ibjg.iq6osprm235j41.length != 16) {
      throw const CokiSwimmingYouti2tr13wqsuu(
        'Coki AI encryption is not configured correctly.',
      );
    }
  }

  coki_crypto.Encrypter get _m6iuginm5urrfbhad2ewiz => coki_crypto.Encrypter(
    coki_crypto.AES(
      coki_crypto.Key.fromUtf8(
        CokiSwimmingGn7bwh1q6jy30ibjg.v9joimo308h88t76nl3,
      ),
      mode: coki_crypto.AESMode.cbc,
      padding: 'PKCS7',
    ),
  );
}
