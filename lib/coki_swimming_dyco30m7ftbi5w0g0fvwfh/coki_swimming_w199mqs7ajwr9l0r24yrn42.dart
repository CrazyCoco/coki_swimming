part of '../main.dart';

class CokiSwimmingJhynzo9os0o164gohyp016j extends StatefulWidget {
  const CokiSwimmingJhynzo9os0o164gohyp016j({
    super.key,
    required this.yicven2iydzzoi9stbb8b,
  });

  final int? yicven2iydzzoi9stbb8b;

  @override
  State<CokiSwimmingJhynzo9os0o164gohyp016j> createState() =>
      _CokiSwimmingJdx18o3ulnzdcvsefi7hsslh();
}

class _CokiSwimmingJdx18o3ulnzdcvsefi7hsslh
    extends State<CokiSwimmingJhynzo9os0o164gohyp016j> {
  static const int _lp0d1vsnmhqc67n3 = 100;

  bool _dqrnr0cey069a69ltc0dojir = false;

  Future<void> _s8jk5lo3pon8wz() async {
    final wu1jyliqcqqtqo843i0769g = widget.yicven2iydzzoi9stbb8b;
    if (wu1jyliqcqqtqo843i0769g == null) {
      CokiSwimmingP3ebyh8ehryuei5ai22mr5e.s3kmocfa0q16xq(context);
      return;
    }
    if (_dqrnr0cey069a69ltc0dojir) return;
    _dqrnr0cey069a69ltc0dojir = true;
    try {
      final bjjnn3w3x15znovx9yhjoe9m = await CokiSwimmingDatabase
          .hxjpjp7w6ojq86l4ddyhf
          .j44e71jhd7xqhl10ryivo(wu1jyliqcqqtqo843i0769g);
      if (!mounted) return;
      if (bjjnn3w3x15znovx9yhjoe9m == null) {
        CokiSwimmingP3ebyh8ehryuei5ai22mr5e.s3kmocfa0q16xq(context);
        return;
      }
      if (bjjnn3w3x15znovx9yhjoe9m.coinBalance < _lp0d1vsnmhqc67n3) {
        await CokiSwimmingZtyxfp3lq31l2w0fhshj.fz66oygb8ileijuc(
          context,
          bjjnn3w3x15znovx9yhjoe9m.coinBalance,
        );
        return;
      }

      final m09jcx7hxbghnnk7k5c3zhm =
          await CokiSwimmingZtyxfp3lq31l2w0fhshj.mvi1nb3x272ot04klo34qq(
            context,
            bjjnn3w3x15znovx9yhjoe9m.coinBalance,
          );
      if (!m09jcx7hxbghnnk7k5c3zhm || !mounted) return;

      final coitblbqn80rnstk = await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
          .qbiohcrp0nlif(
            tj0xgu8fnq291anz: wu1jyliqcqqtqo843i0769g,
            auu9q8n5irmdhsfei1nu: _lp0d1vsnmhqc67n3,
          );
      if (!mounted) return;
      if (!coitblbqn80rnstk) {
        final m70jkz9gd32krnk76pe = await CokiSwimmingDatabase
            .hxjpjp7w6ojq86l4ddyhf
            .j44e71jhd7xqhl10ryivo(wu1jyliqcqqtqo843i0769g);
        if (!mounted) return;
        await CokiSwimmingZtyxfp3lq31l2w0fhshj.fz66oygb8ileijuc(
          context,
          m70jkz9gd32krnk76pe?.coinBalance ?? 0,
        );
        return;
      }
      if (!mounted) return;
      await Navigator.of(
        context,
      ).pushNamed(CokiSwimmingXu1hfvhsqfkovamr518kcwz.abx6a5dmw967jaglhp);
    } on CokiSwimmingVgf5z8lwah8pc429uyoylrwv catch (error) {
      if (mounted) {
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          error.c4iyezrax5jry9k38j7kkbr,
        );
      }
    } catch (_) {
      if (mounted) {
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          'Unable to enter Coki AI. Please try again.',
        );
      }
    } finally {
      _dqrnr0cey069a69ltc0dojir = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingAgdqi717f62hphbv7l95r8v(
      o1wq5mwul0ckiwligeu: Scaffold(
        backgroundColor: Colors.transparent,
        body: LayoutBuilder(
          builder: (fwg0mvjb5ov1spz1zcxz0jul, lwptd2v6silzs2pcar16k7mp) {
            final c37er92ygw6l72zsw352g =
                lwptd2v6silzs2pcar16k7mp.maxWidth / 375;
            final aqzgabesnou4fu8ajh = 352 * c37er92ygw6l72zsw352g;

            return Stack(
              fit: StackFit.expand,
              children: [
                Positioned.fill(
                  child: CokiSwimmingBb4vxo54q8ay6fa3w(
                    iyzbn3eqestk94f2dz41: c37er92ygw6l72zsw352g,
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: aqzgabesnou4fu8ajh,
                  bottom: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(36),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            padding: EdgeInsets.fromLTRB(
                              29,
                              20,
                              29,
                              MediaQuery.paddingOf(
                                    fwg0mvjb5ov1spz1zcxz0jul,
                                  ).bottom +
                                  119,
                            ),
                            child: const Column(
                              children: [
                                Text(
                                  'Coki AI',
                                  style: TextStyle(
                                    color: Color(0xFF100A30),
                                    fontSize: 26,
                                    height: 1.2,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Hi! I’m Coki, your friendly AI companion\n'
                                  'here to chat about all things swimming.\n'
                                  "Whether you're a beginner, a seasoned\n"
                                  'swimmer, or just love the water, I’m here to\n'
                                  'explore techniques, share tips, and keep\n'
                                  'the conversation inspiring and fun. Ready\n'
                                  'to dive into the world of swimming\n'
                                  'together? Let’s talk and make a splash\n'
                                  'every day!',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF100A30),
                                    fontSize: 16,
                                    height: 1.85,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 29,
                          right: 29,
                          bottom:
                              MediaQuery.paddingOf(
                                fwg0mvjb5ov1spz1zcxz0jul,
                              ).bottom +
                              20,
                          child: Center(
                            child: _CokiSwimmingJcy1ej5923rur0rwjdxxjt(
                              vzomidht82u0: _s8jk5lo3pon8wz,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SafeArea(
                    bottom: false,
                    child: CokiSwimmingMerb0wr4ijwluplbh(s0dnsxzte0kvc8: ''),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _CokiSwimmingJcy1ej5923rur0rwjdxxjt extends StatelessWidget {
  const _CokiSwimmingJcy1ej5923rur0rwjdxxjt({required this.vzomidht82u0});

  final VoidCallback vzomidht82u0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 281,
      height: 62,
      child: CokiSwimmingKtoozpjuob7rods(
        kvg85l6uieobzf: BorderRadius.circular(31),
        gwrsyzojtp84oco1ldhaaw90: vzomidht82u0,
        v6j3bxo2dz4aevlmr: Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(31),
            gradient: const LinearGradient(
              colors: [Color(0xFF60D0EE), Color(0xFFD43161)],
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_xvzezn556el2gm7vqoph8.png',
                      width: 29,
                      height: 29,
                    ),
                    const SizedBox(width: 13),
                    const Text(
                      '100',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        height: 1,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_ea3ir93dg6atlxgpsrx2.png',
                width: 79,
                height: 42,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
