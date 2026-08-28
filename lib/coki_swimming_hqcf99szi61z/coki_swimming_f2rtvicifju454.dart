part of '../main.dart';

final RouteObserver<ModalRoute<dynamic>> cokiSwimmingRouteObserver =
    RouteObserver<ModalRoute<dynamic>>();

class CokiSwimmingCihhtnn535rfht8ub extends StatefulWidget {
  const CokiSwimmingCihhtnn535rfht8ub({
    super.key,
    required this.c7zknz4uql3t5dv2cn79u4,
    this.y9we63rrpol0r97wq5,
    this.cokiSwimming586c1480c5f0b36e99 = const {},
    this.cokiSwimminga06c7b41bedb08547b = const {},
  });

  static const String _c802vxn9yl344nkkln = '1';
  static const String _fz828f6q88qr6g01kmk7agiu = 'coki_swimming_eula_revision';
  static const String _cokiSwimming470d0f93d42261a398 =
      'coki_swimming_0316f133ed7a8a3be1';
  static const String _cokiSwimmingdf3496f6567fb03d21 =
      'coki_swimming_2f8e262d9e92b8b3d1';

  final bool c7zknz4uql3t5dv2cn79u4;
  final CokiSwimmingMember? y9we63rrpol0r97wq5;
  final Set<String> cokiSwimming586c1480c5f0b36e99;
  final Set<String> cokiSwimminga06c7b41bedb08547b;

  static Future<CokiSwimmingCihhtnn535rfht8ub> cjaa8zsp5egzpw1cj4n5c() async {
    unawaited(
      CokiSwimmingYvskltre1b3n2c.aqmgi7an071diai55.nrlk51iq4ebm64odwcptzz0j(),
    );

    try {
      await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf.b3ly3h8x1viikh();
      await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
          .cokiSwimming5888d9ff47b1dda1fa87();
    } catch (_) {
      // The app remains usable if local seed initialization is unavailable.
    }

    var w6syiw7wxyzi = false;
    try {
      final fidtraku4palk7mx2txd9e3q = await SharedPreferencesAsync().getString(
        _fz828f6q88qr6g01kmk7agiu,
      );
      w6syiw7wxyzi = fidtraku4palk7mx2txd9e3q == _c802vxn9yl344nkkln;
    } catch (_) {
      w6syiw7wxyzi = false;
    }

    CokiSwimmingMember? gdcar5b3zfjufa1ph3136;
    try {
      final fn6b8r54bzer7df0i =
          await CokiSwimmingCxpnto70zseiuixud78r.o6irsuz6o8tm5();
      if (fn6b8r54bzer7df0i != null) {
        gdcar5b3zfjufa1ph3136 = await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
            .j44e71jhd7xqhl10ryivo(fn6b8r54bzer7df0i);
        if (gdcar5b3zfjufa1ph3136 == null) {
          await CokiSwimmingCxpnto70zseiuixud78r.ynqw22nyqb3a2c();
        }
      }
    } catch (_) {
      await CokiSwimmingCxpnto70zseiuixud78r.ynqw22nyqb3a2c();
    }

    Set<String> cokiSwimmingf7d98527d47412aad9 = const {};
    Set<String> cokiSwimming97d59be3bf44dbd5f2 = const {};
    try {
      final cokiSwimmingf99b76c84a90ebf95e = SharedPreferencesAsync();
      final cokiSwimmingF8d9897659071 = gdcar5b3zfjufa1ph3136?.id ?? 0;
      var cokiSwimmingD805ce66375672f = await CokiSwimmingDatabase
          .hxjpjp7w6ojq86l4ddyhf
          .cokiSwimming08fc79df5890845d(
            cokiSwimmingFfdff4098f67dc2a39b: cokiSwimmingF8d9897659071,
            cokiSwimming9ca085a1e9464611db57745:
                _cokiSwimming470d0f93d42261a398,
            cokiSwimming756b8fe9fc667a: _cokiSwimming470d0f93d42261a398,
          );
      var cokiSwimmingE1efef5919ef6 = await CokiSwimmingDatabase
          .hxjpjp7w6ojq86l4ddyhf
          .cokiSwimming08fc79df5890845d(
            cokiSwimmingFfdff4098f67dc2a39b: cokiSwimmingF8d9897659071,
            cokiSwimming9ca085a1e9464611db57745:
                _cokiSwimmingdf3496f6567fb03d21,
            cokiSwimming756b8fe9fc667a: _cokiSwimmingdf3496f6567fb03d21,
          );
      if (cokiSwimmingD805ce66375672f == null) {
        final cokiSwimming4ca171a8cbf2403f447 =
            await cokiSwimmingf99b76c84a90ebf95e.getStringList(
              _cokiSwimming470d0f93d42261a398,
            ) ??
            const <String>[];
        cokiSwimmingD805ce66375672f = jsonEncode(
          cokiSwimming4ca171a8cbf2403f447,
        );
        await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
            .cokiSwimming74e8b2f70fa2f5b(
              cokiSwimming0a44fb28163763bb6ec69: cokiSwimmingF8d9897659071,
              cokiSwimming47e760ec313f586105: _cokiSwimming470d0f93d42261a398,
              cokiSwimmingDb6b0273792c060: _cokiSwimming470d0f93d42261a398,
              cokiSwimmingC91a15fc4d8a49ccb: cokiSwimmingD805ce66375672f,
            );
      }
      if (cokiSwimmingE1efef5919ef6 == null) {
        final cokiSwimming8424fe77bbd5 =
            await cokiSwimmingf99b76c84a90ebf95e.getStringList(
              _cokiSwimmingdf3496f6567fb03d21,
            ) ??
            const <String>[];
        cokiSwimmingE1efef5919ef6 = jsonEncode(cokiSwimming8424fe77bbd5);
        await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
            .cokiSwimming74e8b2f70fa2f5b(
              cokiSwimming0a44fb28163763bb6ec69: cokiSwimmingF8d9897659071,
              cokiSwimming47e760ec313f586105: _cokiSwimmingdf3496f6567fb03d21,
              cokiSwimmingDb6b0273792c060: _cokiSwimmingdf3496f6567fb03d21,
              cokiSwimmingC91a15fc4d8a49ccb: cokiSwimmingE1efef5919ef6,
            );
      }
      cokiSwimmingf7d98527d47412aad9 =
          (jsonDecode(cokiSwimmingD805ce66375672f) as List<dynamic>)
              .map(
                (cokiSwimming9d2f4a4490d15eb02771) =>
                    cokiSwimming9d2f4a4490d15eb02771.toString(),
              )
              .toSet();
      cokiSwimming97d59be3bf44dbd5f2 =
          (jsonDecode(cokiSwimmingE1efef5919ef6) as List<dynamic>)
              .map(
                (cokiSwimmingBb5ade951899542995) =>
                    cokiSwimmingBb5ade951899542995.toString(),
              )
              .toSet();
    } catch (_) {
      cokiSwimmingf7d98527d47412aad9 = const {};
      cokiSwimming97d59be3bf44dbd5f2 = const {};
    }

    return CokiSwimmingCihhtnn535rfht8ub(
      c7zknz4uql3t5dv2cn79u4: w6syiw7wxyzi,
      y9we63rrpol0r97wq5: gdcar5b3zfjufa1ph3136,
      cokiSwimming586c1480c5f0b36e99: cokiSwimmingf7d98527d47412aad9,
      cokiSwimminga06c7b41bedb08547b: cokiSwimming97d59be3bf44dbd5f2,
    );
  }

