part of '../main.dart';

class CokiSwimmingHdy0szot3oa6f extends StatefulWidget {
  const CokiSwimmingHdy0szot3oa6f({super.key, this.i33j1nxutqw9dchknroyt});

  final int? i33j1nxutqw9dchknroyt;

  @override
  State<CokiSwimmingHdy0szot3oa6f> createState() =>
      _CokiSwimmingU5ym6x8hwr143m0kcx4u();
}

class _CokiSwimmingU5ym6x8hwr143m0kcx4u
    extends State<CokiSwimmingHdy0szot3oa6f> {
  int _o9q06e25cpbkfrc2h = 0;
  int _lyp2ehj7ehwh3u = 0;

  @override
  void initState() {
    super.initState();
    final tmkwjoa50oo2rb493mn2b = CokiSwimmingYvskltre1b3n2c.aqmgi7an071diai55;
    _lyp2ehj7ehwh3u = tmkwjoa50oo2rb493mn2b.yhhwyg0v13wjs?.vextpkj2kaug2 ?? 0;
    tmkwjoa50oo2rb493mn2b.addListener(_p29qcu1ejdv9cg6mdhq);
    unawaited(tmkwjoa50oo2rb493mn2b.nrlk51iq4ebm64odwcptzz0j());
  }

  @override
  void dispose() {
    CokiSwimmingYvskltre1b3n2c.aqmgi7an071diai55.removeListener(
      _p29qcu1ejdv9cg6mdhq,
    );
    super.dispose();
  }

  void _p29qcu1ejdv9cg6mdhq() {
    if (!mounted) return;
    final y383jpdnybiirrylh6z6wk7 =
        CokiSwimmingYvskltre1b3n2c.aqmgi7an071diai55.yhhwyg0v13wjs;
    if (y383jpdnybiirrylh6z6wk7 != null &&
        y383jpdnybiirrylh6z6wk7.vextpkj2kaug2 > _lyp2ehj7ehwh3u) {
      _lyp2ehj7ehwh3u = y383jpdnybiirrylh6z6wk7.vextpkj2kaug2;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
            context,
            y383jpdnybiirrylh6z6wk7.x2sgt6ypykglya9y,
          );
        }
      });
    }
    setState(() {});
  }

  Future<void> _a49l1hewapoe5nl75c() async {
    final rsfc5og9rzkcqdy4df = widget.i33j1nxutqw9dchknroyt;
    if (rsfc5og9rzkcqdy4df == null) {
      CokiSwimmingP3ebyh8ehryuei5ai22mr5e.s3kmocfa0q16xq(context);
      return;
    }
    final n8ybigvtvdb1wpu =
        CokiSwimmingC7klfiakfgt9l7wvr.pi7u049fzay8w9yo796zg[_o9q06e25cpbkfrc2h];
    await CokiSwimmingYvskltre1b3n2c.aqmgi7an071diai55.dazoq38rv2crn8os8m(
      t5mk7gqt9eudanj: n8ybigvtvdb1wpu,
      czx0gl7s6hm8oj: rsfc5og9rzkcqdy4df,
    );
  }

  @override
  Widget build(BuildContext context) {
    const z4pzc5wkoyvtj7rb53rm2v =
        CokiSwimmingC7klfiakfgt9l7wvr.pi7u049fzay8w9yo796zg;
    final r3y16kyv2t6mx = z4pzc5wkoyvtj7rb53rm2v[_o9q06e25cpbkfrc2h];
    final lfjjz8iihrak4abty = CokiSwimmingYvskltre1b3n2c.aqmgi7an071diai55
        .mjpxqty1eu7jaqde(r3y16kyv2t6mx.gf1ak32yamjjsdmdtg2olv0);
    final v9rpvb3sixj2jerw = MediaQuery.paddingOf(context).bottom;
    return CokiSwimmingAgdqi717f62hphbv7l95r8v(
      o1wq5mwul0ckiwligeu: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: Image.asset(
                'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_9xf7k0zny5z102pg7.png',
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            Positioned(
              right: 19,
              top: 88,
              child: IgnorePointer(
                child: Image.asset(
                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_nyrarxn46ciz66.png',
                  width: 145,
                  height: 145,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SafeArea(
              bottom: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CokiSwimmingMerb0wr4ijwluplbh(
                    s0dnsxzte0kvc8: 'My diamonds',
                  ),
                  const SizedBox(height: 35),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 31),
                    child: Text(
                      'My diamonds',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        height: 1.2,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 31),
                    child: _CokiSwimmingCwqgi058awdtvk(
                      bamt7cfpj3uyv8: widget.i33j1nxutqw9dchknroyt,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Expanded(
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.fromLTRB(
                        21,
                        0,
                        21,
                        v9rpvb3sixj2jerw + 108,
                      ),
                      itemCount: z4pzc5wkoyvtj7rb53rm2v.length,
                      separatorBuilder: (_, _) => const SizedBox(height: 12),
                      itemBuilder: (lukrj5dujs31c, e3sijqn4w3dkql8z) {
                        return _CokiSwimmingFvnaa5slby5q25kh8(
                          j54jx2z6vjpfdw8eipr:
                              z4pzc5wkoyvtj7rb53rm2v[e3sijqn4w3dkql8z],
                          ya5kyunybk6pt1lu:
                              e3sijqn4w3dkql8z == _o9q06e25cpbkfrc2h,
                          qe0q6vzi3xpl: () => setState(
                            () => _o9q06e25cpbkfrc2h = e3sijqn4w3dkql8z,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 75,
              right: 75,
              bottom: v9rpvb3sixj2jerw + 22,
              child: CokiSwimmingXjx1kxye89zenp9u(
                vnjrt3g80paath: lfjjz8iihrak4abty ? 'Loading...' : 'Recharge',
                hnhyq6y6036stosq12zx: 62,
                t15oelyr52ys: 22,
                ouj1nn8u7hkigj89bhzhbjn: lfjjz8iihrak4abty
                    ? () {}
                    : _a49l1hewapoe5nl75c,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CokiSwimmingCwqgi058awdtvk extends StatelessWidget {
  const _CokiSwimmingCwqgi058awdtvk({required this.bamt7cfpj3uyv8});

  final int? bamt7cfpj3uyv8;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 118,
      height: 45,
      padding: const EdgeInsets.fromLTRB(8, 5, 11, 5),
      decoration: BoxDecoration(
        color: const Color(0xFF100A30),
        borderRadius: BorderRadius.circular(23),
        border: Border.all(color: const Color(0xFF60D0EE), width: 2),
      ),
      child: Row(
        children: [
          Image.asset(
            'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_xvzezn556el2gm7vqoph8.png',
            width: 30,
            height: 30,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: _CokiSwimmingIwxsbsl1jhw8tdbfld(
              opyq93tw4n16b7kah6: bamt7cfpj3uyv8,
            ),
          ),
        ],
      ),
    );
  }
}

class _CokiSwimmingFvnaa5slby5q25kh8 extends StatelessWidget {
  const _CokiSwimmingFvnaa5slby5q25kh8({
    required this.j54jx2z6vjpfdw8eipr,
    required this.ya5kyunybk6pt1lu,
    required this.qe0q6vzi3xpl,
  });

  final CokiSwimmingSz0r1zeed32k3z5e j54jx2z6vjpfdw8eipr;
  final bool ya5kyunybk6pt1lu;
  final VoidCallback qe0q6vzi3xpl;

  @override
  Widget build(BuildContext context) {
    final lk34k5iiz4utpfsicvp12 = ya5kyunybk6pt1lu
        ? Colors.white
        : const Color(0xFF100A30);
    return CokiSwimmingKtoozpjuob7rods(
      kvg85l6uieobzf: BorderRadius.circular(21),
      gwrsyzojtp84oco1ldhaaw90: qe0q6vzi3xpl,
      v6j3bxo2dz4aevlmr: Container(
        height: 66,
        padding: const EdgeInsets.fromLTRB(18, 8, 10, 8),
        decoration: BoxDecoration(
          color: ya5kyunybk6pt1lu ? const Color(0xFF60C9E8) : Colors.white,
          borderRadius: BorderRadius.circular(21),
        ),
        child: Row(
          children: [
            Image.asset(
              'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_xvzezn556el2gm7vqoph8.png',
              width: 29,
              height: 29,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                j54jx2z6vjpfdw8eipr.q5pk0r3dfv23dc1q.toString(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: lk34k5iiz4utpfsicvp12,
                  fontSize: 18,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Text(
              j54jx2z6vjpfdw8eipr.u198ljm6plrhth6qp,
              style: TextStyle(
                color: lk34k5iiz4utpfsicvp12,
                fontSize: 14,
                height: 1.2,
                letterSpacing: 0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 10),
            _CokiSwimmingKnqumslqshy480x(
              fzhb5c2ymkby572vye9gumwr: ya5kyunybk6pt1lu,
            ),
          ],
        ),
      ),
    );
  }
}

class _CokiSwimmingKnqumslqshy480x extends StatelessWidget {
  const _CokiSwimmingKnqumslqshy480x({required this.fzhb5c2ymkby572vye9gumwr});

  final bool fzhb5c2ymkby572vye9gumwr;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 14,
      height: 14,
      decoration: BoxDecoration(
        color: fzhb5c2ymkby572vye9gumwr ? null : const Color(0xFF100A30),
        shape: BoxShape.circle,
        gradient: fzhb5c2ymkby572vye9gumwr
            ? const LinearGradient(
                colors: [
                  Color(0xFF60D0EE),
                  Color(0xFFAD99C2),
                  Color(0xFFD43161),
                ],
                stops: [0, 0.4704, 1],
              )
            : null,
        border: fzhb5c2ymkby572vye9gumwr
            ? Border.all(color: Colors.white, width: 1.2)
            : null,
      ),
    );
  }
}

class _CokiSwimmingIwxsbsl1jhw8tdbfld extends StatelessWidget {
  const _CokiSwimmingIwxsbsl1jhw8tdbfld({required this.opyq93tw4n16b7kah6});

  final int? opyq93tw4n16b7kah6;

  @override
  Widget build(BuildContext context) {
    final y494dee6rwww9cm70j7 = opyq93tw4n16b7kah6;
    if (y494dee6rwww9cm70j7 == null) {
      return const _CokiSwimmingUe6fa6p6rer8tnj(rdbobsgwftyxwgohy2: 0);
    }
    return StreamBuilder<CokiSwimmingMember?>(
      stream: CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf.qegrc7kcffpv0i(
        y494dee6rwww9cm70j7,
      ),
      builder: (jj2v4nft153d4pty3, lyww73v9im0j89g95) =>
          _CokiSwimmingUe6fa6p6rer8tnj(
            rdbobsgwftyxwgohy2: lyww73v9im0j89g95.data?.coinBalance ?? 0,
          ),
    );
  }
}

class _CokiSwimmingUe6fa6p6rer8tnj extends StatelessWidget {
  const _CokiSwimmingUe6fa6p6rer8tnj({required this.rdbobsgwftyxwgohy2});

  final int rdbobsgwftyxwgohy2;

  @override
  Widget build(BuildContext context) {
    return Text(
      rdbobsgwftyxwgohy2.toString(),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 17,
        height: 1.2,
        letterSpacing: 0,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
