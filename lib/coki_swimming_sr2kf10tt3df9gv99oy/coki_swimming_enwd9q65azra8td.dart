part of '../main.dart';

class CokiSwimmingSs601a6wnfgg8fg74v {
  const CokiSwimmingSs601a6wnfgg8fg74v._rplnzdim62iw4mbh5i11fd8();

  static void flez1tfrh32e(BuildContext z88ov9nrwf12wf7c4ojofd0) {
    ctvj7h3t3haji5wzoeo(z88ov9nrwf12wf7c4ojofd0);
  }

  static void ctvj7h3t3haji5wzoeo(
    BuildContext frs4e4efdssqrhl9e, {
    CokiSwimmingOla0gu1u5h0t2dqk0sy77kg? k6v2r9m4x8c1p7s3,
  }) {
    showModalBottomSheet<void>(
      context: frs4e4efdssqrhl9e,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (gmdb8vlnkqvjwb9f3rj) => _CokiSwimming7c8eba499ad22(
        cokiSwimmingE4efbb9676f9d8fc8f5af7: k6v2r9m4x8c1p7s3,
      ),
    );
  }
}

class CokiSwimmingD67038e81c290baa extends StatelessWidget {
  const CokiSwimmingD67038e81c290baa({
    super.key,
    required this.cokiSwimming90df3b806b3a319c,
    required this.cokiSwimming2378cbe62fd97c4e,
  });

  final CokiSwimmingOla0gu1u5h0t2dqk0sy77kg? cokiSwimming90df3b806b3a319c;
  final TextStyle cokiSwimming2378cbe62fd97c4e;

  @override
  Widget build(BuildContext context) {
    final cokiSwimming60d95284946109bc = cokiSwimming90df3b806b3a319c;
    final cokiSwimmingE8346816067cd2c6 =
        cokiSwimming60d95284946109bc?.pgj8geudv74awjznrves.firstOrNull ??
        _CokiSwimming550799c166502c1a08a0._cokiSwimming8e1b8e862b98ec4505c9a80;
    final cokiSwimming2038d3649fbaf7bf =
        cokiSwimming60d95284946109bc?.zagjx458al86vlep0we1whdx == true
        ? cokiSwimming60d95284946109bc!.r8n3c6y1w5h9t2m7.length
        : cokiSwimming60d95284946109bc?.m7c2v9x4q8s1d6p3.length ?? 0;
    return StreamBuilder<String?>(
      stream: CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
          .cokiSwimming5a0c9ec6e99b9db2(
            cokiSwimming437bcbd34e2d30e6: 0,
            cokiSwimmingA066704a66c5b817: _CokiSwimming550799c166502c1a08a0
                ._cokiSwimming8e1b8e862b98ec4505c9a80,
            cokiSwimming04e6aeb1f334b2eb: cokiSwimmingE8346816067cd2c6,
          ),
      builder: (_, cokiSwimmingCd0351a049a66f80) {
        var cokiSwimming45031df852749da7 = cokiSwimming2038d3649fbaf7bf;
        try {
          final cokiSwimming5fa0701669b96650 =
              cokiSwimmingCd0351a049a66f80.data;
          if (cokiSwimming5fa0701669b96650 != null) {
            final cokiSwimming7bd866edfcf2aa37 = jsonDecode(
              cokiSwimming5fa0701669b96650,
            );
            if (cokiSwimming7bd866edfcf2aa37 is List) {
              cokiSwimming45031df852749da7 =
                  cokiSwimming7bd866edfcf2aa37.length;
            }
          }
        } on Object {
          cokiSwimming45031df852749da7 = cokiSwimming2038d3649fbaf7bf;
        }
        return Text(
          '$cokiSwimming45031df852749da7',
          style: cokiSwimming2378cbe62fd97c4e,
        );
      },
    );
  }
}

class _CokiSwimming7c8eba499ad22 extends StatefulWidget {
  const _CokiSwimming7c8eba499ad22({
    required this.cokiSwimmingE4efbb9676f9d8fc8f5af7,
  });

