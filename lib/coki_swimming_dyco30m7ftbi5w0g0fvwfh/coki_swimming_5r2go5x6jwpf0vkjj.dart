part of '../main.dart';

class CokiSwimmingDjory4esorbo87f extends StatefulWidget {
  const CokiSwimmingDjory4esorbo87f({
    super.key,
    required this.sueuwq00jcnc014a1o,
    required this.wqcx7vy8z76h,
    required this.b6d4udqgy1gdgubc3v,
  });

  final int sueuwq00jcnc014a1o;
  final bool wqcx7vy8z76h;
  final Future<void> Function() b6d4udqgy1gdgubc3v;

  @override
  State<CokiSwimmingDjory4esorbo87f> createState() =>
      _CokiSwimmingSpvl56dyh901uv5qdxc();
}

class _CokiSwimmingSpvl56dyh901uv5qdxc
    extends State<CokiSwimmingDjory4esorbo87f> {
  final TextEditingController _zjsawco49cig0mp0b8o2sb5r =
      TextEditingController();
  final TextEditingController _doh555a2ricba0geacx = TextEditingController();
  String _t027f2ngv2oxbcti21pb2vdn =
      'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_96c3ybdtsvgb1g.png';
  String? _uus5qlejp2st;
  bool _r1i8hzuzcz393 = true;
  bool _gvup1m1t50hgx0z3gqw2 = false;
  bool _qz5lh2oegom9ikpz5n = false;

  @override
  void initState() {
    super.initState();
    unawaited(_xkugs9wzuhsyof9sz());
  }

  Future<void> _xkugs9wzuhsyof9sz() async {
    try {
      final kf5okc962hw19y = await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
          .j44e71jhd7xqhl10ryivo(widget.sueuwq00jcnc014a1o);
      if (!mounted) return;
      if (kf5okc962hw19y == null) {
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          'Account no longer exists',
        );
        Navigator.of(context).pushNamedAndRemoveUntil(
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.kbjrfu57dlohydfrf39b,
          (wzattdib4uxwvbwz) => false,
        );
        return;
      }
      _zjsawco49cig0mp0b8o2sb5r.text = kf5okc962hw19y.displayName ?? '';
      _doh555a2ricba0geacx.text = kf5okc962hw19y.biography ?? '';
      setState(() {
        _t027f2ngv2oxbcti21pb2vdn =
            kf5okc962hw19y.avatarPath ?? _t027f2ngv2oxbcti21pb2vdn;
        _r1i8hzuzcz393 = false;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() => _r1i8hzuzcz393 = false);
      CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
        context,
        'Unable to load profile',
      );
    }
  }

  Future<void> _xno1rng53bfl362fsgw1v() async {
    if (_gvup1m1t50hgx0z3gqw2 || _r1i8hzuzcz393) return;
    if (_zjsawco49cig0mp0b8o2sb5r.text.trim().isEmpty) {
      CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
        context,
        'Please enter your name',
      );
      return;
    }
    setState(() => _gvup1m1t50hgx0z3gqw2 = true);
    String? z412p2d2hj7ru18mt1pdjxo;
    var of9xnlp1jds9redkdbycxo = false;
    try {
      final rwohkmcmy9kzb4am = _uus5qlejp2st;
      if (rwohkmcmy9kzb4am != null) {
        z412p2d2hj7ru18mt1pdjxo = await CokiSwimmingMoqf2x4lzqna5nuxmxu1rah5
            .j0gecuushzrwcqffsejytl
            .qsb5oa0s3f6dhfjf3vqdx1ah(
              fjfw665hoyjpidxk94ci: rwohkmcmy9kzb4am,
              huimmeu38tic: widget.sueuwq00jcnc014a1o,
            );
      }
      final k0eqp34ifsb2doto0 =
          z412p2d2hj7ru18mt1pdjxo ?? _t027f2ngv2oxbcti21pb2vdn;
      await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf.do0wibd17d529z8of0(
        jteguej9591hg1ho8: widget.sueuwq00jcnc014a1o,
        moou6scfkswil77im7un4: _zjsawco49cig0mp0b8o2sb5r.text,
        eaa480o34fnf: k0eqp34ifsb2doto0,
        yd7sho6kfa08mm5dz4nrsrk: _doh555a2ricba0geacx.text,
      );
      of9xnlp1jds9redkdbycxo = true;
      if (z412p2d2hj7ru18mt1pdjxo != null) {
        await CokiSwimmingMoqf2x4lzqna5nuxmxu1rah5.j0gecuushzrwcqffsejytl
            .h8h3oh2yfwet(_t027f2ngv2oxbcti21pb2vdn, widget.sueuwq00jcnc014a1o);
        _t027f2ngv2oxbcti21pb2vdn = z412p2d2hj7ru18mt1pdjxo;
        _uus5qlejp2st = null;
      }
      await widget.b6d4udqgy1gdgubc3v();
      if (!mounted) return;
      CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(context, 'Saved');
      if (widget.wqcx7vy8z76h) {
        Navigator.of(context).pushNamedAndRemoveUntil(
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.j5gyhamjcuq9pbexd6,
          (gexmwggvliyf) => false,
        );
      } else {
        Navigator.of(context).maybePop();
      }
    } on CokiSwimmingVgf5z8lwah8pc429uyoylrwv catch (error) {
      if (!of9xnlp1jds9redkdbycxo) {
        await CokiSwimmingMoqf2x4lzqna5nuxmxu1rah5.j0gecuushzrwcqffsejytl
            .h8h3oh2yfwet(z412p2d2hj7ru18mt1pdjxo, widget.sueuwq00jcnc014a1o);
      }
      if (mounted) {
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          error.c4iyezrax5jry9k38j7kkbr,
        );
      }
    } catch (_) {
      if (!of9xnlp1jds9redkdbycxo) {
        await CokiSwimmingMoqf2x4lzqna5nuxmxu1rah5.j0gecuushzrwcqffsejytl
            .h8h3oh2yfwet(z412p2d2hj7ru18mt1pdjxo, widget.sueuwq00jcnc014a1o);
      }
      if (mounted) {
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          'Unable to save profile',
        );
      }
    } finally {
      if (mounted) setState(() => _gvup1m1t50hgx0z3gqw2 = false);
    }
  }

  Future<void> _b18dt8jhem7c6d838p674ps() async {
    if (_qz5lh2oegom9ikpz5n || _gvup1m1t50hgx0z3gqw2) return;
    final k0o6qyef3enpx = await CokiSwimmingRtwym9wmdetuorto7.uxp9wn4bxdjeda(
      context,
    );
    if (k0o6qyef3enpx == null || !mounted) return;

    setState(() => _qz5lh2oegom9ikpz5n = true);
    final d7bwc3psdy6p8hd4uoob = await CokiSwimmingMoqf2x4lzqna5nuxmxu1rah5
        .j0gecuushzrwcqffsejytl
        .cil9vlkhbbu64x(k0o6qyef3enpx);
    if (!mounted) return;
    setState(() => _qz5lh2oegom9ikpz5n = false);

    switch (d7bwc3psdy6p8hd4uoob.s8ino37cgs5urhavq3k) {
      case CokiSwimmingAgu703r90i4rdun9b8a07eu1.zbp3eniyd720ii:
        if (d7bwc3psdy6p8hd4uoob.cl6shvp4miod1vh != null) {
          setState(() => _uus5qlejp2st = d7bwc3psdy6p8hd4uoob.cl6shvp4miod1vh);
        }
        break;
      case CokiSwimmingAgu703r90i4rdun9b8a07eu1.i6phxpwdk2a3a6kl3hcrj:
        break;
      case CokiSwimmingAgu703r90i4rdun9b8a07eu1.hhjze8rpndgpsp3t8nfyaia:
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          k0o6qyef3enpx == CokiSwimmingGcnt0jewcf1egxi3.xqv2yjmj3yqx4dg
              ? 'Camera permission is required to take a photo'
              : 'Photo Library permission is required to choose a photo',
        );
        break;
      case CokiSwimmingAgu703r90i4rdun9b8a07eu1.xfylbv3f69742tgubgsh:
        CokiSwimmingR7qb20p0rwuw7.dl5fmb2io0o4apao43(
          context,
          aushougwjesw3a58m7ka:
              k0o6qyef3enpx == CokiSwimmingGcnt0jewcf1egxi3.xqv2yjmj3yqx4dg
              ? 'Camera'
              : 'Photo Library',
        );
        break;
      case CokiSwimmingAgu703r90i4rdun9b8a07eu1.ml7v6nhg8apanpou1b92nq:
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          'The selected photo is unavailable',
        );
        break;
      case CokiSwimmingAgu703r90i4rdun9b8a07eu1.lbqeawmbjqjbyellb:
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          'Unable to select photo',
        );
        break;
    }
  }

  @override
  void dispose() {
    _zjsawco49cig0mp0b8o2sb5r.dispose();
    _doh555a2ricba0geacx.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: !widget.wqcx7vy8z76h,
      child: CokiSwimmingAgdqi717f62hphbv7l95r8v(
        o1wq5mwul0ckiwligeu: Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: true,
          body: SafeArea(
            child: Column(
              children: [
                CokiSwimmingMerb0wr4ijwluplbh(
                  s0dnsxzte0kvc8: widget.wqcx7vy8z76h
                      ? 'Complete profile'
                      : 'Edit',
                  hl27sqlc2hmj68k8xlm4: !widget.wqcx7vy8z76h,
                  t9tn1eyxnipqp842ozhiecw: widget.wqcx7vy8z76h,
                  d1yfqjrxzg71hi7gpb8: true,
                  g8kedxcwq3kcsth35qz8: widget.wqcx7vy8z76h
                      ? null
                      : () => Navigator.of(context).maybePop(),
                ),
                Expanded(
                  child: _r1i8hzuzcz393
                      ? const Center(
                          child: CupertinoActivityIndicator(
                            color: Colors.white,
                          ),
                        )
                      : ListView(
                          keyboardDismissBehavior:
                              ScrollViewKeyboardDismissBehavior.onDrag,
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
                          children: [
                            Center(
                              child: CokiSwimmingKtoozpjuob7rods(
                                kvg85l6uieobzf: BorderRadius.circular(45),
                                gwrsyzojtp84oco1ldhaaw90: () =>
                                    unawaited(_b18dt8jhem7c6d838p674ps()),
                                v6j3bxo2dz4aevlmr: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    CokiSwimmingBskfv8qke498jnw5a9nz(
                                      bvuh7vp0q7jr0o6:
                                          _uus5qlejp2st ??
                                          _t027f2ngv2oxbcti21pb2vdn,
                                      qqonq4itbdxn5jaq8l63c4: 82,
                                    ),
                                    Positioned(
                                      right: -1,
                                      top: -1,
                                      child: Image.asset(
                                        'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_jnit976zkc7i.png',
                                        width: 28,
                                        height: 28,
                                      ),
                                    ),
                                    if (_qz5lh2oegom9ikpz5n)
                                      const Positioned.fill(
                                        child: Center(
                                          child: CupertinoActivityIndicator(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 42),
                            CokiSwimmingH5pg39ahrqsnlroy05t(
                              rjf8j17cujr6k8r7: 'Name',
                              jtbcyvu9u14hcgpjw: 1,
                              ack04s1ztuzmqmgyu8nh: _zjsawco49cig0mp0b8o2sb5r,
                              lxbqnkelefjldysqof: 'Enter your name',
                            ),
                            const SizedBox(height: 25),
                            CokiSwimmingH5pg39ahrqsnlroy05t(
                              rjf8j17cujr6k8r7: 'About me',
                              jtbcyvu9u14hcgpjw: 4,
                              ack04s1ztuzmqmgyu8nh: _doh555a2ricba0geacx,
                            ),
                            const SizedBox(height: 138),
                            Center(
                              child: SizedBox(
                                width: 229,
                                child: CokiSwimmingXjx1kxye89zenp9u(
                                  vnjrt3g80paath: _gvup1m1t50hgx0z3gqw2
                                      ? 'Saving...'
                                      : 'Save',
                                  ouj1nn8u7hkigj89bhzhbjn: _gvup1m1t50hgx0z3gqw2
                                      ? () {}
                                      : _xno1rng53bfl362fsgw1v,
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
