part of '../main.dart';

class CokiSwimming5aa8c45ce3bb256e extends StatelessWidget {
  const CokiSwimming5aa8c45ce3bb256e({
    super.key,
    required this.cokiSwimmingE7241f8ad57c989d,
    required this.cokiSwimmingC87c4d526425f5ba,
  });

  final int cokiSwimmingE7241f8ad57c989d;
  final String cokiSwimmingC87c4d526425f5ba;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<MapEntry<String, String>>>(
      stream: CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
          .cokiSwimming4b20f2e655a8a5a8(
            cokiSwimming3e27f09983ab3565: cokiSwimmingE7241f8ad57c989d,
            cokiSwimming5950383ed83f1f5a: cokiSwimmingC87c4d526425f5ba,
          ),
      builder: (_, cokiSwimming8b296b5f21ba0297) => Text(
        '${(cokiSwimming8b296b5f21ba0297.data ?? const []).where((cokiSwimming305592714aff67af) => cokiSwimming305592714aff67af.value == 'true').length}',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 17,
          height: 1.1,
          letterSpacing: 0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}

class CokiSwimmingMemuqrf79eqifnj260swgbfm extends StatelessWidget {
  const CokiSwimmingMemuqrf79eqifnj260swgbfm({
    super.key,
    required this.qnfn8fsuph1v4l0fowp,
    required this.fi4qmr2kx9ocr2mx3673hgb,
    required this.cokiSwimmingE84be6627355d8ab,
  });

  final String qnfn8fsuph1v4l0fowp;
  final String fi4qmr2kx9ocr2mx3673hgb;
  final int cokiSwimmingE84be6627355d8ab;

  String get _cokiSwimmingBbf79b0f84d87ea0 => qnfn8fsuph1v4l0fowp == 'Blacklist'
      ? CokiSwimming4b37q42lzh8qku34.cokiSwimmingF51cda3989aecbee
      : qnfn8fsuph1v4l0fowp == 'Fans'
      ? 'coki_swimming_7d2435be94a018ea'
      : CokiSwimming4b37q42lzh8qku34.cokiSwimming427f17409f4ca84c;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingAgdqi717f62hphbv7l95r8v(
      o1wq5mwul0ckiwligeu: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              CokiSwimmingMerb0wr4ijwluplbh(
                s0dnsxzte0kvc8: qnfn8fsuph1v4l0fowp,
              ),
              Expanded(
                child: StreamBuilder<List<MapEntry<String, String>>>(
                  stream: CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
                      .cokiSwimming4b20f2e655a8a5a8(
                        cokiSwimming3e27f09983ab3565:
                            cokiSwimmingE84be6627355d8ab,
                        cokiSwimming5950383ed83f1f5a:
                            _cokiSwimmingBbf79b0f84d87ea0,
                      ),
                  builder: (cokiSwimming188732135235f2c8, cokiSwimmingA49d84b11a6359c3) {
                    final cokiSwimmingBc3f9370893eeb87 =
                        (cokiSwimmingA49d84b11a6359c3.data ?? const [])
                            .where(
                              (cokiSwimming7e89b81a11c95f7c) =>
                                  qnfn8fsuph1v4l0fowp == 'Blacklist' ||
                                  cokiSwimming7e89b81a11c95f7c.value == 'true',
                            )
                            .map(
                              (cokiSwimmingAaf9570cf226b6c1) =>
                                  cokiSwimmingno1co2tb6p01cbgq6w3sj9k
                                      .where(
                                        (cokiSwimming1a9cb44c087520ed) =>
                                            cokiSwimming1a9cb44c087520ed
                                                .y2bm5rqs3zbbqyxivjft35 ==
                                            cokiSwimmingAaf9570cf226b6c1.key,
                                      )
                                      .firstOrNull,
                            )
                            .whereType<CokiSwimmingOla0gu1u5h0t2dqk0sy77kg>()
                            .toList(growable: false);
                    if (cokiSwimmingA49d84b11a6359c3.connectionState ==
                            ConnectionState.waiting &&
                        !cokiSwimmingA49d84b11a6359c3.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (cokiSwimmingBc3f9370893eeb87.isEmpty) {
                      return CokiSwimmingAba7n9vsqt6w3fz(
                        cokiSwimmingudas2o8q00gicj383hxod: ListView(
                          physics: const BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics(),
                          ),
                          padding: const EdgeInsets.only(top: 136),
                          children: [
                            Center(
                              child: Image.asset(
                                'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_kh2gre8j2u6j3s8k9l.png',
                                width: 115,
                                height: 115,
                                filterQuality: FilterQuality.high,
                              ),
                            ),
                            const Text(
                              'NO Data',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                height: 1.2,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    return CokiSwimmingAba7n9vsqt6w3fz(
                      cokiSwimmingudas2o8q00gicj383hxod: ListView.separated(
                        physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics(),
                        ),
                        padding: const EdgeInsets.fromLTRB(15, 18, 15, 20),
                        itemCount: cokiSwimmingBc3f9370893eeb87.length,
                        separatorBuilder: (_, _) => const SizedBox(height: 9),
                        itemBuilder:
                            (
                              cokiSwimmingE9c5e355f4263e43,
                              cokiSwimming74623a95c34530f4,
                            ) {
                              final cokiSwimmingF2d50e32158fd8af =
                                  cokiSwimmingBc3f9370893eeb87[cokiSwimming74623a95c34530f4];
                              return Container(
                                height: 56,
                                padding: const EdgeInsets.fromLTRB(9, 7, 8, 7),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF2B254D),
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                child: Row(
                                  children: [
                                    CokiSwimmingBskfv8qke498jnw5a9nz(
                                      bvuh7vp0q7jr0o6:
                                          cokiSwimmingF2d50e32158fd8af
                                              .xkczithyrycvg26pfjjmm9,
                                      qqonq4itbdxn5jaq8l63c4: 39,
                                      mq2l8m5tl12kohgr7u: () =>
                                          Navigator.of(
                                            cokiSwimmingE9c5e355f4263e43,
                                          ).pushNamed(
                                            CokiSwimmingXu1hfvhsqfkovamr518kcwz
                                                .tigdkksey2ignkpcr57u,
                                            arguments:
                                                cokiSwimmingF2d50e32158fd8af,
                                          ),
                                    ),
                                    const SizedBox(width: 9),
                                    Expanded(
                                      child: Text(
                                        '${cokiSwimmingF2d50e32158fd8af.y2bm5rqs3zbbqyxivjft35}\n${cokiSwimmingF2d50e32158fd8af.lrh0ljlgkvjv13o}',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          height: 1.35,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    CokiSwimmingDqyvjbk007jjfyo24(
                                      b9og5n73259vub: fi4qmr2kx9ocr2mx3673hgb,
                                      tsiwxnnktz77you31m8n0d8: Colors.white,
                                      v9m61ys7prva8cj1wl5yj: const Color(
                                        0xFF100A30,
                                      ),
                                      qtc991d9lwmsr2hhl: () async {
                                        if (qnfn8fsuph1v4l0fowp ==
                                            'Blacklist') {
                                          await CokiSwimmingDatabase
                                              .hxjpjp7w6ojq86l4ddyhf
                                              .cokiSwimmingD9140901ed7086(
                                                cokiSwimmingE0064399a5ff3e4735ca7:
                                                    cokiSwimmingE84be6627355d8ab,
                                                cokiSwimmingCf073cd0054339a92b8:
                                                    _cokiSwimmingBbf79b0f84d87ea0,
                                                cokiSwimming73d832bca2a52a71d0da79bb:
                                                    cokiSwimmingF2d50e32158fd8af
                                                        .y2bm5rqs3zbbqyxivjft35,
                                              );
                                        } else {
                                          await CokiSwimming4b37q42lzh8qku34.cokiSwimmingC78486f64e9216d24(
                                            cokiSwimmingF2d50e32158fd8af
                                                .y2bm5rqs3zbbqyxivjft35,
                                          );
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
