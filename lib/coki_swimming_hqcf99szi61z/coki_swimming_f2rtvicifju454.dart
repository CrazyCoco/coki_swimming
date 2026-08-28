part of '../main.dart';

final RouteObserver<ModalRoute<dynamic>> cokiSwimmingRouteObserver =
    RouteObserver<ModalRoute<dynamic>>();

class CokiSwimmingCihhtnn535rfht8ub extends StatefulWidget {
  const CokiSwimmingCihhtnn535rfht8ub({
    super.key,
    required this.c7zknz4uql3t5dv2cn79u4,
    this.y9we63rrpol0r97wq5,
  });

  static const String _c802vxn9yl344nkkln = '1';
  static const String _fz828f6q88qr6g01kmk7agiu = 'coki_swimming_eula_revision';

  final bool c7zknz4uql3t5dv2cn79u4;
  final CokiSwimmingMember? y9we63rrpol0r97wq5;

  static Future<CokiSwimmingCihhtnn535rfht8ub> cjaa8zsp5egzpw1cj4n5c() async {
    unawaited(
      CokiSwimmingYvskltre1b3n2c.aqmgi7an071diai55.nrlk51iq4ebm64odwcptzz0j(),
    );

    try {
      await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf.b3ly3h8x1viikh();
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

    return CokiSwimmingCihhtnn535rfht8ub(
      c7zknz4uql3t5dv2cn79u4: w6syiw7wxyzi,
      y9we63rrpol0r97wq5: gdcar5b3zfjufa1ph3136,
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
    if (!mounted) return;
    setState(() {
      _sjzayzcmnb3rh4 = ufhhtkji734kkhedgaq2s;
      _ojb5gfar7u3hx5u = false;
    });
  }

  Future<void> _cn8xodev15w5qw(int zajppw5qnmax) async {
    await CokiSwimmingCxpnto70zseiuixud78r.vv7lf9ga9wde(zajppw5qnmax);
    final jw2vadvgw8o9n0hz8l75f42 = await CokiSwimmingDatabase
        .hxjpjp7w6ojq86l4ddyhf
        .j44e71jhd7xqhl10ryivo(zajppw5qnmax);
    if (!mounted) return;
    setState(() {
      _sjzayzcmnb3rh4 = jw2vadvgw8o9n0hz8l75f42;
      _ojb5gfar7u3hx5u = false;
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
    });
  }

  void _xzi24aw8l8y5kw5k() {
    unawaited(CokiSwimmingCxpnto70zseiuixud78r.ynqw22nyqb3a2c());
    setState(() {
      _sjzayzcmnb3rh4 = null;
      _ojb5gfar7u3hx5u = false;
    });
  }

  Future<void> _i8jbmw1rglxyhd3pvo1ta() async {
    final wzxxiwag7tjovb2loaihyi3o = _sjzayzcmnb3rh4;
    if (wzxxiwag7tjovb2loaihyi3o != null) {
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
        onTap: FocusManager.instance.primaryFocus?.unfocus,
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
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.w521qang5zejpqq51niu =>
            const CokiSwimmingFw9r7ttig90mv5srreeq8sj6(),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.vm1i5v0ogf9739giqnivb =>
            const CokiSwimmingL0m1oblkmfhf3l9516m8k(),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.bvy4bc4tf24ggxjozda5p4j0 =>
            CokiSwimmingVkbdq84q1nw5h9ipn(
              lgeh2fxgazcq75g: _ojb5gfar7u3hx5u,
              t9ot4n3kehz3ma1zgubuqq:
                  wev91tsmbk6uqwiamu2ha.arguments
                      is CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                  ? wev91tsmbk6uqwiamu2ha.arguments!
                        as CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
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
            const CokiSwimmingMemuqrf79eqifnj260swgbfm(
              qnfn8fsuph1v4l0fowp: 'Fans',
              fi4qmr2kx9ocr2mx3673hgb: 'Follow',
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.vvdhyu5pn5dy7i2r5ygl5 =>
            const CokiSwimmingMemuqrf79eqifnj260swgbfm(
              qnfn8fsuph1v4l0fowp: 'Follow',
              fi4qmr2kx9ocr2mx3673hgb: 'Cancel',
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.dnhe3um9q0wn =>
            const CokiSwimmingMemuqrf79eqifnj260swgbfm(
              qnfn8fsuph1v4l0fowp: 'Blacklist',
              fi4qmr2kx9ocr2mx3673hgb: 'Remove',
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.tigdkksey2ignkpcr57u =>
            CokiSwimmingJnq3aan2ocxqyhv(
              zrjx7d7go316ig: _ojb5gfar7u3hx5u,
              auopov3w903jwx3rkkx:
                  wev91tsmbk6uqwiamu2ha.arguments
                      is CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                  ? wev91tsmbk6uqwiamu2ha.arguments!
                        as CokiSwimmingOla0gu1u5h0t2dqk0sy77kg
                  : null,
            ),
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.oj8msxz451vkc9 =>
            const CokiSwimmingA4fxptkbuwklkcj2i33l(),
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
            const CokiSwimmingNq0bdvs9uqdiayj9158w(),
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
