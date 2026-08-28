part of '../main.dart';

class CokiSwimmingSs601a6wnfgg8fg74v {
  const CokiSwimmingSs601a6wnfgg8fg74v._rplnzdim62iw4mbh5i11fd8();

  static void flez1tfrh32e(BuildContext z88ov9nrwf12wf7c4ojofd0) {
    ctvj7h3t3haji5wzoeo(z88ov9nrwf12wf7c4ojofd0);
  }

  static void ctvj7h3t3haji5wzoeo(
    BuildContext frs4e4efdssqrhl9e, {
    CokiSwimmingOla0gu1u5h0t2dqk0sy77kg? k6v2r9m4x8c1p7s3,
    CokiSwimmingMember? cokiSwimming492acfdb2d2b03a826e6f6,
  }) {
    showModalBottomSheet<void>(
      context: frs4e4efdssqrhl9e,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (gmdb8vlnkqvjwb9f3rj) => _CokiSwimming7c8eba499ad22(
        cokiSwimmingE4efbb9676f9d8fc8f5af7: k6v2r9m4x8c1p7s3,
        cokiSwimmingDe1c5b6c1056d48b9b2f: cokiSwimming492acfdb2d2b03a826e6f6,
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
    required this.cokiSwimmingDe1c5b6c1056d48b9b2f,
  });

  final CokiSwimmingOla0gu1u5h0t2dqk0sy77kg? cokiSwimmingE4efbb9676f9d8fc8f5af7;
  final CokiSwimmingMember? cokiSwimmingDe1c5b6c1056d48b9b2f;

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
  List<_CokiSwimming859482f6b46d706f29a3dc73> _cokiSwimmingC49805fc9eb88bbe =
      const [];
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
    final cokiSwimming88bba42f9df90217e7923c82 =
        widget.cokiSwimmingE4efbb9676f9d8fc8f5af7?.zagjx458al86vlep0we1whdx ==
            true
        ? widget.cokiSwimmingE4efbb9676f9d8fc8f5af7!.r8n3c6y1w5h9t2m7.length
        : widget.cokiSwimmingE4efbb9676f9d8fc8f5af7?.m7c2v9x4q8s1d6p3.length ??
              0;
    final cokiSwimmingE762073db0131effc491f0d6 =
        widget.cokiSwimmingDe1c5b6c1056d48b9b2f;
    setState(() {
      _cokiSwimmingC49805fc9eb88bbe = cokiSwimming2f58f24514fff72423a is List
          ? List.generate(cokiSwimming2f58f24514fff72423a.length, (
              cokiSwimmingAac8010bea1268,
            ) {
              final cokiSwimmingF1fb8fcbec49b397b2 =
                  cokiSwimming2f58f24514fff72423a[cokiSwimmingAac8010bea1268];
              if (cokiSwimmingF1fb8fcbec49b397b2 is Map ||
                  cokiSwimmingAac8010bea1268 <
                      cokiSwimming88bba42f9df90217e7923c82 ||
                  cokiSwimmingE762073db0131effc491f0d6 == null) {
                return _CokiSwimming859482f6b46d706f29a3dc73.cokiSwimmingC7d4ca5487d44bcd(
                  cokiSwimmingF1fb8fcbec49b397b2,
                );
              }
              return _CokiSwimming859482f6b46d706f29a3dc73(
                cokiSwimmingFca554802499: cokiSwimmingF1fb8fcbec49b397b2
                    .toString(),
                cokiSwimmingBf1bc5ec56281f1916:
                    cokiSwimmingE762073db0131effc491f0d6.id,
                cokiSwimming3f12826e074f3a95c4:
                    cokiSwimmingE762073db0131effc491f0d6.displayName,
                cokiSwimming43b50310d0d2:
                    cokiSwimmingE762073db0131effc491f0d6.avatarPath,
              );
            })
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
      _CokiSwimming859482f6b46d706f29a3dc73(
        cokiSwimmingFca554802499: cokiSwimming0673437aced2,
        cokiSwimmingBf1bc5ec56281f1916:
            widget.cokiSwimmingDe1c5b6c1056d48b9b2f?.id,
        cokiSwimming3f12826e074f3a95c4:
            widget.cokiSwimmingDe1c5b6c1056d48b9b2f?.displayName,
        cokiSwimming43b50310d0d2:
            widget.cokiSwimmingDe1c5b6c1056d48b9b2f?.avatarPath,
      ),
    ];
    await Future<void>.delayed(const Duration(milliseconds: 450));
    await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
        .cokiSwimming74e8b2f70fa2f5b(
          cokiSwimming0a44fb28163763bb6ec69: 0,
          cokiSwimming47e760ec313f586105: _cokiSwimming8e1b8e862b98ec4505c9a80,
          cokiSwimmingDb6b0273792c060: _cokiSwimming8126f752958f90239aa5,
          cokiSwimmingC91a15fc4d8a49ccb: jsonEncode(
            cokiSwimming75a36fe4c44e27cd68c6d7
                .map(
                  (cokiSwimming247097668ca70d) => cokiSwimming247097668ca70d
                      .cokiSwimming5a566e1c0b454eb14e0a(),
                )
                .toList(growable: false),
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
    final cokiSwimming3q8m1v6x9p2k7r4t5n0h = MediaQuery.of(context);
    final cokiSwimming7m2q9v4x1p8k6r3t5n0h = math.min(
      cokiSwimming3q8m1v6x9p2k7r4t5n0h.size.height * 0.685,
      cokiSwimming3q8m1v6x9p2k7r4t5n0h.size.height -
          cokiSwimming3q8m1v6x9p2k7r4t5n0h.viewInsets.bottom,
    );
    return AnimatedPadding(
      duration: const Duration(milliseconds: 180),
      curve: Curves.easeOut,
      padding: EdgeInsets.only(
        bottom: cokiSwimming3q8m1v6x9p2k7r4t5n0h.viewInsets.bottom,
      ),
      child: Container(
        height: cokiSwimming7m2q9v4x1p8k6r3t5n0h,
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        decoration: const BoxDecoration(
          color: Color(0xFF100A30),
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: SafeArea(
          top: false,
          minimum: const EdgeInsets.only(bottom: 12),
          child: Column(
            children: [
              SizedBox(
                height: 44,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_v8g9ae5tgyxd24ch.png',
                      width: 134,
                      height: 31,
                      filterQuality: FilterQuality.high,
                    ),
                    const Spacer(),
                    CokiSwimmingKtoozpjuob7rods(
                      kvg85l6uieobzf: BorderRadius.circular(22),
                      gwrsyzojtp84oco1ldhaaw90: () =>
                          Navigator.of(context).maybePop(),
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
                  ],
                ),
              ),
              const SizedBox(height: 3),
              Expanded(
                child: _cokiSwimming765da50c55b9fd86c86e33ce
                    ? const Center(
                        child: CupertinoActivityIndicator(color: Colors.white),
                      )
                    : _cokiSwimmingC49805fc9eb88bbe.isEmpty
                    ? const Center(
                        child: Text(
                          'No comments yet',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 15,
                            letterSpacing: 0,
                          ),
                        ),
                      )
                    : ListView.separated(
                        keyboardDismissBehavior:
                            ScrollViewKeyboardDismissBehavior.onDrag,
                        physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics(),
                        ),
                        padding: EdgeInsets.zero,
                        itemCount: _cokiSwimmingC49805fc9eb88bbe.length,
                        separatorBuilder: (_, _) => const SizedBox(height: 10),
                        itemBuilder: (_, cokiSwimmingC7303cc8cbef) {
                          final cokiSwimmingC7f04d6fd0f41c6a =
                              _cokiSwimmingC49805fc9eb88bbe[cokiSwimmingC7303cc8cbef];
                          final cokiSwimmingA217119ccd1df60ce7d307a6 =
                              cokiSwimmingC7f04d6fd0f41c6a
                                      .cokiSwimmingBf1bc5ec56281f1916 !=
                                  null &&
                              cokiSwimmingC7f04d6fd0f41c6a
                                      .cokiSwimmingBf1bc5ec56281f1916 ==
                                  widget.cokiSwimmingDe1c5b6c1056d48b9b2f?.id;
                          final cokiSwimming492acfdb2d2b03a826e6f6 =
                              cokiSwimmingA217119ccd1df60ce7d307a6
                              ? cokiSwimmingC7f04d6fd0f41c6a
                                        .cokiSwimming3f12826e074f3a95c4 ??
                                    'Coki'
                              : 'Stella';
                          return Container(
                            height: 82,
                            padding: const EdgeInsets.fromLTRB(16, 12, 8, 14),
                            decoration: BoxDecoration(
                              color: const Color(0xFF3A3558),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CokiSwimmingBskfv8qke498jnw5a9nz(
                                      bvuh7vp0q7jr0o6:
                                          cokiSwimmingA217119ccd1df60ce7d307a6
                                          ? cokiSwimmingC7f04d6fd0f41c6a
                                                    .cokiSwimming43b50310d0d2 ??
                                                'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_96c3ybdtsvgb1g.png'
                                          : 'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_75utjvdb8y9wzfn5shrb55st.png',
                                      qqonq4itbdxn5jaq8l63c4: 34,
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: Text(
                                        cokiSwimming492acfdb2d2b03a826e6f6,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          height: 1.1,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                    if (!cokiSwimmingA217119ccd1df60ce7d307a6)
                                      CokiSwimmingKtoozpjuob7rods(
                                        kvg85l6uieobzf: BorderRadius.circular(
                                          20,
                                        ),
                                        gwrsyzojtp84oco1ldhaaw90: () =>
                                            CokiSwimmingEa33alie83a7ztht03ml6za.v8k18e1fwcihnfevusm4iq(
                                              context,
                                              cokiSwimming2017dfe9792f0833:
                                                  cokiSwimming492acfdb2d2b03a826e6f6,
                                            ),
                                        v6j3bxo2dz4aevlmr: const SizedBox(
                                          width: 40,
                                          height: 34,
                                          child: Icon(
                                            Icons.more_horiz,
                                            color: Colors.white,
                                            size: 24,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  cokiSwimmingC7f04d6fd0f41c6a
                                      .cokiSwimmingFca554802499,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    height: 1.2,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _cokiSwimming9fb9f444dd406eb717207d33,
                        textInputAction: TextInputAction.send,
                        onSubmitted: (_) => _cokiSwimming1baaf6aee53cc0b(),
                        style: const TextStyle(
                          color: Color(0xFF100A30),
                          fontSize: 16,
                          height: 1.2,
                          letterSpacing: 0,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Say something',
                          hintStyle: TextStyle(
                            color: const Color(
                              0xFF100A30,
                            ).withValues(alpha: 0.42),
                            fontSize: 16,
                            height: 1.2,
                            letterSpacing: 0,
                          ),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.fromLTRB(
                            16,
                            17,
                            8,
                            16,
                          ),
                        ),
                      ),
                    ),
                    CokiSwimmingKtoozpjuob7rods(
                      kvg85l6uieobzf: BorderRadius.circular(24),
                      gwrsyzojtp84oco1ldhaaw90: _cokiSwimming1baaf6aee53cc0b,
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
            ],
          ),
        ),
      ),
    );
  }
}

class _CokiSwimming859482f6b46d706f29a3dc73 {
  const _CokiSwimming859482f6b46d706f29a3dc73({
    required this.cokiSwimmingFca554802499,
    this.cokiSwimmingBf1bc5ec56281f1916,
    this.cokiSwimming3f12826e074f3a95c4,
    this.cokiSwimming43b50310d0d2,
  });

  factory _CokiSwimming859482f6b46d706f29a3dc73.cokiSwimmingC7d4ca5487d44bcd(
    Object? cokiSwimming247097668ca70d,
  ) {
    if (cokiSwimming247097668ca70d is Map) {
      return _CokiSwimming859482f6b46d706f29a3dc73(
        cokiSwimmingFca554802499:
            cokiSwimming247097668ca70d['coki_swimming_fca554802499']
                ?.toString() ??
            '',
        cokiSwimmingBf1bc5ec56281f1916:
            (cokiSwimming247097668ca70d['coki_swimming_bf1bc5ec56281f1916']
                    as num?)
                ?.toInt(),
        cokiSwimming3f12826e074f3a95c4:
            cokiSwimming247097668ca70d['coki_swimming_3f12826e074f3a95c4']
                ?.toString(),
        cokiSwimming43b50310d0d2:
            cokiSwimming247097668ca70d['coki_swimming_43b50310d0d2']
                ?.toString(),
      );
    }
    return _CokiSwimming859482f6b46d706f29a3dc73(
      cokiSwimmingFca554802499: cokiSwimming247097668ca70d?.toString() ?? '',
    );
  }

  final String cokiSwimmingFca554802499;
  final int? cokiSwimmingBf1bc5ec56281f1916;
  final String? cokiSwimming3f12826e074f3a95c4;
  final String? cokiSwimming43b50310d0d2;

  Map<String, Object?> cokiSwimming5a566e1c0b454eb14e0a() => {
    'coki_swimming_fca554802499': cokiSwimmingFca554802499,
    'coki_swimming_bf1bc5ec56281f1916': cokiSwimmingBf1bc5ec56281f1916,
    'coki_swimming_3f12826e074f3a95c4': cokiSwimming3f12826e074f3a95c4,
    'coki_swimming_43b50310d0d2': cokiSwimming43b50310d0d2,
  };
}