  final CokiSwimmingOla0gu1u5h0t2dqk0sy77kg? cokiSwimmingE4efbb9676f9d8fc8f5af7;

  @override
  State<_CokiSwimming7c8eba499ad22> createState() =>
      _CokiSwimming550799c166502c1a08a0();
}

class _CokiSwimming550799c166502c1a08a0
    extends State<_CokiSwimming7c8eba499ad22> {
  static const String _cokiSwimming8e1b8e862b98ec4505c9a80 =
      'coki_swimming_775c5d91cc33a9c';
  final TextEditingController _cokiSwimming9fb9f444dd406eb717207d33 =
      TextEditingController();
  List<String> _cokiSwimmingC49805fc9eb88bbe = const [];
  bool _cokiSwimming765da50c55b9fd86c86e33ce = true;

  String get _cokiSwimming8126f752958f90239aa5 =>
      widget.cokiSwimmingE4efbb9676f9d8fc8f5af7?.pgj8geudv74awjznrves.first ??
      _cokiSwimming8e1b8e862b98ec4505c9a80;

  @override
  void initState() {
    super.initState();
    _cokiSwimmingC310b425340f93f6281();
  }

  Future<void> _cokiSwimmingC310b425340f93f6281() async {
    var cokiSwimming10553411f3a4f = await CokiSwimmingDatabase
        .hxjpjp7w6ojq86l4ddyhf
        .cokiSwimming08fc79df5890845d(
          cokiSwimmingFfdff4098f67dc2a39b: 0,
          cokiSwimming9ca085a1e9464611db57745:
              _cokiSwimming8e1b8e862b98ec4505c9a80,
          cokiSwimming756b8fe9fc667a: _cokiSwimming8126f752958f90239aa5,
        );
    if (cokiSwimming10553411f3a4f == null) {
      cokiSwimming10553411f3a4f = jsonEncode(
        widget.cokiSwimmingE4efbb9676f9d8fc8f5af7?.zagjx458al86vlep0we1whdx ==
                true
            ? widget.cokiSwimmingE4efbb9676f9d8fc8f5af7!.r8n3c6y1w5h9t2m7
            : widget.cokiSwimmingE4efbb9676f9d8fc8f5af7?.m7c2v9x4q8s1d6p3 ??
                  const <String>[],
      );
      await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
          .cokiSwimming74e8b2f70fa2f5b(
            cokiSwimming0a44fb28163763bb6ec69: 0,
            cokiSwimming47e760ec313f586105:
                _cokiSwimming8e1b8e862b98ec4505c9a80,
            cokiSwimmingDb6b0273792c060: _cokiSwimming8126f752958f90239aa5,
            cokiSwimmingC91a15fc4d8a49ccb: cokiSwimming10553411f3a4f,
          );
    }
    if (!mounted) return;
    final cokiSwimming2f58f24514fff72423a = jsonDecode(
      cokiSwimming10553411f3a4f,
    );
    setState(() {
      _cokiSwimmingC49805fc9eb88bbe = cokiSwimming2f58f24514fff72423a is List
          ? cokiSwimming2f58f24514fff72423a
                .map(
                  (cokiSwimming2d2e82f3d8f4d) =>
                      cokiSwimming2d2e82f3d8f4d.toString(),
                )
                .toList()
          : const [];
      _cokiSwimming765da50c55b9fd86c86e33ce = false;
    });
  }

  Future<void> _cokiSwimming1baaf6aee53cc0b() async {
    final cokiSwimming0673437aced2 = _cokiSwimming9fb9f444dd406eb717207d33.text
        .trim();
    if (cokiSwimming0673437aced2.isEmpty) return;
    final cokiSwimming75a36fe4c44e27cd68c6d7 = [
      ..._cokiSwimmingC49805fc9eb88bbe,
      cokiSwimming0673437aced2,
    ];
    await Future<void>.delayed(const Duration(milliseconds: 450));
    await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
        .cokiSwimming74e8b2f70fa2f5b(
          cokiSwimming0a44fb28163763bb6ec69: 0,
          cokiSwimming47e760ec313f586105: _cokiSwimming8e1b8e862b98ec4505c9a80,
          cokiSwimmingDb6b0273792c060: _cokiSwimming8126f752958f90239aa5,
          cokiSwimmingC91a15fc4d8a49ccb: jsonEncode(
            cokiSwimming75a36fe4c44e27cd68c6d7,
          ),
        );
    if (!mounted) return;
    setState(() {
      _cokiSwimmingC49805fc9eb88bbe = cokiSwimming75a36fe4c44e27cd68c6d7;
      _cokiSwimming9fb9f444dd406eb717207d33.clear();
    });
    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  void dispose() {
    _cokiSwimming9fb9f444dd406eb717207d33.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.52,
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      decoration: const BoxDecoration(
        color: Color(0xFF100A30),
        borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Comments (${_cokiSwimmingC49805fc9eb88bbe.length})',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: _cokiSwimming765da50c55b9fd86c86e33ce
                  ? const Center(child: CircularProgressIndicator())
                  : _cokiSwimmingC49805fc9eb88bbe.isEmpty
                  ? const Center(
                      child: Text(
                        'No comments yet',
                        style: TextStyle(color: Colors.white70),
                      ),
                    )
                  : ListView.separated(
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      itemCount: _cokiSwimmingC49805fc9eb88bbe.length,
                      separatorBuilder: (_, _) => const SizedBox(height: 8),
                      itemBuilder: (_, cokiSwimmingC7303cc8cbef) => Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color(0xFF2B254D),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Text(
                          _cokiSwimmingC49805fc9eb88bbe[cokiSwimmingC7303cc8cbef],
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
            ),
            CokiSwimmingFzyvkvzmusndsa(
              e7yuzqvtxnfl: _cokiSwimming9fb9f444dd406eb717207d33,
              rltm0sa89cmpd8x: _cokiSwimming1baaf6aee53cc0b,
            ),
          ],
        ),
      ),
    );
  }
}

