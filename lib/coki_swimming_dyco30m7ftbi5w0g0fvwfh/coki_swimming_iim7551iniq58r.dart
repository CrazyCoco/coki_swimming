part of '../main.dart';

class CokiSwimmingAnbnc13220sf27xqcjw extends StatelessWidget {
  const CokiSwimmingAnbnc13220sf27xqcjw({
    super.key,
    required this.xbyhu3cod7ub27ci1y01,
    required this.rod6me6vc7zu5xq8rd7ge7,
    this.hmhuvt4cx467p = false,
    this.eh2cyd21e0fuca0kb8ue = false,
  });

  final String xbyhu3cod7ub27ci1y01;
  final Widget rod6me6vc7zu5xq8rd7ge7;
  final bool hmhuvt4cx467p;
  final bool eh2cyd21e0fuca0kb8ue;

  @override
  Widget build(BuildContext context) {
    final b3x7m1q9v5c8 = cokiSwimmingno1co2tb6p01cbgq6w3sj9k.first;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(xbyhu3cod7ub27ci1y01, fit: BoxFit.cover),
          Container(color: const Color(0x33D43161)),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 15, 22),
              child: Column(
                children: [
                  Row(
                    children: [
                      CokiSwimmingCsp12jwqwwjk3wya4y1(
                        detib9wx0a7eitw2731u4e: () =>
                            Navigator.of(context).maybePop(),
                      ),
                      const SizedBox(width: 10),
                      CokiSwimmingEv4ct2qk7zro(
                        b3x7m1q9v5c8.y2bm5rqs3zbbqyxivjft35,
                        hi4ae102r25lkc3: TextStyle(
                          fontSize: 16,
                          height: 1.2,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const Spacer(),
                      CokiSwimmingL87l1svejpll9i99(
                        aseqz83ezsawz3urs5: Colors.white.withValues(
                          alpha: 0.84,
                        ),
                        rx3u02ekjw3epobplo8e: () =>
                            CokiSwimmingY5kxebxyhv8gg32yly.kco1p8qja05cbsuhzrwcvesj(
                              context,
                              h5j30v6kt4ykg21tutwflx: eh2cyd21e0fuca0kb8ue,
                              ssqbxn8vpgdaf9emp9937fjk: () =>
                                  CokiSwimmingEa33alie83a7ztht03ml6za.v8k18e1fwcihnfevusm4iq(
                                    context,
                                    cokiSwimming2017dfe9792f0833:
                                        b3x7m1q9v5c8.y2bm5rqs3zbbqyxivjft35,
                                  ),
                            ),
                        jf9ewz509wfu: const Icon(
                          Icons.more_horiz,
                          color: Color(0xFF100A30),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  if (hmhuvt4cx467p)
                    Container(
                      padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              '${b3x7m1q9v5c8.y2bm5rqs3zbbqyxivjft35}\nCalling...',
                              style: TextStyle(
                                color: Color(0xFF100A30),
                                fontSize: 15,
                                height: 1.35,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          CokiSwimmingKtoozpjuob7rods(
                            kvg85l6uieobzf: BorderRadius.circular(28),
                            gwrsyzojtp84oco1ldhaaw90: () =>
                                Navigator.of(context).maybePop(),
                            v6j3bxo2dz4aevlmr: rod6me6vc7zu5xq8rd7ge7,
                          ),
                        ],
                      ),
                    )
                  else
                    Row(
                      children: [
                        CokiSwimmingBskfv8qke498jnw5a9nz(
                          bvuh7vp0q7jr0o6: b3x7m1q9v5c8.xkczithyrycvg26pfjjmm9,
                          qqonq4itbdxn5jaq8l63c4: 42,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            b3x7m1q9v5c8.b7oexxik958wc,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              height: 1.35,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        rod6me6vc7zu5xq8rd7ge7,
                      ],
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
