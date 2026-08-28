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
    final cokiSwimming7m2q9v4x1p8k6r3t5n0h = await CokiSwimmingDatabase
        .hxjpjp7w6ojq86l4ddyhf
        .cokiSwimming08fc79df5890845d(
          cokiSwimmingFfdff4098f67dc2a39b: cokiSwimming4p9m2q7v1x8k6r3t5n0h,
          cokiSwimming9ca085a1e9464611db57745:
              _CokiSwimmingRlviyh99dh4az0dmn52d5www
                  ._cokiSwimmingDf4bbdd6c54c5a0b721,
          cokiSwimming756b8fe9fc667a: _CokiSwimmingRlviyh99dh4az0dmn52d5www
              ._cokiSwimmingDf4bbdd6c54c5a0b721,
        );
    if (cokiSwimming7m2q9v4x1p8k6r3t5n0h == null) {
      await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
          .cokiSwimming74e8b2f70fa2f5b(
            cokiSwimming0a44fb28163763bb6ec69: cokiSwimming4p9m2q7v1x8k6r3t5n0h,
            cokiSwimming47e760ec313f586105:
                _CokiSwimmingRlviyh99dh4az0dmn52d5www
                    ._cokiSwimmingDf4bbdd6c54c5a0b721,
            cokiSwimmingDb6b0273792c060: _CokiSwimmingRlviyh99dh4az0dmn52d5www
                ._cokiSwimmingDf4bbdd6c54c5a0b721,
            cokiSwimmingC91a15fc4d8a49ccb: jsonEncode(
              _CokiSwimmingRlviyh99dh4az0dmn52d5www
                  ._cokiSwimming4q9m2v7x1p8k6r3t5n0h,
            ),
          );
    }
    if (mounted) {
      setState(
        () => _cokiSwimming2v9m4q1x8p6k7r3t5n0h =
            cokiSwimming4p9m2q7v1x8k6r3t5n0h,
      );
    }
  }

  List<String> _cokiSwimming1m8q4v9x3p7k6r2t5n0h(String? value) {
    if (value == null) return const [];
    try {
      final cokiSwimming9q2m7v4x1p8k6r3t5n0h = jsonDecode(value);
      return cokiSwimming9q2m7v4x1p8k6r3t5n0h is List
          ? cokiSwimming9q2m7v4x1p8k6r3t5n0h
                .map(
                  (cokiSwimming3v8m1q6x9p2k7r4t5n0h) =>
                      cokiSwimming3v8m1q6x9p2k7r4t5n0h.toString(),
                )
                .toList(growable: false)
          : const [];
    } on Object {
      return const [];
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
                      : StreamBuilder<String?>(
                          stream: CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
                              .cokiSwimming5a0c9ec6e99b9db2(
                                cokiSwimming437bcbd34e2d30e6:
                                    _cokiSwimming2v9m4q1x8p6k7r3t5n0h!,
                                cokiSwimmingA066704a66c5b817:
                                    _CokiSwimmingRlviyh99dh4az0dmn52d5www
                                        ._cokiSwimmingDf4bbdd6c54c5a0b721,
                                cokiSwimming04e6aeb1f334b2eb:
                                    _CokiSwimmingRlviyh99dh4az0dmn52d5www
                                        ._cokiSwimmingDf4bbdd6c54c5a0b721,
                              ),
                          builder: (context, cokiSwimming6v1m8q4x9p3k7r2t5n0h) {
                            final cokiSwimming4m9q2v7x1p8k6r3t5n0h =
                                _cokiSwimming1m8q4v9x3p7k6r2t5n0h(
                                  cokiSwimming6v1m8q4x9p3k7r2t5n0h.data,
                                );
                            return CokiSwimmingAba7n9vsqt6w3fz(
                              cokiSwimmingudas2o8q00gicj383hxod: ListView(
                                physics: const BouncingScrollPhysics(
                                  parent: AlwaysScrollableScrollPhysics(),
                                ),
                                padding: const EdgeInsets.fromLTRB(0, 7, 0, 24),
                                children: [
                                  _CokiSwimmingMvn2foxa9lwqzco60d(
                                    cokiSwimming8v3m1q6x9p2k7r4t5n0h:
                                        _cokiSwimming5q1m8v3x9p4k7r2t6n0h(
                                          cokiSwimming4m9q2v7x1p8k6r3t5n0h,
                                        ),
                                    oqwlyilixqrgrl60dplkvj: () =>
                                        Navigator.of(context).pushNamed(
                                          CokiSwimmingXu1hfvhsqfkovamr518kcwz
                                              .kjro2uh8n8teco8d2elrzf,
                                        ),
                                  ),
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
    required this.oqwlyilixqrgrl60dplkvj,
  });

  final String cokiSwimming8v3m1q6x9p2k7r4t5n0h;
  final VoidCallback oqwlyilixqrgrl60dplkvj;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: 'Pyrlen, $cokiSwimming8v3m1q6x9p2k7r4t5n0h',
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
                child: Image.asset(
                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_fya291tpfikb0l76cjlmqbm.png',
                  width: 72,
                  height: 72,
                  filterQuality: FilterQuality.high,
                ),
              ),
              const Positioned(
                left: 97,
                top: 11,
                right: 53,
                child: Text(
                  'Pyrlen',
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
