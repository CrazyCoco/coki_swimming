part of '../main.dart';

class CokiSwimmingG6jfou78x0oxqhagqndc extends StatefulWidget {
  const CokiSwimmingG6jfou78x0oxqhagqndc({
    super.key,
    required this.e15skmj605uthn4lzizpmq,
    required this.eln3mx6gr6pmf,
  });

  final bool e15skmj605uthn4lzizpmq;
  final VoidCallback eln3mx6gr6pmf;

  @override
  State<CokiSwimmingG6jfou78x0oxqhagqndc> createState() =>
      _CokiSwimmingL8hqptt095bnqbx();
}

class _CokiSwimmingL8hqptt095bnqbx
    extends State<CokiSwimmingG6jfou78x0oxqhagqndc> {
  bool _ftyqajvtfdhd6j3f5cyqs = true;
  late bool _clrsrdg80aeeuo = widget.e15skmj605uthn4lzizpmq;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || _clrsrdg80aeeuo) return;
      unawaited(_qs70wv2idd6yxp2());
    });
  }

  @override
  void didUpdateWidget(covariant CokiSwimmingG6jfou78x0oxqhagqndc oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!_clrsrdg80aeeuo && widget.e15skmj605uthn4lzizpmq) {
      _clrsrdg80aeeuo = true;
    }
  }

  Future<void> _qs70wv2idd6yxp2() async {
    await Navigator.of(
      context,
    ).pushNamed(CokiSwimmingXu1hfvhsqfkovamr518kcwz.e5shdycqn08j0u);
    if (!mounted) return;
    final j35yvi2zd7wnffb1 = await SharedPreferencesAsync().getString(
      CokiSwimmingCihhtnn535rfht8ub._fz828f6q88qr6g01kmk7agiu,
    );
    if (!mounted ||
        j35yvi2zd7wnffb1 != CokiSwimmingCihhtnn535rfht8ub._c802vxn9yl344nkkln) {
      return;
    }
    setState(() => _clrsrdg80aeeuo = true);
  }

  void _rkkclmgkyb57(VoidCallback ot5jy0cesf0u86c) {
    if (!_ftyqajvtfdhd6j3f5cyqs) {
      CokiSwimmingPothrx0fvi0fca95wdeundg.rxs3hht4x3f62h649m35(context);
      return;
    }
    if (!_clrsrdg80aeeuo) {
      unawaited(_qs70wv2idd6yxp2());
      return;
    }
    ot5jy0cesf0u86c();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF100A30),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_gahch1uqy0n9xao.png',
            fit: BoxFit.cover,
          ),
          SafeArea(
            bottom: false,
            child: Stack(
              children: [
                Positioned(
                  left: 26,
                  top: 11,
                  child: Image.asset(
                    'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_6qpyrg777rks5x.png',
                    width: 97,
                    height: 97,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  right: 25,
                  top: 34,
                  child: CokiSwimmingKtoozpjuob7rods(
                    kvg85l6uieobzf: BorderRadius.circular(15),
                    gwrsyzojtp84oco1ldhaaw90: _qs70wv2idd6yxp2,
                    v6j3bxo2dz4aevlmr: Image.asset(
                      'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_2nvh3bpqi74ehw.png',
                      width: 61,
                      height: 31,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 235,
            child: Center(
              child: SizedBox(
                width: 229,
                child: CokiSwimmingKtoozpjuob7rods(
                  kvg85l6uieobzf: BorderRadius.circular(31),
                  gwrsyzojtp84oco1ldhaaw90: () => _rkkclmgkyb57(
                    () => Navigator.of(context).pushNamed(
                      CokiSwimmingXu1hfvhsqfkovamr518kcwz
                          .v6r01vmzirdm6ih93y1bw89,
                    ),
                  ),
                  v6j3bxo2dz4aevlmr: Container(
                    height: 62,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF5AC9E6),
                      borderRadius: BorderRadius.circular(31),
                    ),
                    child: const Text(
                      'Login by email',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        height: 1.2,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 154,
            child: Center(
              child: SizedBox(
                width: 229,
                child: CokiSwimmingKtoozpjuob7rods(
                  kvg85l6uieobzf: BorderRadius.circular(31),
                  gwrsyzojtp84oco1ldhaaw90: () => _rkkclmgkyb57(() {
                    widget.eln3mx6gr6pmf();
                    Navigator.of(context).pushReplacementNamed(
                      CokiSwimmingXu1hfvhsqfkovamr518kcwz.j5gyhamjcuq9pbexd6,
                    );
                  }),
                  v6j3bxo2dz4aevlmr: Container(
                    height: 62,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF100A30),
                      borderRadius: BorderRadius.circular(31),
                    ),
                    child: const Text(
                      "I'm new",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        height: 1.2,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 94,
            child: CokiSwimmingKtoozpjuob7rods(
              gwrsyzojtp84oco1ldhaaw90: () => _rkkclmgkyb57(
                () => Navigator.of(context).pushNamed(
                  CokiSwimmingXu1hfvhsqfkovamr518kcwz.l8xp5be6yknfl9cf,
                ),
              ),
              v6j3bxo2dz4aevlmr: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "Don't have an account? "),
                      TextSpan(
                        text: 'Sign up',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.25,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 22,
            right: 18,
            bottom: 17,
            child: SizedBox(
              height: 44,
              child: Row(
                children: [
                  CokiSwimmingKtoozpjuob7rods(
                    kvg85l6uieobzf: BorderRadius.circular(10),
                    gwrsyzojtp84oco1ldhaaw90: () => setState(
                      () => _ftyqajvtfdhd6j3f5cyqs = !_ftyqajvtfdhd6j3f5cyqs,
                    ),
                    v6j3bxo2dz4aevlmr: SizedBox(
                      width: 27,
                      height: 44,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          _ftyqajvtfdhd6j3f5cyqs
                              ? 'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_dl9azo8cvuuv683q58fx.png'
                              : 'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_7yct69miadxa6hav58w081s.png',
                          width: 19,
                          height: 19,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Agree with ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      height: 1.2,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  CokiSwimmingKtoozpjuob7rods(
                    gwrsyzojtp84oco1ldhaaw90: () =>
                        Navigator.of(context).pushNamed(
                          CokiSwimmingXu1hfvhsqfkovamr518kcwz.nct1qa2b32btuplvw,
                        ),
                    v6j3bxo2dz4aevlmr: const Text(
                      'Agreement',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        height: 1.2,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                      ),
                    ),
                  ),
                  const Text(
                    ' and ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      height: 1.2,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: CokiSwimmingKtoozpjuob7rods(
                        gwrsyzojtp84oco1ldhaaw90: () =>
                            Navigator.of(context).pushNamed(
                              CokiSwimmingXu1hfvhsqfkovamr518kcwz
                                  .xj2ddkvmttnkcmpro9up,
                            ),
                        v6j3bxo2dz4aevlmr: const Text(
                          'Privacy Policy',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            height: 1.2,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
