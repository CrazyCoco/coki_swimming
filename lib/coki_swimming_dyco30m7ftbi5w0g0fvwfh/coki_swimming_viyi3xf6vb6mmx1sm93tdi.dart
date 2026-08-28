part of '../main.dart';

class CokiSwimmingKlzr6l4l7f04 extends StatelessWidget {
  const CokiSwimmingKlzr6l4l7f04({super.key, this.dpyf92bawwqefckl5295w});

  final CokiSwimmingMember? dpyf92bawwqefckl5295w;

  @override
  Widget build(BuildContext context) {
    final kk7rhrtobii5npdx0z4wo = dpyf92bawwqefckl5295w;
    if (kk7rhrtobii5npdx0z4wo == null) {
      return const _CokiSwimmingTg67v777ls66k4x5w(rep0mohlm84wqtakj: null);
    }
    return StreamBuilder<CokiSwimmingMember?>(
      stream: CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf.qegrc7kcffpv0i(
        kk7rhrtobii5npdx0z4wo.id,
      ),
      initialData: kk7rhrtobii5npdx0z4wo,
      builder: (cybdg0rmnhhxv, qeyhhoprvpbsv9ks9nrj1rp) =>
          _CokiSwimmingTg67v777ls66k4x5w(
            rep0mohlm84wqtakj:
                qeyhhoprvpbsv9ks9nrj1rp.data ?? kk7rhrtobii5npdx0z4wo,
          ),
    );
  }
}

class _CokiSwimmingTg67v777ls66k4x5w extends StatelessWidget {
  const _CokiSwimmingTg67v777ls66k4x5w({required this.rep0mohlm84wqtakj});

  final CokiSwimmingMember? rep0mohlm84wqtakj;