class _CokiSwimmingKax0do3iizo4 extends StatefulWidget {
  const _CokiSwimmingKax0do3iizo4();

  @override
  State<_CokiSwimmingKax0do3iizo4> createState() =>
      _CokiSwimmingXrvruklfk1m7b0lws();
}

class _CokiSwimmingXrvruklfk1m7b0lws extends State<_CokiSwimmingKax0do3iizo4> {
  final TextEditingController _c1pbmvglxvpf9bn8 = TextEditingController();

  @override
  void dispose() {
    _c1pbmvglxvpf9bn8.dispose();
    super.dispose();
  }

  void _ra9guc2aj7sw() {
    if (_c1pbmvglxvpf9bn8.text.trim().isEmpty) return;
    _c1pbmvglxvpf9bn8.clear();
    FocusManager.instance.primaryFocus?.unfocus();
    CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(context, 'Sent');
  }

  @override
  Widget build(BuildContext context) {
    final xkmahtug1k78no = MediaQuery.of(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: Color(0xFF100A30),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Material(
        color: Colors.transparent,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_1og7s05fed23qmq.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
              filterQuality: FilterQuality.high,
            ),
            AnimatedPadding(
              duration: const Duration(milliseconds: 180),
              curve: Curves.easeOut,
              padding: EdgeInsets.only(
                bottom: xkmahtug1k78no.viewInsets.bottom,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: xkmahtug1k78no.size.height * 0.625,
                  decoration: const BoxDecoration(
                    color: Color(0xFF100A30),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 44,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Image.asset(
                                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_v8g9ae5tgyxd24ch.png',
                                  width: 134,
                                  height: 31,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                              Positioned(
                                right: -14,
                                top: -8,
                                child: CokiSwimmingKtoozpjuob7rods(
                                  kvg85l6uieobzf: BorderRadius.circular(22),
                                  gwrsyzojtp84oco1ldhaaw90: () =>
                                      Navigator.of(context).pop(),
                                  v6j3bxo2dz4aevlmr: SizedBox(
                                    width: 44,
                                    height: 44,
                                    child: Center(
                                      child: Image.asset(
                                        'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_svg32jdifqpk9m5w95taktgb.png',
                                        width: 24,
                                        height: 24,
                                        filterQuality: FilterQuality.high,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 3),
                        Expanded(
                          child: CokiSwimmingAba7n9vsqt6w3fz(
                            cokiSwimmingudas2o8q00gicj383hxod:
                                ListView.separated(
                                  keyboardDismissBehavior:
                                      ScrollViewKeyboardDismissBehavior.onDrag,
                                  physics: const BouncingScrollPhysics(
                                    parent: AlwaysScrollableScrollPhysics(),
                                  ),
                                  padding: EdgeInsets.zero,
                                  itemCount: 4,
                                  separatorBuilder: (_, _) =>
                                      const SizedBox(height: 10),
                                  itemBuilder:
                                      (jeqtu40rs87wxefx5q, pt2sjoyvs5w937qg) =>
                                          const _CokiSwimmingC3mig3052v4u(),
                                ),
                          ),
                        ),
                        _CokiSwimmingZ2b3l38fjqc289(
                          ujxwsiiyahqvebvl: _c1pbmvglxvpf9bn8,
                          q9ai113p3yjjkm: _ra9guc2aj7sw,
                        ),
                        const SizedBox(height: 27),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CokiSwimmingC3mig3052v4u extends StatelessWidget {
  const _CokiSwimmingC3mig3052v4u();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 82,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(0xFF3A3558),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 16,
              top: 14,
              child: Image.asset(
                'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_75utjvdb8y9wzfn5shrb55st.png',
                width: 34,
                height: 34,
                filterQuality: FilterQuality.high,
              ),
            ),
            const Positioned(
              left: 60,
              top: 20,
              right: 52,
              child: Text(
                'Stella',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.1,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const Positioned(
              left: 16,
              right: 16,
              bottom: 15,
              child: Text(
                'I love it!',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              right: 8,
              top: 8,
              child: CokiSwimmingKtoozpjuob7rods(
                kvg85l6uieobzf: BorderRadius.circular(20),
                gwrsyzojtp84oco1ldhaaw90: () =>
                    CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
                      context,
                      'Options',
                    ),
                v6j3bxo2dz4aevlmr: const SizedBox(
                  width: 40,
                  height: 40,
                  child: Icon(Icons.more_horiz, color: Colors.white, size: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CokiSwimmingZ2b3l38fjqc289 extends StatelessWidget {
  const _CokiSwimmingZ2b3l38fjqc289({
    required this.ujxwsiiyahqvebvl,
    required this.q9ai113p3yjjkm,
  });

  final TextEditingController ujxwsiiyahqvebvl;
  final VoidCallback q9ai113p3yjjkm;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: ujxwsiiyahqvebvl,
                textInputAction: TextInputAction.send,
                onSubmitted: (_) => q9ai113p3yjjkm(),
                style: const TextStyle(
                  color: Color(0xFF100A30),
                  fontSize: 16,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  hintText: 'Say something',
                  hintStyle: TextStyle(
                    color: const Color(0xFF100A30).withValues(alpha: 0.42),
                    fontSize: 16,
                    height: 1.2,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.fromLTRB(16, 17, 8, 16),
                ),
              ),
            ),
            CokiSwimmingKtoozpjuob7rods(
              kvg85l6uieobzf: BorderRadius.circular(24),
              gwrsyzojtp84oco1ldhaaw90: q9ai113p3yjjkm,
              v6j3bxo2dz4aevlmr: const SizedBox(
                width: 52,
                height: 55,
                child: Icon(
                  Icons.send_rounded,
                  color: Color(0xFFD92E60),
                  size: 26,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
