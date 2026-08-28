part of '../main.dart';

class CokiSwimmingYouti2tr13wqsuu implements Exception {
  const CokiSwimmingYouti2tr13wqsuu(this.xxjuyqw35ly4y4);

  final String xxjuyqw35ly4y4;
}

class CokiSwimmingUrywfs8r7iyz348utcsk8ni implements Exception {
  const CokiSwimmingUrywfs8r7iyz348utcsk8ni(this.r7tri065phpjkzotbrqmnk);

  final String r7tri065phpjkzotbrqmnk;
}

class CokiSwimmingK55tax5y38qxu5zk {
  const CokiSwimmingK55tax5y38qxu5zk({
    required this.agsegkag8bbg,
    required this.sesw0ibzzglavf4o7davl6,
  });

  final String agsegkag8bbg;
  final bool sesw0ibzzglavf4o7davl6;
}

class CokiSwimmingT3opoirkwwdfld74guonn {
  CokiSwimmingT3opoirkwwdfld74guonn._ar0nvfcctmtvphj1231()
    : _mslrm35hzwzj7wpki2jjvpd8 = Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 15),
          sendTimeout: const Duration(seconds: 15),
          receiveTimeout: const Duration(seconds: 30),
        ),
      );

  static final CokiSwimmingT3opoirkwwdfld74guonn gs1fvarhc322fsuv9x3c =
      CokiSwimmingT3opoirkwwdfld74guonn._ar0nvfcctmtvphj1231();
  static const CokiSwimmingIgywuamq46txa _jqx6q3ac3cq12j5hxov =
      CokiSwimmingIgywuamq46txa();
  static const String _q6cauhrdrgcruwppxpe9xv1 =
      'coki_swimming_installation_key';
  static final Future<PackageInfo> _rotgl9g22hilh7 = PackageInfo.fromPlatform();
  static final math.Random _lvy7so694wgrd60 = math.Random.secure();

  final Dio _mslrm35hzwzj7wpki2jjvpd8;

  Future<String> irfwveoga9xgh7pdnd1(
    List<CokiSwimmingK55tax5y38qxu5zk> wpru38yjj5txz4phm9t9l80,
  ) async {
    final gkt2e1jcc1e2fk0p559pc2 = wpru38yjj5txz4phm9t9l80
        .where(
          (ra3yw0nhii17nh) => ra3yw0nhii17nh.agsegkag8bbg.trim().isNotEmpty,
        )
        .map(
          (yjgv2pm60pm3jav4l1h) => <String, String>{
            'role': yjgv2pm60pm3jav4l1h.sesw0ibzzglavf4o7davl6
                ? 'assistant'
                : 'user',
            'content': yjgv2pm60pm3jav4l1h.agsegkag8bbg.trim(),
          },
        )
        .toList(growable: false);
    if (gkt2e1jcc1e2fk0p559pc2.isEmpty) {
      throw const CokiSwimmingUrywfs8r7iyz348utcsk8ni(
        'Enter a swimming question and try again.',
      );
    }

    final pv5dj0tnqi158zd3iq8 = _xq1775vlrfah5omb();
    final qhzgt6jguoxt98qrp05ey6kn = await _rotgl9g22hilh7;
    final k8cxkfd1sh8dtw90as = await _umy4ihztf69yrslo1pqoem();
    final cgx34cpxf44ax0ff3 = _jqx6q3ac3cq12j5hxov.hq7kuytptc5d(
      jsonEncode(<String, dynamic>{
        'system': 'Swimming Expert',
        'dashScopeMessageDTOList': gkt2e1jcc1e2fk0p559pc2,
      }),
    );
    try {
      final w64rqdvbpg7td16pl5lrgem = await _mslrm35hzwzj7wpki2jjvpd8
          .post<dynamic>(
            pv5dj0tnqi158zd3iq8,
            data: cgx34cpxf44ax0ff3,
            options: Options(
              contentType: Headers.jsonContentType,
              responseType: ResponseType.plain,
              headers: <String, String>{
                'Accept': '*/*',
                'appVersion': qhzgt6jguoxt98qrp05ey6kn.version,
                'deviceNo': k8cxkfd1sh8dtw90as,
                'pushToken': '',
                'appId': CokiSwimmingCzkz7i7pmb2hdjcc1lhpe.gyl1hca31g1ug6invm,
                'X-Coki-Trace': _ec0129fg4umu4lkcgubo(24),
                'X-Coki-Epoch': DateTime.now().millisecondsSinceEpoch
                    .toString(),
                'X-Coki-Channel': Platform.isIOS ? 'ios-swimming' : 'flutter',
                'X-Coki-Locale': Platform.localeName,
              },
            ),
          );
      final bt1h0xojzmetw4 = _zfa7v53fty5j1k(w64rqdvbpg7td16pl5lrgem.data);
      if (bt1h0xojzmetw4.isEmpty) {
        throw const CokiSwimmingUrywfs8r7iyz348utcsk8ni(
          'Coki AI returned an empty reply. Please try again.',
        );
      }
      return bt1h0xojzmetw4;
    } on CokiSwimmingYouti2tr13wqsuu {
      rethrow;
    } on CokiSwimmingUrywfs8r7iyz348utcsk8ni {
      rethrow;
    } on DioException catch (error) {
      final fy83123rl07ek45yxx = switch (error.type) {
        DioExceptionType.connectionTimeout ||
        DioExceptionType.sendTimeout ||
        DioExceptionType.receiveTimeout =>
          'The Coki AI request timed out. Please try again.',
        DioExceptionType.connectionError =>
          'Unable to reach Coki AI. Check your connection.',
        _ => 'Coki AI is temporarily unavailable.',
      };
      throw CokiSwimmingUrywfs8r7iyz348utcsk8ni(fy83123rl07ek45yxx);
    } on FormatException {
      throw const CokiSwimmingUrywfs8r7iyz348utcsk8ni(
        'Coki AI returned an invalid response.',
      );
    } on Object {
      throw const CokiSwimmingUrywfs8r7iyz348utcsk8ni(
        'Unable to complete the Coki AI request. Please try again.',
      );
    }
  }

  String _xq1775vlrfah5omb() {
    final m2nqswqgeppgybklc56lthq = CokiSwimmingCzkz7i7pmb2hdjcc1lhpe
        .v75ta6amqcx40ex7zf
        .trim();
    final h7cw2iq08rpnokjt = Uri.tryParse(m2nqswqgeppgybklc56lthq);
    final eyltskawe1bawotebfpk =
        h7cw2iq08rpnokjt != null && h7cw2iq08rpnokjt.hasScheme
        ? h7cw2iq08rpnokjt
        : Uri.parse(
            CokiSwimmingCzkz7i7pmb2hdjcc1lhpe.jewxrarvsqcb0i6d9,
          ).resolve(m2nqswqgeppgybklc56lthq);
    if (!eyltskawe1bawotebfpk.hasScheme ||
        eyltskawe1bawotebfpk.host.isEmpty ||
        !RegExp(r'^/opi/v1/.+s$').hasMatch(eyltskawe1bawotebfpk.path)) {
      throw const CokiSwimmingYouti2tr13wqsuu(
        'The Coki AI service address is invalid.',
      );
    }
    return eyltskawe1bawotebfpk.toString();
  }

  String _zfa7v53fty5j1k(dynamic z4suqata45qct39z2xk) {
    dynamic u6ygujzvzsg3rynk7u4if = _jqx6q3ac3cq12j5hxov.beb1vfb770q61e9of9l7lr(
      z4suqata45qct39z2xk,
    );
    if (u6ygujzvzsg3rynk7u4if is String) {
      final p114nwxsqdt3ndpov = u6ygujzvzsg3rynk7u4if.trim();
      try {
        u6ygujzvzsg3rynk7u4if = jsonDecode(p114nwxsqdt3ndpov);
      } on FormatException {
        return p114nwxsqdt3ndpov;
      }
    }
    if (u6ygujzvzsg3rynk7u4if is Map &&
        u6ygujzvzsg3rynk7u4if.containsKey('result')) {
      final vr7dnj85nb8aj5ai813etx = _udc9729e140xj56g7(
        u6ygujzvzsg3rynk7u4if['result'],
      );
      if (vr7dnj85nb8aj5ai813etx != null &&
          vr7dnj85nb8aj5ai813etx.trim().isNotEmpty) {
        return vr7dnj85nb8aj5ai813etx.trim();
      }
      return _siwem537xap9i3id(u6ygujzvzsg3rynk7u4if['result'])?.trim() ?? '';
    }
    return _siwem537xap9i3id(u6ygujzvzsg3rynk7u4if)?.trim() ?? '';
  }

  String? _udc9729e140xj56g7(dynamic zocwu7mgbndwadkm0vp3of) {
    if (zocwu7mgbndwadkm0vp3of is! Map) {
      return zocwu7mgbndwadkm0vp3of is String ? zocwu7mgbndwadkm0vp3of : null;
    }
    final vy8341pg6ke87 = zocwu7mgbndwadkm0vp3of['output'];
    if (vy8341pg6ke87 is! Map) return null;
    final zt0qifkqm2z0h2sft52 = vy8341pg6ke87['choices'];
    if (zt0qifkqm2z0h2sft52 is! List) return null;
    for (final izymtea5koug9 in zt0qifkqm2z0h2sft52.reversed) {
      if (izymtea5koug9 is! Map) continue;
      final d44uczl2o0dawbh = izymtea5koug9['message'];
      if (d44uczl2o0dawbh is! Map) continue;
      final jzveyu4o68udt67 = d44uczl2o0dawbh['content'];
      if (jzveyu4o68udt67 is String && jzveyu4o68udt67.trim().isNotEmpty) {
        return jzveyu4o68udt67;
      }
    }
    return null;
  }

  String? _siwem537xap9i3id(dynamic wcxrasiig1ip0qzyip9) {
    if (wcxrasiig1ip0qzyip9 is String) return wcxrasiig1ip0qzyip9;
    if (wcxrasiig1ip0qzyip9 is List) {
      for (final gmsq18in5w4fpe0pulpahq3o in wcxrasiig1ip0qzyip9.reversed) {
        final lf54zqm33gbl95w6 = _siwem537xap9i3id(gmsq18in5w4fpe0pulpahq3o);
        if (lf54zqm33gbl95w6 != null && lf54zqm33gbl95w6.trim().isNotEmpty) {
          return lf54zqm33gbl95w6;
        }
      }
    }
    if (wcxrasiig1ip0qzyip9 is Map) {
      const vyplkhl8awb0f5gh7e2d = <String>[
        'answer',
        'content',
        'text',
        'result',
        'data',
        'output',
        'choices',
      ];
      for (final nmfs67lokwg6 in vyplkhl8awb0f5gh7e2d) {
        if (!wcxrasiig1ip0qzyip9.containsKey(nmfs67lokwg6)) continue;
        final f4r024iw1j8at66w89v8gnn = _siwem537xap9i3id(
          wcxrasiig1ip0qzyip9[nmfs67lokwg6],
        );
        if (f4r024iw1j8at66w89v8gnn != null &&
            f4r024iw1j8at66w89v8gnn.trim().isNotEmpty) {
          return f4r024iw1j8at66w89v8gnn;
        }
      }
    }
    return null;
  }

  Future<String> _umy4ihztf69yrslo1pqoem() async {
    final ltnbmaps1ngdc62egahmgg2 = SharedPreferencesAsync();
    final d6u1tf4k9abbevhno = await ltnbmaps1ngdc62egahmgg2.getString(
      _q6cauhrdrgcruwppxpe9xv1,
    );
    final fw1we5cvg6a33dexr0wzgtw =
        d6u1tf4k9abbevhno != null && d6u1tf4k9abbevhno.isNotEmpty
        ? d6u1tf4k9abbevhno
        : _ec0129fg4umu4lkcgubo(32);
    final k9gz5pic22x8dg = Platform.isIOS
        ? await CokiSwimmingO1dj21lfjmwd1resn6y32nl.lncp2qks6dqvsgll9(
            o5ojb1o6s15eh9hmpdv: fw1we5cvg6a33dexr0wzgtw,
          )
        : fw1we5cvg6a33dexr0wzgtw;
    if (d6u1tf4k9abbevhno != k9gz5pic22x8dg) {
      await ltnbmaps1ngdc62egahmgg2.setString(
        _q6cauhrdrgcruwppxpe9xv1,
        k9gz5pic22x8dg,
      );
    }
    return k9gz5pic22x8dg;
  }

  String _ec0129fg4umu4lkcgubo(int kwn24mzabbrlz24a5) {
    const ybrhwdratfu22038c = '0123456789abcdef';
    return List<String>.generate(
      kwn24mzabbrlz24a5,
      (_) =>
          ybrhwdratfu22038c[_lvy7so694wgrd60.nextInt(ybrhwdratfu22038c.length)],
    ).join();
  }
}
