part of '../main.dart';

class CokiSwimmingMjnvj1qmiz2bxhm6uf0n6 extends StatefulWidget {
  const CokiSwimmingMjnvj1qmiz2bxhm6uf0n6({super.key});

  @override
  State<CokiSwimmingMjnvj1qmiz2bxhm6uf0n6> createState() =>
      _CokiSwimming6m1q8v4x9p3k7r2t5n0h();
}

class _CokiSwimming6m1q8v4x9p3k7r2t5n0h
    extends State<CokiSwimmingMjnvj1qmiz2bxhm6uf0n6> {
  int? _cokiSwimming2v9m4q1x8p6k7r3t5n0h;

  @override
  void initState() {
    super.initState();
    _cokiSwimming8q3m7v1x9p4k6r2t5n0h();
  }

  Future<void> _cokiSwimming8q3m7v1x9p4k6r2t5n0h() async {
    final cokiSwimming4p9m2q7v1x8k6r3t5n0h =
        await CokiSwimmingCxpnto70zseiuixud78r.o6irsuz6o8tm5() ?? 0;
    if (mounted) {
      setState(
        () => _cokiSwimming2v9m4q1x8p6k7r3t5n0h =
            cokiSwimming4p9m2q7v1x8k6r3t5n0h,
      );
    }
  }

  String _cokiSwimming5q1m8v3x9p4k7r2t6n0h(List<String> value) {
    if (value.isEmpty) return 'No activity yet';
    final cokiSwimming7p2m9q4v1x8k6r3t5n0h = value.last;
    if (cokiSwimming7p2m9q4v1x8k6r3t5n0h.startsWith(
      _CokiSwimmingRlviyh99dh4az0dmn52d5www._cokiSwimming5f7db7cae7fef932,
    )) {
      return 'Photo';
    }
    return cokiSwimming7p2m9q4v1x8k6r3t5n0h.replaceFirst(
      _CokiSwimmingRlviyh99dh4az0dmn52d5www._cokiSwimming8m3q7v1x9p4k6r2t5n0h,
      '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 50,
          left: 0,
          right: 0,
          child: Image.asset(
            'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_erv95uelv147yhqn158.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(19, 68, 19, 0),
            child: Column(
              children: [
                const _CokiSwimmingX7ifh9z2quc7dxi(),
                const SizedBox(height: 13),
                Expanded(
                  child: _cokiSwimming2v9m4q1x8p6k7r3t5n0h == null
                      ? const Center(child: CupertinoActivityIndicator())
                      : StreamBuilder<List<MapEntry<String, String>>>(
                          stream: CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
                              .cokiSwimming4b20f2e655a8a5a8(
                                cokiSwimming3e27f09983ab3565:
                                    _cokiSwimming2v9m4q1x8p6k7r3t5n0h!,
                                cokiSwimming5950383ed83f1f5a:
                                    _CokiSwimmingRlviyh99dh4az0dmn52d5www
                                        ._cokiSwimmingDf4bbdd6c54c5a0b721,
                              ),
                          builder: (context, cokiSwimming6v1m8q4x9p3k7r2t5n0h) {
                            final cokiSwimming7bef692946721c76ba11e2 =
                                (cokiSwimming6v1m8q4x9p3k7r2t5n0h.data ??
                                        const <MapEntry<String, String>>[])
                                    .map(
                                      (cokiSwimmingB9e81a0002e3947eaed3bc) =>
                                          _CokiSwimming06013c0f8e55d70e534bd1.cokiSwimming2767700d2c653098(
                                            cokiSwimmingB9e81a0002e3947eaed3bc
                                                .value,
                                          ),
                                    )
                                    .whereType<
                                      _CokiSwimming06013c0f8e55d70e534bd1
                                    >()
                                    .where(
                                      (
                                        cokiSwimming11d0c0d214bd7cf9,
                                      ) => cokiSwimming11d0c0d214bd7cf9
                                          .cokiSwimmingD9f06671a50530b5ee6b4567
                                          .isNotEmpty,
                                    )
                                    .toList(growable: false);
                            return CokiSwimmingAba7n9vsqt6w3fz(
                              cokiSwimmingudas2o8q00gicj383hxod: ListView(
                                physics: const BouncingScrollPhysics(
                                  parent: AlwaysScrollableScrollPhysics(),
                                ),
                                padding: const EdgeInsets.fromLTRB(0, 7, 0, 24),
                                children:
                                    cokiSwimming7bef692946721c76ba11e2.isEmpty
                                    ? const [
                                        SizedBox(
                                          height: 240,
                                          child: Center(
                                            child: Text(
                                              'No conversations yet',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]
                                    : [
                                        for (final cokiSwimming6168cabaed178586d747
                                            in cokiSwimming7bef692946721c76ba11e2) ...[
                                          _CokiSwimmingMvn2foxa9lwqzco60d(
                                            cokiSwimming8v3m1q6x9p2k7r4t5n0h:
                                                _cokiSwimming5q1m8v3x9p4k7r2t6n0h(
                                                  cokiSwimming6168cabaed178586d747
                                                      .cokiSwimmingD9f06671a50530b5ee6b4567,
                                                ),
                                            cokiSwimmingF8ec827b49941758:
                                                cokiSwimming6168cabaed178586d747
                                                    .cokiSwimmingAa95a06e144c06fa091fa3,
                                            oqwlyilixqrgrl60dplkvj: () async {
                                              if (!await CokiSwimming4b37q42lzh8qku34.cokiSwimming94bb189f2aff365815c5(
                                                cokiSwimming6168cabaed178586d747
                                                    .cokiSwimmingAa95a06e144c06fa091fa3
                                                    .y2bm5rqs3zbbqyxivjft35,
                                              )) {
                                                if (!context.mounted) return;
                                                CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
                                                  context,
                                                  'Follow each other to start a chat.',
                                                  isError: true,
                                                );
                                                return;
                                              }
                                              if (!context.mounted) return;
                                              Navigator.of(context).pushNamed(
                                                CokiSwimmingXu1hfvhsqfkovamr518kcwz
                                                    .kjro2uh8n8teco8d2elrzf,
                                                arguments:
                                                    cokiSwimming6168cabaed178586d747
                                                        .cokiSwimmingAa95a06e144c06fa091fa3,
                                              );
                                            },
                                          ),
                                          const SizedBox(height: 10),
                                        ],
                                      ],
                              ),
                            );
                          },
                        ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _CokiSwimmingX7ifh9z2quc7dxi extends StatelessWidget {
  const _CokiSwimmingX7ifh9z2quc7dxi();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const Positioned(
            left: 0,
            top: 0,
            child: Text(
              'Message',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                height: 1.2,
                letterSpacing: 0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Positioned(
            left: 94,
            top: -1,
            child: Image.asset(
              'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_1t87upgxeqhhj8h.png',
              width: 18,
              height: 14,
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_ayxbrfe89zbjhau4l3sd9e.png',
              width: 54,
              height: 4,
            ),
          ),
        ],
      ),
    );
  }
}

class _CokiSwimmingMvn2foxa9lwqzco60d extends StatelessWidget {
  const _CokiSwimmingMvn2foxa9lwqzco60d({
    required this.cokiSwimming8v3m1q6x9p2k7r4t5n0h,
    required this.cokiSwimmingF8ec827b49941758,
    required this.oqwlyilixqrgrl60dplkvj,
  });

  final String cokiSwimming8v3m1q6x9p2k7r4t5n0h;
  final CokiSwimmingOla0gu1u5h0t2dqk0sy77kg cokiSwimmingF8ec827b49941758;
  final VoidCallback oqwlyilixqrgrl60dplkvj;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label:
          '${cokiSwimmingF8ec827b49941758.y2bm5rqs3zbbqyxivjft35}, $cokiSwimming8v3m1q6x9p2k7r4t5n0h',
      child: CokiSwimmingKtoozpjuob7rods(
        kvg85l6uieobzf: BorderRadius.circular(38),
        gwrsyzojtp84oco1ldhaaw90: oqwlyilixqrgrl60dplkvj,
        v6j3bxo2dz4aevlmr: SizedBox(
          height: 74,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: const Color(0xFF100A30),
                    borderRadius: BorderRadius.circular(38),
                    border: Border.all(
                      color: const Color(0xFF5AD7F3),
                      width: 1.7,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: -7,
                child: CokiSwimmingBskfv8qke498jnw5a9nz(
                  bvuh7vp0q7jr0o6:
                      cokiSwimmingF8ec827b49941758.xkczithyrycvg26pfjjmm9,
                  qqonq4itbdxn5jaq8l63c4: 72,
                ),
              ),
              Positioned(
                left: 97,
                top: 11,
                right: 53,
                child: Text(
                  cokiSwimmingF8ec827b49941758.y2bm5rqs3zbbqyxivjft35,
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
              Positioned(
                left: 97,
                top: 43,
                right: 53,
                child: Text(
                  cokiSwimming8v3m1q6x9p2k7r4t5n0h,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CokiSwimming06013c0f8e55d70e534bd1 {
  const _CokiSwimming06013c0f8e55d70e534bd1({
    required this.cokiSwimmingAa95a06e144c06fa091fa3,
    required this.cokiSwimmingD9f06671a50530b5ee6b4567,
  });

  static _CokiSwimming06013c0f8e55d70e534bd1? cokiSwimming2767700d2c653098(
    String cokiSwimmingD12985833743d3093637cd,
  ) {
    try {
      final cokiSwimmingC3334a2ddfbb12b8a27fe3 = jsonDecode(
        cokiSwimmingD12985833743d3093637cd,
      );
      if (cokiSwimmingC3334a2ddfbb12b8a27fe3 is! Map) return null;
      final cokiSwimming6e4b87079a80aa6e =
          cokiSwimmingC3334a2ddfbb12b8a27fe3['coki_swimming_91f58a5ff4ad8b'];
      final cokiSwimming4ef4709090b6a6663d207b90 =
          cokiSwimmingC3334a2ddfbb12b8a27fe3['coki_swimming_6298354aa4e11480ad95'];
      if (cokiSwimming6e4b87079a80aa6e is! Map ||
          cokiSwimming4ef4709090b6a6663d207b90 is! List) {
        return null;
      }
      return _CokiSwimming06013c0f8e55d70e534bd1(
        cokiSwimmingAa95a06e144c06fa091fa3:
            CokiSwimmingOla0gu1u5h0t2dqk0sy77kg.cokiSwimming49593b911b058bc96d5a(
              Map<String, dynamic>.from(cokiSwimming6e4b87079a80aa6e),
            ),
        cokiSwimmingD9f06671a50530b5ee6b4567:
            cokiSwimming4ef4709090b6a6663d207b90
                .map(
                  (cokiSwimming881b2627e3dff684459da0cf) =>
                      cokiSwimming881b2627e3dff684459da0cf.toString(),
                )
                .toList(growable: false),
      );
    } on Object {
      return null;
    }
  }

  final CokiSwimmingOla0gu1u5h0t2dqk0sy77kg cokiSwimmingAa95a06e144c06fa091fa3;
  final List<String> cokiSwimmingD9f06671a50530b5ee6b4567;
}