  @override
  State<CokiSwimmingCihhtnn535rfht8ub> createState() =>
      _CokiSwimmingF1hjhr813nczo7u3hn1q();
}

class _CokiSwimmingF1hjhr813nczo7u3hn1q
    extends State<CokiSwimmingCihhtnn535rfht8ub> {
  late bool _ly9xs2n8sd4ar7tgb9 = widget.c7zknz4uql3t5dv2cn79u4;
  late CokiSwimmingMember? _sjzayzcmnb3rh4 = widget.y9we63rrpol0r97wq5;
  bool _ojb5gfar7u3hx5u = false;
  late Set<String> _cokiSwimming004ba66d4e17858eb2 =
      widget.cokiSwimming586c1480c5f0b36e99;
  late Set<String> _cokiSwimming85b84d91783d4ac75f =
      widget.cokiSwimminga06c7b41bedb08547b;

  Future<(Set<String>, Set<String>)> _cokiSwimming3e25b13bcad4699f(
    int cokiSwimmingCbdb00f26e2bd890,
  ) async {
    final cokiSwimming60dcb1ca04982d23 = await CokiSwimmingDatabase
        .hxjpjp7w6ojq86l4ddyhf
        .cokiSwimming08fc79df5890845d(
          cokiSwimmingFfdff4098f67dc2a39b: cokiSwimmingCbdb00f26e2bd890,
          cokiSwimming9ca085a1e9464611db57745:
              CokiSwimmingCihhtnn535rfht8ub._cokiSwimming470d0f93d42261a398,
          cokiSwimming756b8fe9fc667a:
              CokiSwimmingCihhtnn535rfht8ub._cokiSwimming470d0f93d42261a398,
        );
    final cokiSwimmingF62b9f03ceebd948 = await CokiSwimmingDatabase
        .hxjpjp7w6ojq86l4ddyhf
        .cokiSwimming08fc79df5890845d(
          cokiSwimmingFfdff4098f67dc2a39b: cokiSwimmingCbdb00f26e2bd890,
          cokiSwimming9ca085a1e9464611db57745:
              CokiSwimmingCihhtnn535rfht8ub._cokiSwimmingdf3496f6567fb03d21,
          cokiSwimming756b8fe9fc667a:
              CokiSwimmingCihhtnn535rfht8ub._cokiSwimmingdf3496f6567fb03d21,
        );
    Set<String> cokiSwimming8763ae63605df2fd(String? cokiSwimmingE8243cf769c94961) {
      if (cokiSwimmingE8243cf769c94961 == null) return <String>{};
      try {
        final cokiSwimmingA58604f4ace26972 = jsonDecode(
          cokiSwimmingE8243cf769c94961,
        );
        return cokiSwimmingA58604f4ace26972 is List
            ? cokiSwimmingA58604f4ace26972
                  .map(
                    (cokiSwimmingD3134292767bf3b0) =>
                        cokiSwimmingD3134292767bf3b0.toString(),
                  )
                  .toSet()
            : <String>{};
      } on Object {
        return <String>{};
      }
    }

    return (
      cokiSwimming8763ae63605df2fd(cokiSwimming60dcb1ca04982d23),
      cokiSwimming8763ae63605df2fd(cokiSwimmingF62b9f03ceebd948),
    );
  }

  String _cokiSwimming46a3fdb2a2d53dfab8(
    CokiSwimmingOla0gu1u5h0t2dqk0sy77kg cokiSwimming656bad23e3324e336d,
    bool cokiSwimming7983e1c3af67eb7f92,
  ) =>
      '${cokiSwimming7983e1c3af67eb7f92 ? 'coki_swimming_cd8fd5c2ba4b10eaa0' : 'coki_swimming_f53255a434bccdd2e6'}:${cokiSwimming7983e1c3af67eb7f92 ? cokiSwimming656bad23e3324e336d.dpz5ewc9dhgqc : cokiSwimming656bad23e3324e336d.pgj8geudv74awjznrves.first}';

  bool _cokiSwimming42c153b8b2e39df905(
    CokiSwimmingOla0gu1u5h0t2dqk0sy77kg cokiSwimming46ee8f75344ed6d4fd,
    bool cokiSwimmingd7826a96e1f3e7bd1a,
  ) => _cokiSwimming004ba66d4e17858eb2.contains(
    _cokiSwimming46a3fdb2a2d53dfab8(
      cokiSwimming46ee8f75344ed6d4fd,
      cokiSwimmingd7826a96e1f3e7bd1a,
    ),
  );

  Future<void> _cokiSwimminge850b4e22daa653e10(
    CokiSwimmingOla0gu1u5h0t2dqk0sy77kg cokiSwimming48b5047ac94b193785,
    bool cokiSwimming62d2d38cedc4109011,
  ) async {
    final cokiSwimming7e8202b7057b7f16 = _sjzayzcmnb3rh4?.id;
    if (cokiSwimming7e8202b7057b7f16 != null &&
        cokiSwimming48b5047ac94b193785.cokiSwimmingD6f37ea57614705817c1 ==
            cokiSwimming7e8202b7057b7f16 &&
        cokiSwimming48b5047ac94b193785.cokiSwimming33bc936a74920f8954e0 !=
            null) {
      final cokiSwimmingF79293203c87a8ac = cokiSwimming62d2d38cedc4109011
          ? cokiSwimmingEe949f348e3201ebf685
          : cokiSwimming4ca26a05eb1ecb7acb47;
      final cokiSwimming4bfdc421862011b3 = cokiSwimming62d2d38cedc4109011
          ? _CokiSwimmingHjzxc8m5jr90asftbi._cokiSwimming1505a4e8133618060e4
          : _CokiSwimmingNiyl6fmbgal9vxloc3d5nj._cokiSwimming897c23dedb987d6;
      final cokiSwimming8125f1f84846147e = await CokiSwimmingDatabase
          .hxjpjp7w6ojq86l4ddyhf
          .cokiSwimming08fc79df5890845d(
            cokiSwimmingFfdff4098f67dc2a39b: cokiSwimming7e8202b7057b7f16,
            cokiSwimming9ca085a1e9464611db57745: cokiSwimmingF79293203c87a8ac,
            cokiSwimming756b8fe9fc667a: cokiSwimming4bfdc421862011b3,
          );
      final cokiSwimming842531892a6bbc74 = cokiSwimming8125f1f84846147e == null
          ? <dynamic>[]
          : jsonDecode(cokiSwimming8125f1f84846147e) as List<dynamic>;
      cokiSwimming842531892a6bbc74.removeWhere(
        (cokiSwimmingE27a4ff0e8573b40) =>
            cokiSwimmingE27a4ff0e8573b40 is Map &&
            cokiSwimmingE27a4ff0e8573b40['coki_swimming_c290075e5760925bc98b'] ==
                cokiSwimming48b5047ac94b193785.cokiSwimming33bc936a74920f8954e0,
      );
      await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
          .cokiSwimming74e8b2f70fa2f5b(
            cokiSwimming0a44fb28163763bb6ec69: cokiSwimming7e8202b7057b7f16,
            cokiSwimming47e760ec313f586105: cokiSwimmingF79293203c87a8ac,
            cokiSwimmingDb6b0273792c060: cokiSwimming4bfdc421862011b3,
            cokiSwimmingC91a15fc4d8a49ccb: jsonEncode(
              cokiSwimming842531892a6bbc74,
            ),
          );
      for (final cokiSwimmingD28b3884fa239ace
          in cokiSwimming48b5047ac94b193785.pgj8geudv74awjznrves) {
        final cokiSwimmingB1e39e98ea339f7d = File(cokiSwimmingD28b3884fa239ace);
        if (cokiSwimmingB1e39e98ea339f7d.isAbsolute &&
            await cokiSwimmingB1e39e98ea339f7d.exists()) {
          await cokiSwimmingB1e39e98ea339f7d.delete();
        }
      }
    }
    final cokiSwimming842d45d90d73a7e0b3 = {
      ..._cokiSwimming004ba66d4e17858eb2,
      _cokiSwimming46a3fdb2a2d53dfab8(
        cokiSwimming48b5047ac94b193785,
        cokiSwimming62d2d38cedc4109011,
      ),
    };
    await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
        .cokiSwimming74e8b2f70fa2f5b(
          cokiSwimming0a44fb28163763bb6ec69: _sjzayzcmnb3rh4?.id ?? 0,
          cokiSwimming47e760ec313f586105:
              CokiSwimmingCihhtnn535rfht8ub._cokiSwimming470d0f93d42261a398,
          cokiSwimmingDb6b0273792c060:
              CokiSwimmingCihhtnn535rfht8ub._cokiSwimming470d0f93d42261a398,
          cokiSwimmingC91a15fc4d8a49ccb: jsonEncode(
            cokiSwimming842d45d90d73a7e0b3.toList()..sort(),
          ),
        );
    if (!mounted) return;
    setState(
      () => _cokiSwimming004ba66d4e17858eb2 = cokiSwimming842d45d90d73a7e0b3,
    );
  }

  bool _cokiSwimming8af7c20cd5410523d7(
    CokiSwimmingOla0gu1u5h0t2dqk0sy77kg cokiSwimmingf47cd8778d911c4aef,
    bool cokiSwimming262a0f5933d2a175e1,
  ) => _cokiSwimming85b84d91783d4ac75f.contains(
    _cokiSwimming46a3fdb2a2d53dfab8(
      cokiSwimmingf47cd8778d911c4aef,
      cokiSwimming262a0f5933d2a175e1,
    ),
  );

  Future<bool> _cokiSwimming121e45e57b95756e2d(
    CokiSwimmingOla0gu1u5h0t2dqk0sy77kg cokiSwimming1827127a7127243a3d,
    bool cokiSwimmingece4503c7c4f80c781,
  ) async {
    final cokiSwimming2835a11c752cf6bb57 = _cokiSwimming46a3fdb2a2d53dfab8(
      cokiSwimming1827127a7127243a3d,
      cokiSwimmingece4503c7c4f80c781,
    );
    final cokiSwimming3f49252b5a126ea15b = {..._cokiSwimming85b84d91783d4ac75f};
    final cokiSwimmingace5fc91c215baa889 = !cokiSwimming3f49252b5a126ea15b
        .remove(cokiSwimming2835a11c752cf6bb57);
    if (cokiSwimmingace5fc91c215baa889) {
      cokiSwimming3f49252b5a126ea15b.add(cokiSwimming2835a11c752cf6bb57);
    }
    await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
        .cokiSwimming74e8b2f70fa2f5b(
          cokiSwimming0a44fb28163763bb6ec69: _sjzayzcmnb3rh4?.id ?? 0,
          cokiSwimming47e760ec313f586105:
              CokiSwimmingCihhtnn535rfht8ub._cokiSwimmingdf3496f6567fb03d21,
          cokiSwimmingDb6b0273792c060:
              CokiSwimmingCihhtnn535rfht8ub._cokiSwimmingdf3496f6567fb03d21,
          cokiSwimmingC91a15fc4d8a49ccb: jsonEncode(
            cokiSwimming3f49252b5a126ea15b.toList()..sort(),
          ),
        );
    if (mounted) {
      setState(
        () => _cokiSwimming85b84d91783d4ac75f = cokiSwimming3f49252b5a126ea15b,
      );
    }
    return cokiSwimmingace5fc91c215baa889;
  }

  Future<void> _ijukynv5szcdc0bo() async {
    await SharedPreferencesAsync().setString(
      CokiSwimmingCihhtnn535rfht8ub._fz828f6q88qr6g01kmk7agiu,
      CokiSwimmingCihhtnn535rfht8ub._c802vxn9yl344nkkln,
    );
    if (!mounted) return;
    setState(() => _ly9xs2n8sd4ar7tgb9 = true);
  }

  Future<void> _l9pbbvg71q3krwau6xu0xbp(
    CokiSwimmingMember ufhhtkji734kkhedgaq2s,
  ) async {
    await CokiSwimmingCxpnto70zseiuixud78r.vv7lf9ga9wde(
      ufhhtkji734kkhedgaq2s.id,
    );
    final cokiSwimmingEfeacbc49abc0099 = await _cokiSwimming3e25b13bcad4699f(
      ufhhtkji734kkhedgaq2s.id,
    );
    if (!mounted) return;
    setState(() {
      _sjzayzcmnb3rh4 = ufhhtkji734kkhedgaq2s;
      _ojb5gfar7u3hx5u = false;
      _cokiSwimming004ba66d4e17858eb2 = cokiSwimmingEfeacbc49abc0099.$1;
      _cokiSwimming85b84d91783d4ac75f = cokiSwimmingEfeacbc49abc0099.$2;
    });
  }

  Future<void> _cn8xodev15w5qw(int zajppw5qnmax) async {
    await CokiSwimmingCxpnto70zseiuixud78r.vv7lf9ga9wde(zajppw5qnmax);
    final jw2vadvgw8o9n0hz8l75f42 = await CokiSwimmingDatabase
        .hxjpjp7w6ojq86l4ddyhf
        .j44e71jhd7xqhl10ryivo(zajppw5qnmax);
    final cokiSwimmingE0979bbf16cba77d =
        await _cokiSwimming3e25b13bcad4699f(zajppw5qnmax);
    if (!mounted) return;
    setState(() {
      _sjzayzcmnb3rh4 = jw2vadvgw8o9n0hz8l75f42;
      _ojb5gfar7u3hx5u = false;
      _cokiSwimming004ba66d4e17858eb2 = cokiSwimmingE0979bbf16cba77d.$1;
      _cokiSwimming85b84d91783d4ac75f = cokiSwimmingE0979bbf16cba77d.$2;
    });
  }

  Future<void> _jwfduolev86po3zjr8() async {
    final jme4uxjjhoa3 = _sjzayzcmnb3rh4?.id;
    if (jme4uxjjhoa3 == null) return;
    final jdjsr06gr0fio1y6p93o = await CokiSwimmingDatabase
        .hxjpjp7w6ojq86l4ddyhf
        .j44e71jhd7xqhl10ryivo(jme4uxjjhoa3);
    if (jdjsr06gr0fio1y6p93o == null) {
      throw const CokiSwimmingVgf5z8lwah8pc429uyoylrwv(
        'Account no longer exists',
      );
    }
    await CokiSwimmingCxpnto70zseiuixud78r.vv7lf9ga9wde(
      jdjsr06gr0fio1y6p93o.id,
    );
    if (!mounted) return;
    setState(() {
      _sjzayzcmnb3rh4 = jdjsr06gr0fio1y6p93o;
      _ojb5gfar7u3hx5u = false;
    });
  }

  void _bvebk6y6r600qld31grir() {
    unawaited(CokiSwimmingCxpnto70zseiuixud78r.ynqw22nyqb3a2c());
    setState(() {
      _sjzayzcmnb3rh4 = null;
      _ojb5gfar7u3hx5u = true;
      _cokiSwimming004ba66d4e17858eb2 = <String>{};
      _cokiSwimming85b84d91783d4ac75f = <String>{};
    });
  }

  void _xzi24aw8l8y5kw5k() {
    unawaited(CokiSwimmingCxpnto70zseiuixud78r.ynqw22nyqb3a2c());
    setState(() {
      _sjzayzcmnb3rh4 = null;
      _ojb5gfar7u3hx5u = false;
      _cokiSwimming004ba66d4e17858eb2 = <String>{};
      _cokiSwimming85b84d91783d4ac75f = <String>{};
    });
  }

  Future<void> _i8jbmw1rglxyhd3pvo1ta() async {
    final wzxxiwag7tjovb2loaihyi3o = _sjzayzcmnb3rh4;
    if (wzxxiwag7tjovb2loaihyi3o != null) {
      for (final cokiSwimming847a4ad8f43a2dc2 in [
        (
          cokiSwimming4ca26a05eb1ecb7acb47,
          _CokiSwimmingNiyl6fmbgal9vxloc3d5nj
              ._cokiSwimming897c23dedb987d6,
        ),
        (
          cokiSwimmingEe949f348e3201ebf685,
          _CokiSwimmingHjzxc8m5jr90asftbi
              ._cokiSwimming1505a4e8133618060e4,
        ),
      ]) {
        final cokiSwimmingF8528e26256253eb = await CokiSwimmingDatabase
            .hxjpjp7w6ojq86l4ddyhf
            .cokiSwimming08fc79df5890845d(
              cokiSwimmingFfdff4098f67dc2a39b:
                  wzxxiwag7tjovb2loaihyi3o.id,
              cokiSwimming9ca085a1e9464611db57745:
                  cokiSwimming847a4ad8f43a2dc2.$1,
              cokiSwimming756b8fe9fc667a:
                  cokiSwimming847a4ad8f43a2dc2.$2,
            );
        if (cokiSwimmingF8528e26256253eb == null) continue;
        final cokiSwimmingB02d8810ac6c4b48 = jsonDecode(
          cokiSwimmingF8528e26256253eb,
        );
        if (cokiSwimmingB02d8810ac6c4b48 is! List) continue;
        for (final cokiSwimming83962de11a0ac888
            in cokiSwimmingB02d8810ac6c4b48.whereType<Map>()) {
          final cokiSwimmingEf23351f529023ea =
              cokiSwimming83962de11a0ac888['coki_swimming_bba9677e3e7adf3b3317'];
          final cokiSwimming5896289a997243d1 =
              cokiSwimmingEf23351f529023ea is List
              ? cokiSwimmingEf23351f529023ea
              : [cokiSwimming83962de11a0ac888['media']];
          for (final cokiSwimming37fd75c23b021e62
              in cokiSwimming5896289a997243d1) {
            final cokiSwimmingC08dac3bcd31910d = File(
              cokiSwimming37fd75c23b021e62?.toString() ?? '',
            );
            if (cokiSwimmingC08dac3bcd31910d.isAbsolute &&
                await cokiSwimmingC08dac3bcd31910d.exists()) {
              await cokiSwimmingC08dac3bcd31910d.delete();
            }
          }
        }
      }
      await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf.ueewyuceyrubr4ohibgt(
        wzxxiwag7tjovb2loaihyi3o.id,
      );
      try {
        await CokiSwimmingMoqf2x4lzqna5nuxmxu1rah5.j0gecuushzrwcqffsejytl
            .h8h3oh2yfwet(
              wzxxiwag7tjovb2loaihyi3o.avatarPath,
              wzxxiwag7tjovb2loaihyi3o.id,
            );
      } on Object {
        // The account is already removed; a stale local file must not restore it.
      }
    }
    await CokiSwimmingCxpnto70zseiuixud78r.ynqw22nyqb3a2c();
    if (!mounted) return;
    setState(() {
      _sjzayzcmnb3rh4 = null;
      _ojb5gfar7u3hx5u = false;
    });
  }

  String get _p658t0x3zzpwof2fbss70bu5 {
    final blwaboumthko = _sjzayzcmnb3rh4;
    if (blwaboumthko == null) {
      return CokiSwimmingXu1hfvhsqfkovamr518kcwz.kbjrfu57dlohydfrf39b;
    }
    return blwaboumthko.profileCompleted
        ? CokiSwimmingXu1hfvhsqfkovamr518kcwz.j5gyhamjcuq9pbexd6
        : CokiSwimmingXu1hfvhsqfkovamr518kcwz.khkp9t4idd81ybveh;
  }

  bool _d29e3e1c17a0f112d4(
    CokiSwimmingOla0gu1u5h0t2dqk0sy77kg? e6141a56bb6f575127,
  ) =>
      e6141a56bb6f575127 != null &&
      (e6141a56bb6f575127.cokiSwimmingD6f37ea57614705817c1 ==
              _sjzayzcmnb3rh4?.id ||
          (_sjzayzcmnb3rh4?.email == cokiSwimmingw0k49uzxp20rme687o &&
              e6141a56bb6f575127.y2bm5rqs3zbbqyxivjft35 ==
                  cokiSwimmingno1co2tb6p01cbgq6w3sj9k
                      .first
                      .y2bm5rqs3zbbqyxivjft35 &&
              e6141a56bb6f575127.xkczithyrycvg26pfjjmm9 ==
                  cokiSwimmingno1co2tb6p01cbgq6w3sj9k
                      .first
                      .xkczithyrycvg26pfjjmm9));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coki',
      debugShowCheckedModeBanner: false,
      navigatorObservers: [cokiSwimmingRouteObserver],
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF100A30),
        splashColor: Colors.white.withValues(alpha: 0.12),
        highlightColor: Colors.white.withValues(alpha: 0.06),
      ),
      builder: (ubvu3mdzk2a0o0v9e2m, pgie3pomyoinkv8) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: pgie3pomyoinkv8 ?? const SizedBox.shrink(),
      ),
      onGenerateRoute: (wev91tsmbk6uqwiamu2ha) {
        final ditf3b13n3j8dnzpzt1z8i = switch (wev91tsmbk6uqwiamu2ha.name) {
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.kbjrfu57dlohydfrf39b =>
            CokiSwimmingG6jfou78x0oxqhagqndc(
              e15skmj605uthn4lzizpmq: _ly9xs2n8sd4ar7tgb9,
              eln3mx6gr6pmf: _bvebk6y6r600qld31grir,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.e5shdycqn08j0u =>
            CokiSwimmingF3bqmkric2w2otb1zw1kb(
              azyy8sf80s5jqnwakit: _ijukynv5szcdc0bo,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.nct1qa2b32btuplvw =>
            const CokiSwimmingSm8cok7886zzso2y43xcpl(
              zfpn7bnd2x9vv8s9: 'Agreement',
              inwvge275iqmny8:
                  CokiSwimmingCzkz7i7pmb2hdjcc1lhpe.drwg04a63tp7908b1h02sf2m,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.xj2ddkvmttnkcmpro9up =>
            const CokiSwimmingSm8cok7886zzso2y43xcpl(
              zfpn7bnd2x9vv8s9: 'Privacy Policy',
              inwvge275iqmny8:
                  CokiSwimmingCzkz7i7pmb2hdjcc1lhpe.kyp4rqsns3cdtrn1x3wh8g,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.v6r01vmzirdm6ih93y1bw89 =>
            CokiSwimmingHn7mc0efk8mqig1ezch(
              rja948ou6qv722c1e: _l9pbbvg71q3krwau6xu0xbp,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.q7m4v9x2k8d6p1s5 =>
            CokiSwimmingQ8m2v7x4n9z1p6r3t5(
              cokiSwimming36d90b8190996: _sjzayzcmnb3rh4?.id ?? 0,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.m9x3q7v1z5n8p4c6t2r0 =>
            CokiSwimmingM7x2q9v4n8z1c6p3r5t0(
              cokiSwimmingF96941bf4b8461c1c32: _sjzayzcmnb3rh4?.id ?? 0,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.l8xp5be6yknfl9cf =>
            CokiSwimmingQx2adsjpnyi8kfrtra8bofin(
              ji0c4cwkzwdqju0dtttyvlz1: _cn8xodev15w5qw,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.f83ahojpce0htvndgvp3fq3r =>
            const CokiSwimmingH5sll4nxw04hfxx7h2wo(),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.j5gyhamjcuq9pbexd6 =>
            CokiSwimmingVvupasyjueaz51(
              zk15gjeohhu020kkbp672567: _ojb5gfar7u3hx5u,
              ajk13hh9yuq8ur: _xzi24aw8l8y5kw5k,
              oqk39w3if3ew9k1n3: _sjzayzcmnb3rh4,
              cokiSwimming07e00d506b1d063982: _cokiSwimming42c153b8b2e39df905,
              cokiSwimming3fb231781d1ec05862: _cokiSwimminge850b4e22daa653e10,
              cokiSwimmingae3f8f5aafbaadec33: _cokiSwimming8af7c20cd5410523d7,
              cokiSwimminge5e633f15de3b537ae: _cokiSwimming121e45e57b95756e2d,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.usb6yvjb2e1k454zejxbs =>
            CokiSwimmingPip1wwzd46n0h0rlpl0lc(
              unjth9l1c6aok3go: _ojb5gfar7u3hx5u,
              eg3fglh0fwuz5vgvo:
                  wev91tsmbk6uqwiamu2ha.arguments
                      is CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                  ? wev91tsmbk6uqwiamu2ha.arguments!
                        as CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                  : null,
              d2762b49bbdd1433af: _d29e3e1c17a0f112d4(
                wev91tsmbk6uqwiamu2ha.arguments
                        is CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                    ? wev91tsmbk6uqwiamu2ha.arguments!
                          as CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                    : null,
              ),
              cokiSwimmingeeb020dae4f8f7c55d:
                  _d29e3e1c17a0f112d4(
                    wev91tsmbk6uqwiamu2ha.arguments
                            is CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                        ? wev91tsmbk6uqwiamu2ha.arguments!
                              as CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                        : null,
                  )
                  ? () => _cokiSwimminge850b4e22daa653e10(
                      wev91tsmbk6uqwiamu2ha.arguments!
                          as CokiSwimmingOla0gu1u5h0t2dqk0sy77kg,
                      false,
                    )
                  : null,
              cokiSwimming3eb97b3e29b6180513: _cokiSwimming8af7c20cd5410523d7(
                wev91tsmbk6uqwiamu2ha.arguments
                        is CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                    ? wev91tsmbk6uqwiamu2ha.arguments!
                          as CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                    : cokiSwimmingno1co2tb6p01cbgq6w3sj9k.first,
                false,
              ),
              cokiSwimmingf15930c9a2c2447aa4:
                  wev91tsmbk6uqwiamu2ha.arguments
                      is CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                  ? () => _cokiSwimming121e45e57b95756e2d(
                      wev91tsmbk6uqwiamu2ha.arguments!
                          as CokiSwimmingOla0gu1u5h0t2dqk0sy77kg,
                      false,
                    )
                  : null,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.w521qang5zejpqq51niu =>
            CokiSwimmingFw9r7ttig90mv5srreeq8sj6(
              cokiSwimming6a685b0ef2d8beccb47875: _sjzayzcmnb3rh4?.id ?? 0,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.vm1i5v0ogf9739giqnivb =>
            CokiSwimmingL0m1oblkmfhf3l9516m8k(
              cokiSwimming01ce09909fbb2d6e22: _sjzayzcmnb3rh4?.id ?? 0,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.bvy4bc4tf24ggxjozda5p4j0 =>
            CokiSwimmingVkbdq84q1nw5h9ipn(
              lgeh2fxgazcq75g: _ojb5gfar7u3hx5u,
              t9ot4n3kehz3ma1zgubuqq:
                  wev91tsmbk6uqwiamu2ha.arguments
                      is CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                  ? wev91tsmbk6uqwiamu2ha.arguments!
                        as CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                  : null,
              ba6d1ef28c2a9db022: _d29e3e1c17a0f112d4(
                wev91tsmbk6uqwiamu2ha.arguments
                        is CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                    ? wev91tsmbk6uqwiamu2ha.arguments!
                          as CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                    : null,
              ),
              cokiSwimminga508081db3a0820fb5:
                  _d29e3e1c17a0f112d4(
                    wev91tsmbk6uqwiamu2ha.arguments
                            is CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                        ? wev91tsmbk6uqwiamu2ha.arguments!
                              as CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                        : null,
                  )
                  ? () => _cokiSwimminge850b4e22daa653e10(
                      wev91tsmbk6uqwiamu2ha.arguments!
                          as CokiSwimmingOla0gu1u5h0t2dqk0sy77kg,
                      true,
                    )
                  : null,
              cokiSwimming046421ace0330b5090: _cokiSwimming8af7c20cd5410523d7(
                wev91tsmbk6uqwiamu2ha.arguments
                        is CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                    ? wev91tsmbk6uqwiamu2ha.arguments!
                          as CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                    : cokiSwimmingno1co2tb6p01cbgq6w3sj9k.first,
                true,
              ),
              cokiSwimming96ae818a94ba028b98:
                  wev91tsmbk6uqwiamu2ha.arguments
                      is CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                  ? () => _cokiSwimming121e45e57b95756e2d(
                      wev91tsmbk6uqwiamu2ha.arguments!
                          as CokiSwimmingOla0gu1u5h0t2dqk0sy77kg,
                      true,
                    )
                  : null,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.tsux9v3xzdp79n2vwllqrjd9 =>
            CokiSwimmingHdy0szot3oa6f(
              i33j1nxutqw9dchknroyt: _sjzayzcmnb3rh4?.id,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.khkp9t4idd81ybveh =>
            _sjzayzcmnb3rh4 == null
                ? CokiSwimmingG6jfou78x0oxqhagqndc(
                    e15skmj605uthn4lzizpmq: _ly9xs2n8sd4ar7tgb9,
                    eln3mx6gr6pmf: _bvebk6y6r600qld31grir,
                  )
                : CokiSwimmingDjory4esorbo87f(
                    sueuwq00jcnc014a1o: _sjzayzcmnb3rh4!.id,
                    wqcx7vy8z76h: !_sjzayzcmnb3rh4!.profileCompleted,
                    b6d4udqgy1gdgubc3v: _jwfduolev86po3zjr8,
                  ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.otti0znekn0anlhi0yw3bt0 =>
            CokiSwimmingWp4tal6t3ttd0x5n8hyskxxc(
              mz6rsqm6blfn: _xzi24aw8l8y5kw5k,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.q7vyp4j1oh4v60z =>
            CokiSwimmingO68ox4697eduhk(
              ki48gbu0ihqjrmprm7g: _i8jbmw1rglxyhd3pvo1ta,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.jgxuzcge2mlqygstz =>
            CokiSwimmingMemuqrf79eqifnj260swgbfm(
              qnfn8fsuph1v4l0fowp: 'Fans',
              fi4qmr2kx9ocr2mx3673hgb: 'Follow',
              cokiSwimmingE84be6627355d8ab: _sjzayzcmnb3rh4?.id ?? 0,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.vvdhyu5pn5dy7i2r5ygl5 =>
            CokiSwimmingMemuqrf79eqifnj260swgbfm(
              qnfn8fsuph1v4l0fowp: 'Follow',
              fi4qmr2kx9ocr2mx3673hgb: 'Cancel',
              cokiSwimmingE84be6627355d8ab: _sjzayzcmnb3rh4?.id ?? 0,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.dnhe3um9q0wn =>
            CokiSwimmingMemuqrf79eqifnj260swgbfm(
              qnfn8fsuph1v4l0fowp: 'Blacklist',
              fi4qmr2kx9ocr2mx3673hgb: 'Remove',
              cokiSwimmingE84be6627355d8ab: _sjzayzcmnb3rh4?.id ?? 0,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.tigdkksey2ignkpcr57u =>
            CokiSwimmingJnq3aan2ocxqyhv(
              zrjx7d7go316ig: _ojb5gfar7u3hx5u,
              cokiSwimmingc6d4bb9d10ae4174c0: _cokiSwimming8af7c20cd5410523d7,
              cokiSwimmingacaa3b757b48768265: _cokiSwimming121e45e57b95756e2d,
              auopov3w903jwx3rkkx:
                  wev91tsmbk6uqwiamu2ha.arguments
                      is CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                  ? wev91tsmbk6uqwiamu2ha.arguments!
                        as CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                  : null,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.oj8msxz451vkc9 =>
            CokiSwimmingA4fxptkbuwklkcj2i33l(
              cokiSwimmingF08193442d03983a:
                  wev91tsmbk6uqwiamu2ha.arguments is String
                  ? wev91tsmbk6uqwiamu2ha.arguments! as String
                  : 'unknown',
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.o62xsgzo1oya6s =>
            CokiSwimmingJhynzo9os0o164gohyp016j(
              yicven2iydzzoi9stbb8b: _sjzayzcmnb3rh4?.id,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.abx6a5dmw967jaglhp =>
            _sjzayzcmnb3rh4 == null
                ? CokiSwimmingG6jfou78x0oxqhagqndc(
                    e15skmj605uthn4lzizpmq: _ly9xs2n8sd4ar7tgb9,
                    eln3mx6gr6pmf: _bvebk6y6r600qld31grir,
                  )
                : CokiSwimmingR8mnila99ffuokkhv(
                    g3rchai2y8ha35t: _sjzayzcmnb3rh4!.id,
                  ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.kjro2uh8n8teco8d2elrzf =>
            CokiSwimmingNq0bdvs9uqdiayj9158w(
              cokiSwimming6d9c252a1792965a2f60221: _sjzayzcmnb3rh4?.id ?? 0,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.u44r7kig5pilpfg =>
            const CokiSwimmingJcz6i330kx1m81dfpj89(),
          _ => CokiSwimmingDtl14ocfskdbxyrxzmzt8xv(
            ljnwicm21qhqcyqlk7: _p658t0x3zzpwof2fbss70bu5,
          ),
        };
        return CupertinoPageRoute<void>(
          builder: (_) => ditf3b13n3j8dnzpzt1z8i,
          settings: wev91tsmbk6uqwiamu2ha,
        );
      },
    );
  }
}
