part of '../main.dart';

class CokiSwimmingF3bqmkric2w2otb1zw1kb extends StatefulWidget {
  const CokiSwimmingF3bqmkric2w2otb1zw1kb({
    super.key,
    required this.azyy8sf80s5jqnwakit,
  });

  final Future<void> Function() azyy8sf80s5jqnwakit;

  @override
  State<CokiSwimmingF3bqmkric2w2otb1zw1kb> createState() =>
      _CokiSwimmingUoo12dnuy6g1dly77r70z7o();
}

class _CokiSwimmingUoo12dnuy6g1dly77r70z7o
    extends State<CokiSwimmingF3bqmkric2w2otb1zw1kb> {
  bool _vf119bqe8x819f = false;

  Future<void> _rbhde39j2itl6w9n0q() async {
    if (_vf119bqe8x819f) return;
    setState(() => _vf119bqe8x819f = true);

    try {
      await widget.azyy8sf80s5jqnwakit();
      if (!mounted) return;
      Navigator.of(context).maybePop();
    } catch (_) {
      if (!mounted) return;
      setState(() => _vf119bqe8x819f = false);
      CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(context, 'Please try again');
    }
  }

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingAgdqi717f62hphbv7l95r8v(
      o1wq5mwul0ckiwligeu: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: MediaQuery.withClampedTextScaling(
            minScaleFactor: 1,
            maxScaleFactor: 1,
            child: Stack(
              children: [
                Positioned.fill(
                  child: LayoutBuilder(
                    builder: (ei5bat3hp59umqhu1ss, xu78r375bffiqltj2z654) {
                      const hgdh9gpzy4i8tvw = 690.0;
                      final t56wjs0ipu4ti7b = SizedBox(
                        width: xu78r375bffiqltj2z654.maxWidth,
                        height: hgdh9gpzy4i8tvw,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            const Positioned(
                              top: 42,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: Image(
                                  image: AssetImage(
                                    'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_23fmgeb3ge11c.png',
                                  ),
                                  width: 395,
                                  height: 643,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 106,
                              left: 43,
                              right: 43,
                              child: Text(
                                'EULA',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF100A30),
                                  fontSize: 28,
                                  height: 1.1,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 161,
                              left: 43,
                              right: 43,
                              child: Text(
                                'Welcome to Coki! To make a better place, the '
                                'following content is not allowed in the app, '
                                'in particular.\n\n'
                                '1. Any content about child harm or pornography '
                                'that is detrimental to children.\n'
                                '2. Fake and harmful messages about recent or '
                                'current events.\n'
                                '3. Any violent or bullying content, public '
                                'pornography, or other harmful content.\n\n'
                                'If we find content including, but not limited '
                                'to, the violations above, your content will be '
                                'deleted and your account will be banned. By '
                                'clicking the button below, you agree to the '
                                'Terms of Use and Privacy Policy.',
                                softWrap: true,
                                style: TextStyle(
                                  color: Color(0xFF100A30),
                                  fontSize: 13,
                                  height: 1.36,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 516,
                              left: 56,
                              right: 56,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CokiSwimmingKtoozpjuob7rods(
                                    gwrsyzojtp84oco1ldhaaw90: () =>
                                        Navigator.of(
                                          ei5bat3hp59umqhu1ss,
                                        ).pushNamed(
                                          CokiSwimmingXu1hfvhsqfkovamr518kcwz
                                              .nct1qa2b32btuplvw,
                                        ),
                                    v6j3bxo2dz4aevlmr: const Text(
                                      'Terms of Use',
                                      style: TextStyle(
                                        color: Color(0xFF100A30),
                                        fontSize: 14,
                                        height: 1.2,
                                        letterSpacing: 0,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                  CokiSwimmingKtoozpjuob7rods(
                                    gwrsyzojtp84oco1ldhaaw90: () =>
                                        Navigator.of(
                                          ei5bat3hp59umqhu1ss,
                                        ).pushNamed(
                                          CokiSwimmingXu1hfvhsqfkovamr518kcwz
                                              .xj2ddkvmttnkcmpro9up,
                                        ),
                                    v6j3bxo2dz4aevlmr: const Text(
                                      'Privacy Policy',
                                      style: TextStyle(
                                        color: Color(0xFF100A30),
                                        fontSize: 14,
                                        height: 1.2,
                                        letterSpacing: 0,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 562,
                              left: 56,
                              child: _CokiSwimmingQecu1ii6vxm9udx79yw16lb(
                                e0qjpoj1keub7: 'Cancel',
                                qr159aqx3ikobf18ip98sxa: const Color(
                                  0xFFDE3265,
                                ),
                                j5hxfu5jjmhnlh24n: Colors.white,
                                nv5u8a54u82ep: () => Navigator.of(
                                  ei5bat3hp59umqhu1ss,
                                ).maybePop(),
                              ),
                            ),
                            Positioned(
                              top: 562,
                              right: 56,
                              child: _CokiSwimmingQecu1ii6vxm9udx79yw16lb(
                                e0qjpoj1keub7: _vf119bqe8x819f
                                    ? 'Saving...'
                                    : 'I agree',
                                qr159aqx3ikobf18ip98sxa: const Color(
                                  0xFF58CBE9,
                                ),
                                j5hxfu5jjmhnlh24n: const Color(0xFF100A30),
                                nv5u8a54u82ep: _rbhde39j2itl6w9n0q,
                              ),
                            ),
                          ],
                        ),
                      );

                      if (xu78r375bffiqltj2z654.maxHeight >= hgdh9gpzy4i8tvw) {
                        return t56wjs0ipu4ti7b;
                      }
                      return SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: t56wjs0ipu4ti7b,
                      );
                    },
                  ),
                ),
                Positioned(
                  left: 18,
                  top: 8,
                  child: CokiSwimmingCsp12jwqwwjk3wya4y1(
                    detib9wx0a7eitw2731u4e: () =>
                        Navigator.of(context).maybePop(),
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

class _CokiSwimmingQecu1ii6vxm9udx79yw16lb extends StatelessWidget {
  const _CokiSwimmingQecu1ii6vxm9udx79yw16lb({
    required this.e0qjpoj1keub7,
    required this.qr159aqx3ikobf18ip98sxa,
    required this.j5hxfu5jjmhnlh24n,
    required this.nv5u8a54u82ep,
  });

  final String e0qjpoj1keub7;
  final Color qr159aqx3ikobf18ip98sxa;
  final Color j5hxfu5jjmhnlh24n;
  final VoidCallback nv5u8a54u82ep;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingKtoozpjuob7rods(
      kvg85l6uieobzf: BorderRadius.circular(21),
      gwrsyzojtp84oco1ldhaaw90: nv5u8a54u82ep,
      v6j3bxo2dz4aevlmr: Container(
        width: 120,
        height: 41,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: qr159aqx3ikobf18ip98sxa,
          borderRadius: BorderRadius.circular(21),
        ),
        child: Text(
          e0qjpoj1keub7,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: j5hxfu5jjmhnlh24n,
            fontSize: 17,
            height: 1.1,
            letterSpacing: 0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