  String get _dju7qos1omw84aee4zv7a45 =>
      rep0mohlm84wqtakj?.avatarPath ??
      'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_96c3ybdtsvgb1g.png';

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      padding: EdgeInsets.zero,
      children: [
        _CokiSwimmingWss6hi89y06trc8g(
          dn5p554htu646fe68: _dju7qos1omw84aee4zv7a45,
          xckl9bdttr6k7hg: rep0mohlm84wqtakj?.displayName ?? 'Coki',
        ),
        const SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: _CokiSwimmingMahmqp0jrcqqlprc5bgz(
            g9440cpfkmiqld6xqylui4sp: rep0mohlm84wqtakj?.coinBalance ?? 0,
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CokiSwimmingDih2lfk074dk5rke(
            hpn5t8jy171wsi56pq171x:
                'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_0qdsgwlfpq12rytgl8l1pz.png',
            kzrqy3gsjnpsppjd5m: false,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class _CokiSwimmingWss6hi89y06trc8g extends StatelessWidget {
  const _CokiSwimmingWss6hi89y06trc8g({
    required this.dn5p554htu646fe68,
    required this.xckl9bdttr6k7hg,
  });

  final String dn5p554htu646fe68;
  final String xckl9bdttr6k7hg;

  @override
  Widget build(BuildContext context) {
    final uc3e33vea4boskwgw1 = MediaQuery.paddingOf(context).top;
    return SizedBox(
      height: 340,
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(28)),
        child: Stack(
          fit: StackFit.expand,
          children: [
            CokiSwimmingFp31kwqgnq7d7mmdubsu7(
              ebv0wnhcczmsg2ytfim3iox: dn5p554htu646fe68,
              mhyr7b1jr0dol34ahhd0ii9: MediaQuery.sizeOf(context).width,
              mjsibeo326cy1bub95ae: 340,
              xukd4lpmnhu8l: false,
            ),
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0x00000000),
                    Color(0x220F092E),
                    Color(0xF2100A30),
                  ],
                  stops: [0.25, 0.55, 1],
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: uc3e33vea4boskwgw1 + 12,
              child: CokiSwimmingL87l1svejpll9i99(
                rx3u02ekjw3epobplo8e: () => Navigator.of(context).pushNamed(
                  CokiSwimmingXu1hfvhsqfkovamr518kcwz.otti0znekn0anlhi0yw3bt0,
                ),
                jf9ewz509wfu: const Icon(
                  Icons.settings_outlined,
                  color: Color(0xFF100A30),
                  size: 23,
                ),
              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 112,
              child: Column(
                children: [
                  CokiSwimmingKtoozpjuob7rods(
                    kvg85l6uieobzf: BorderRadius.circular(50),
                    gwrsyzojtp84oco1ldhaaw90: () =>
                        Navigator.of(context).pushNamed(
                          CokiSwimmingXu1hfvhsqfkovamr518kcwz.khkp9t4idd81ybveh,
                        ),
                    v6j3bxo2dz4aevlmr: Container(
                      width: 100,
                      height: 100,
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF60D0EE),
                            Color(0xFFAD99C2),
                            Color(0xFFD43161),
                          ],
                          stops: [0, 0.4704, 1],
                        ),
                      ),
                      child: ClipOval(
                        child: CokiSwimmingFp31kwqgnq7d7mmdubsu7(
                          ebv0wnhcczmsg2ytfim3iox: dn5p554htu646fe68,
                          mhyr7b1jr0dol34ahhd0ii9: 92,
                          mjsibeo326cy1bub95ae: 92,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    xckl9bdttr6k7hg,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      height: 1.05,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 58,
                    child: Row(
                      children: [
                        Expanded(
                          child: CokiSwimmingJc5d2zcduyoo6(
                            kd0cj7dyrevakgl2ubrpaz0: 'Posts',
                            e33s0ntq56lhg: '1',
                          ),
                        ),
                        Expanded(
                          child: CokiSwimmingJc5d2zcduyoo6(
                            kd0cj7dyrevakgl2ubrpaz0: 'Followers',
                            e33s0ntq56lhg: '3.3w',
                            dlnpydrcm1ubm: () =>
                                Navigator.of(context).pushNamed(
                                  CokiSwimmingXu1hfvhsqfkovamr518kcwz
                                      .jgxuzcge2mlqygstz,
                                ),
                          ),
                        ),
                        Expanded(
                          child: CokiSwimmingJc5d2zcduyoo6(
                            kd0cj7dyrevakgl2ubrpaz0: 'Following',
                            e33s0ntq56lhg: '33',
                            dlnpydrcm1ubm: () =>
                                Navigator.of(context).pushNamed(
                                  CokiSwimmingXu1hfvhsqfkovamr518kcwz
                                      .vvdhyu5pn5dy7i2r5ygl5,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CokiSwimmingMahmqp0jrcqqlprc5bgz extends StatelessWidget {
  const _CokiSwimmingMahmqp0jrcqqlprc5bgz({
    required this.g9440cpfkmiqld6xqylui4sp,
  });

  final int g9440cpfkmiqld6xqylui4sp;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingKtoozpjuob7rods(
      kvg85l6uieobzf: BorderRadius.circular(35),
      gwrsyzojtp84oco1ldhaaw90: () => Navigator.of(
        context,
      ).pushNamed(CokiSwimmingXu1hfvhsqfkovamr518kcwz.tsux9v3xzdp79n2vwllqrjd9),
      v6j3bxo2dz4aevlmr: Container(
        height: 70,
        padding: const EdgeInsets.fromLTRB(24, 9, 20, 9),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'My gold coins',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFF36333A),
                      fontSize: 20,
                      height: 1.05,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Image.asset(
                        'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_roed73a15axcz4afxgdp1buc.png',
                        width: 22,
                        height: 22,
                      ),
                      const SizedBox(width: 7),
                      Flexible(
                        child: Text(
                          g9440cpfkmiqld6xqylui4sp.toString(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Color(0xFFD43161),
                            fontSize: 16,
                            height: 1.1,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward, color: Color(0xFF17131E), size: 27),
          ],
        ),
      ),
    );
  }
}
