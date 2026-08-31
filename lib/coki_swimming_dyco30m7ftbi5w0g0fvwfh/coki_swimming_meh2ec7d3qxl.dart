part of '../main.dart';

class CokiSwimmingNq0bdvs9uqdiayj9158w extends StatefulWidget {
  const CokiSwimmingNq0bdvs9uqdiayj9158w({
    super.key,
    required this.cokiSwimming6d9c252a1792965a2f60221,
    this.cokiSwimming584cec7f78c5fe,
  });

  final int cokiSwimming6d9c252a1792965a2f60221;
  final CokiSwimmingOla0gu1u5h0t2dqk0sy77kg? cokiSwimming584cec7f78c5fe;

  @override
  State<CokiSwimmingNq0bdvs9uqdiayj9158w> createState() =>
      _CokiSwimmingRlviyh99dh4az0dmn52d5www();
}

class _CokiSwimmingRlviyh99dh4az0dmn52d5www
    extends State<CokiSwimmingNq0bdvs9uqdiayj9158w> {
  static const String _cokiSwimmingDf4bbdd6c54c5a0b721 =
      'coki_swimming_0b07453e76830afdf';
  static const String _cokiSwimming5f7db7cae7fef932 =
      'coki_swimming_53ab0f166745c191:';
  static const String _cokiSwimming8m3q7v1x9p4k6r2t5n0h =
      'coki_swimming_2f81c4d760ea93b:';
  static const Color _jnlm2sle63me1d8zxiad7cs = Color(0xFF100A30);
  static const Color _ezgv195xyhgew = Color(0xFFF1F2F4);
  static const Color _urpbrps7k1hnd5cm = Color(0xFF5BCBEA);
  static const Color _nlagquou59mw1wtc = Color(0xFFD72F63);

  final TextEditingController _w44lr0x0kd6pemmvistd = TextEditingController();
  final ScrollController _z4b0z1mr6soc8zkyijj = ScrollController();
  final List<String> _wbrx0jgemuxppfzmdc4 = [];

  String get _cokiSwimming8d3c11d9da8f =>
      widget.cokiSwimming584cec7f78c5fe?.y2bm5rqs3zbbqyxivjft35 ?? '';

  @override
  void initState() {
    super.initState();
    _cokiSwimming12d41f4f7e27();
  }

  Future<void> _cokiSwimming12d41f4f7e27() async {
    if (_cokiSwimming8d3c11d9da8f.isEmpty) return;
    final cokiSwimmingDbd9d5a644c9b0f = await CokiSwimmingDatabase
        .hxjpjp7w6ojq86l4ddyhf
        .cokiSwimming08fc79df5890845d(
          cokiSwimmingFfdff4098f67dc2a39b:
              widget.cokiSwimming6d9c252a1792965a2f60221,
          cokiSwimming9ca085a1e9464611db57745: _cokiSwimmingDf4bbdd6c54c5a0b721,
          cokiSwimming756b8fe9fc667a: _cokiSwimming8d3c11d9da8f,
        );
    if (cokiSwimmingDbd9d5a644c9b0f == null) return;
    if (!mounted) return;
    final cokiSwimmingA0dad44aab863 = jsonDecode(cokiSwimmingDbd9d5a644c9b0f);
    if (cokiSwimmingA0dad44aab863 is! Map) return;
    final cokiSwimmingDc2861196f219267a545 =
        cokiSwimmingA0dad44aab863['coki_swimming_6298354aa4e11480ad95'];
    if (cokiSwimmingDc2861196f219267a545 is! List) return;
    setState(() {
      _wbrx0jgemuxppfzmdc4
        ..clear()
        ..addAll(
          cokiSwimmingDc2861196f219267a545.map(
            (cokiSwimming00a18a54b11b8aaf9d28) =>
                cokiSwimming00a18a54b11b8aaf9d28.toString(),
          ),
        );
    });
  }

  Future<void> _cokiSwimming995900b6c57c(
    List<String> cokiSwimming60e8693bc274124a4f,
  ) async {
    final cokiSwimming441c5eb15d46396d2557baec =
        widget.cokiSwimming584cec7f78c5fe;
    if (cokiSwimming441c5eb15d46396d2557baec == null) return;
    await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
        .cokiSwimming74e8b2f70fa2f5b(
          cokiSwimming0a44fb28163763bb6ec69:
              widget.cokiSwimming6d9c252a1792965a2f60221,
          cokiSwimming47e760ec313f586105: _cokiSwimmingDf4bbdd6c54c5a0b721,
          cokiSwimmingDb6b0273792c060: _cokiSwimming8d3c11d9da8f,
          cokiSwimmingC91a15fc4d8a49ccb: jsonEncode({
            'coki_swimming_91f58a5ff4ad8b': cokiSwimming441c5eb15d46396d2557baec
                .cokiSwimming4e5227e43dc4c3fab6e2(),
            'coki_swimming_6298354aa4e11480ad95':
                cokiSwimming60e8693bc274124a4f,
          }),
        );
  }

  @override
  void dispose() {
    _w44lr0x0kd6pemmvistd.dispose();
    _z4b0z1mr6soc8zkyijj.dispose();
    super.dispose();
  }

  Future<void> _t2eocks1qg67mpfd41fs0ul() async {
    final qmtl063oafbxby2mrydobe = _w44lr0x0kd6pemmvistd.text.trim();
    if (qmtl063oafbxby2mrydobe.isEmpty) return;

    final cokiSwimmingFf1c5a0ebf8395d3 = [
      ..._wbrx0jgemuxppfzmdc4,
      qmtl063oafbxby2mrydobe,
    ];
    await _cokiSwimming995900b6c57c(cokiSwimmingFf1c5a0ebf8395d3);
    if (!mounted) return;
    setState(() {
      _wbrx0jgemuxppfzmdc4
        ..clear()
        ..addAll(cokiSwimmingFf1c5a0ebf8395d3);
      _w44lr0x0kd6pemmvistd.clear();
    });
    FocusScope.of(context).unfocus();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _uhfcy85fcxxfg3ais5641(),
    );
  }

  Future<void> _cokiSwimming79324c4109a32f18(
    BuildContext cokiSwimmingB627de8701862ce2,
  ) async {
    final cokiSwimming513f21db12e684e6 =
        await CokiSwimmingRtwym9wmdetuorto7.uxp9wn4bxdjeda(
          cokiSwimmingB627de8701862ce2,
        );
    if (cokiSwimming513f21db12e684e6 == null || !mounted) return;
    final cokiSwimming448949904ab2ef15 =
        await CokiSwimmingMoqf2x4lzqna5nuxmxu1rah5.j0gecuushzrwcqffsejytl
            .cil9vlkhbbu64x(cokiSwimming513f21db12e684e6);
    final cokiSwimming8dd2aa6cb108045f =
        cokiSwimming448949904ab2ef15.cl6shvp4miod1vh;
    if (cokiSwimming448949904ab2ef15.s8ino37cgs5urhavq3k !=
            CokiSwimmingAgu703r90i4rdun9b8a07eu1.zbp3eniyd720ii ||
        cokiSwimming8dd2aa6cb108045f == null) {
      return;
    }
    final cokiSwimmingE0619c640ed387c2 =
        await CokiSwimmingMoqf2x4lzqna5nuxmxu1rah5.j0gecuushzrwcqffsejytl
            .cokiSwimming4f02cccd10f0e6f51e(
              cokiSwimming0201c617085ad8e2: cokiSwimming8dd2aa6cb108045f,
              cokiSwimmingF829cc4fef9408bb:
                  widget.cokiSwimming6d9c252a1792965a2f60221,
            );
    final cokiSwimmingC4022ee83411fc5a = [
      ..._wbrx0jgemuxppfzmdc4,
      '$_cokiSwimming5f7db7cae7fef932$cokiSwimmingE0619c640ed387c2',
    ];
    await _cokiSwimming995900b6c57c(cokiSwimmingC4022ee83411fc5a);
    if (!mounted) return;
    setState(() {
      _wbrx0jgemuxppfzmdc4
        ..clear()
        ..addAll(cokiSwimmingC4022ee83411fc5a);
    });
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _uhfcy85fcxxfg3ais5641(),
    );
  }

  Future<void> cokiSwimmingR4v8n2x6m1q7s9d5(
    BuildContext cokiSwimmingV7m3x9q1k5d8s2n6,
  ) async {
    var cokiSwimmingQ6n1v8m4x7s2d9k5 = await Permission.camera.status;
    if (!cokiSwimmingQ6n1v8m4x7s2d9k5.isGranted) {
      cokiSwimmingQ6n1v8m4x7s2d9k5 = await Permission.camera.request();
    }
    if (!cokiSwimmingV7m3x9q1k5d8s2n6.mounted) return;
    var cokiSwimmingD2s7k4m9x1v6n8q5 = await Permission.microphone.status;
    if (cokiSwimmingQ6n1v8m4x7s2d9k5.isGranted &&
        !cokiSwimmingD2s7k4m9x1v6n8q5.isGranted) {
      cokiSwimmingD2s7k4m9x1v6n8q5 = await Permission.microphone.request();
    }
    if (!cokiSwimmingV7m3x9q1k5d8s2n6.mounted) return;
    if (!cokiSwimmingQ6n1v8m4x7s2d9k5.isGranted ||
        !cokiSwimmingD2s7k4m9x1v6n8q5.isGranted) {
      CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
        cokiSwimmingV7m3x9q1k5d8s2n6,
        'Camera and microphone permissions are required for video calls',
        isError: true,
      );
      return;
    }
    Navigator.of(cokiSwimmingV7m3x9q1k5d8s2n6).pushNamed(
      CokiSwimmingXu1hfvhsqfkovamr518kcwz.u44r7kig5pilpfg,
      arguments: widget.cokiSwimming584cec7f78c5fe,
    );
  }

  void _uhfcy85fcxxfg3ais5641() {
    if (!_z4b0z1mr6soc8zkyijj.hasClients) return;
    _z4b0z1mr6soc8zkyijj.animateTo(
      _z4b0z1mr6soc8zkyijj.position.maxScrollExtent,
      duration: const Duration(milliseconds: 260),
      curve: Curves.easeOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _jnlm2sle63me1d8zxiad7cs,
      resizeToAvoidBottomInset: true,
      body: CokiSwimmingAgdqi717f62hphbv7l95r8v(
        o1wq5mwul0ckiwligeu: SafeArea(
          bottom: false,
          child: Column(
            children: [
              _smpn8nukzrt2(context),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: _ezgv195xyhgew,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(child: _nbalmd7taj9360azzz()),
                      _g0makpe0wrl4c1o(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _smpn8nukzrt2(BuildContext wilsyk8xcdbu1z) {
    return SizedBox(
      height: 68,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          children: [
            CokiSwimmingCsp12jwqwwjk3wya4y1(
              detib9wx0a7eitw2731u4e: () => Navigator.of(wilsyk8xcdbu1z).pop(),
            ),
            const SizedBox(width: 7),
            _rthhm2s3frrvoc8(
              widget.cokiSwimming584cec7f78c5fe?.xkczithyrycvg26pfjjmm9 ??
                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_96c3ybdtsvgb1g.png',
              g3n76xdz7lkfqa: 40,
              i8r1randmsblwdymyzr: Colors.white,
              v6lz1z2tt6vy07500z932cs: 1.5,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                widget.cokiSwimming584cec7f78c5fe?.y2bm5rqs3zbbqyxivjft35 ??
                    'Conversation',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  height: 1.1,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            _vp42vz6e9ab37gatesj(
              edzv3l0ltjdopf9ob: 'Photo',
              f5b14gtkuqjlfozyt:
                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_i4l40gq05g8x.png',
              vppa3idrvfph6p3g49u: 32,
              c7slhftcvtpl3nay: () =>
                  _cokiSwimming79324c4109a32f18(wilsyk8xcdbu1z),
            ),
            _vp42vz6e9ab37gatesj(
              edzv3l0ltjdopf9ob: 'Video call',
              f5b14gtkuqjlfozyt:
                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_lbrxbt89w0nhi1d8bqlqtazx.png',
              vppa3idrvfph6p3g49u: 32,
              c7slhftcvtpl3nay: () =>
                  cokiSwimmingR4v8n2x6m1q7s9d5(wilsyk8xcdbu1z),
            ),
            _vp42vz6e9ab37gatesj(
              edzv3l0ltjdopf9ob: 'More',
              f5b14gtkuqjlfozyt:
                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_wf9kctuvxtzds.png',
              vppa3idrvfph6p3g49u: 40,
              c7slhftcvtpl3nay: () =>
                  CokiSwimmingEa33alie83a7ztht03ml6za.v8k18e1fwcihnfevusm4iq(
                    wilsyk8xcdbu1z,
                    cokiSwimming2017dfe9792f0833:
                        widget
                            .cokiSwimming584cec7f78c5fe
                            ?.y2bm5rqs3zbbqyxivjft35 ??
                        'unknown',
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _vp42vz6e9ab37gatesj({
    required String edzv3l0ltjdopf9ob,
    required String f5b14gtkuqjlfozyt,
    required double vppa3idrvfph6p3g49u,
    required VoidCallback c7slhftcvtpl3nay,
  }) {
    return Tooltip(
      message: edzv3l0ltjdopf9ob,
      child: CokiSwimmingKtoozpjuob7rods(
        kvg85l6uieobzf: BorderRadius.circular(22),
        gwrsyzojtp84oco1ldhaaw90: c7slhftcvtpl3nay,
        v6j3bxo2dz4aevlmr: SizedBox(
          width: 44,
          height: 44,
          child: Center(
            child: Image.asset(
              f5b14gtkuqjlfozyt,
              width: vppa3idrvfph6p3g49u,
              height: vppa3idrvfph6p3g49u,
            ),
          ),
        ),
      ),
    );
  }

  Widget _nbalmd7taj9360azzz() {
    return CokiSwimmingAba7n9vsqt6w3fz(
      cokiSwimmingudas2o8q00gicj383hxod: ListView(
        controller: _z4b0z1mr6soc8zkyijj,
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
        children: [
          for (final q9xuew2lofmmx in _wbrx0jgemuxppfzmdc4) ...[
            const SizedBox(height: 16),
            if (q9xuew2lofmmx.startsWith(_cokiSwimming5f7db7cae7fef932))
              _hcmtmggl64k1l2p1err5f9gh(
                q9xuew2lofmmx.substring(_cokiSwimming5f7db7cae7fef932.length),
              )
            else if (q9xuew2lofmmx.startsWith(
              _cokiSwimming8m3q7v1x9p4k6r2t5n0h,
            ))
              _nggkzh74hvembdo98sla(
                q9xuew2lofmmx.substring(
                  _cokiSwimming8m3q7v1x9p4k6r2t5n0h.length,
                ),
              )
            else
              _j2dd1nsgj651j5huez9kje(q9xuew2lofmmx),
          ],
        ],
      ),
    );
  }

  Widget _nggkzh74hvembdo98sla(String cokiSwimming7v2m9q4x1p8k6r3t5n0h) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _rthhm2s3frrvoc8(
          widget.cokiSwimming584cec7f78c5fe?.xkczithyrycvg26pfjjmm9 ??
              'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_96c3ybdtsvgb1g.png',
          g3n76xdz7lkfqa: 44,
          i8r1randmsblwdymyzr: _urpbrps7k1hnd5cm,
          v6lz1z2tt6vy07500z932cs: 1,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 184),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 11),
              decoration: BoxDecoration(
                color: _urpbrps7k1hnd5cm,
                borderRadius: BorderRadius.circular(9),
              ),
              child: Text(
                cokiSwimming7v2m9q4x1p8k6r3t5n0h,
                style: const TextStyle(
                  color: _jnlm2sle63me1d8zxiad7cs,
                  fontSize: 15,
                  height: 1.33,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _j2dd1nsgj651j5huez9kje(
    String n8x4qjo37evo2v84bki7j, {
    bool caemx73e871dvx3bp = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 226),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 11),
              decoration: BoxDecoration(
                color: _nlagquou59mw1wtc,
                borderRadius: BorderRadius.circular(9),
              ),
              child: Text(
                n8x4qjo37evo2v84bki7j,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  height: 1.33,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        if (caemx73e871dvx3bp) ...[
          const SizedBox(width: 10),
          _rthhm2s3frrvoc8(
            'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_75utjvdb8y9wzfn5shrb55st.png',
            g3n76xdz7lkfqa: 44,
            i8r1randmsblwdymyzr: _nlagquou59mw1wtc,
            v6lz1z2tt6vy07500z932cs: 1,
          ),
        ],
      ],
    );
  }

  Widget _hcmtmggl64k1l2p1err5f9gh([String? cokiSwimmingD43c4c192468ff8d]) {
    return Padding(
      padding: const EdgeInsets.only(right: 54),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CokiSwimmingFp31kwqgnq7d7mmdubsu7(
                ebv0wnhcczmsg2ytfim3iox:
                    cokiSwimmingD43c4c192468ff8d ??
                    'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_jc48t9sqir04g42.png',
                mhyr7b1jr0dol34ahhd0ii9: 154,
                mjsibeo326cy1bub95ae: 154,
                xukd4lpmnhu8l: false,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _g0makpe0wrl4c1o(BuildContext nevhjja5jen9xn3o94) {
    final zgrui5a75ogysdjo =
        MediaQuery.viewInsetsOf(nevhjja5jen9xn3o94).bottom > 0;
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 8, 20, zgrui5a75ogysdjo ? 10 : 22),
      child: Container(
        height: 55,
        padding: const EdgeInsets.only(left: 16, right: 8),
        decoration: BoxDecoration(
          color: _urpbrps7k1hnd5cm,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _w44lr0x0kd6pemmvistd,
                textInputAction: TextInputAction.send,
                onSubmitted: (_) => _t2eocks1qg67mpfd41fs0ul(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
                decoration: const InputDecoration(
                  hintText: 'Say something',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.2,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 18),
                ),
              ),
            ),
            Tooltip(
              message: 'Send',
              child: IconButton(
                onPressed: _t2eocks1qg67mpfd41fs0ul,
                icon: const Icon(CupertinoIcons.paperplane_fill),
                color: Colors.white,
                iconSize: 24,
                splashRadius: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _rthhm2s3frrvoc8(
    String otlqziynr96u5i, {
    required double g3n76xdz7lkfqa,
    required Color i8r1randmsblwdymyzr,
    required double v6lz1z2tt6vy07500z932cs,
  }) {
    return Container(
      width: g3n76xdz7lkfqa,
      height: g3n76xdz7lkfqa,
      padding: EdgeInsets.all(v6lz1z2tt6vy07500z932cs),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: i8r1randmsblwdymyzr,
      ),
      child: CokiSwimmingBskfv8qke498jnw5a9nz(
        bvuh7vp0q7jr0o6: otlqziynr96u5i,
        qqonq4itbdxn5jaq8l63c4: g3n76xdz7lkfqa - (v6lz1z2tt6vy07500z932cs * 2),
      ),
    );
  }
}
