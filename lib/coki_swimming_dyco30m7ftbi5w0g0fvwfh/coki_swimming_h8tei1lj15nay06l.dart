part of '../main.dart';

class CokiSwimmingFw9r7ttig90mv5srreeq8sj6 extends StatefulWidget {
  const CokiSwimmingFw9r7ttig90mv5srreeq8sj6({super.key});

  @override
  State<CokiSwimmingFw9r7ttig90mv5srreeq8sj6> createState() =>
      _CokiSwimmingNiyl6fmbgal9vxloc3d5nj();
}

class _CokiSwimmingNiyl6fmbgal9vxloc3d5nj
    extends State<CokiSwimmingFw9r7ttig90mv5srreeq8sj6> {
  static const Color _o6vnhrfu0kkm = Color(0xFF100A30);
  static const Color _ucfx3gbidahj9qb27gv795 = Color(0xFF3A3558);
  static const List<String> _xt0i2uv0qexs2 = [
    'Training',
    'Lifestyle',
    'Community',
  ];

  final TextEditingController _elg6kb8vdzgnvoczsdo6i = TextEditingController();
  int _c3dgbtkv29uy93wbnuz69ml6 = 0;
  String? _nbub2jcpb2weejwuu;
  bool _w8xlxzr9a76gcwf1 = false;

  @override
  void dispose() {
    _elg6kb8vdzgnvoczsdo6i.dispose();
    super.dispose();
  }

  Future<void> _n0t7llxd959xaffhkgy6ab() async {
    if (_w8xlxzr9a76gcwf1) return;
    final z1zmk7tt4z4xpzpc2g12chup =
        await CokiSwimmingRtwym9wmdetuorto7.uxp9wn4bxdjeda(context);
    if (z1zmk7tt4z4xpzpc2g12chup == null || !mounted) return;

    setState(() => _w8xlxzr9a76gcwf1 = true);
    final k3nvjl651e3c = await CokiSwimmingMoqf2x4lzqna5nuxmxu1rah5
        .j0gecuushzrwcqffsejytl
        .cil9vlkhbbu64x(z1zmk7tt4z4xpzpc2g12chup);
    if (!mounted) return;
    setState(() => _w8xlxzr9a76gcwf1 = false);

    switch (k3nvjl651e3c.s8ino37cgs5urhavq3k) {
      case CokiSwimmingAgu703r90i4rdun9b8a07eu1.zbp3eniyd720ii:
        if (k3nvjl651e3c.cl6shvp4miod1vh != null) {
          setState(() => _nbub2jcpb2weejwuu = k3nvjl651e3c.cl6shvp4miod1vh);
        }
        break;
      case CokiSwimmingAgu703r90i4rdun9b8a07eu1.i6phxpwdk2a3a6kl3hcrj:
        break;
      case CokiSwimmingAgu703r90i4rdun9b8a07eu1.hhjze8rpndgpsp3t8nfyaia:
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          z1zmk7tt4z4xpzpc2g12chup ==
                  CokiSwimmingGcnt0jewcf1egxi3.xqv2yjmj3yqx4dg
              ? 'Camera permission is required to take a photo'
              : 'Photo Library permission is required to choose a photo',
        );
        break;
      case CokiSwimmingAgu703r90i4rdun9b8a07eu1.xfylbv3f69742tgubgsh:
        CokiSwimmingR7qb20p0rwuw7.dl5fmb2io0o4apao43(
          context,
          aushougwjesw3a58m7ka:
              z1zmk7tt4z4xpzpc2g12chup ==
                  CokiSwimmingGcnt0jewcf1egxi3.xqv2yjmj3yqx4dg
              ? 'Camera'
              : 'Photo Library',
        );
        break;
      case CokiSwimmingAgu703r90i4rdun9b8a07eu1.ml7v6nhg8apanpou1b92nq:
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          'The selected photo is unavailable',
        );
        break;
      case CokiSwimmingAgu703r90i4rdun9b8a07eu1.lbqeawmbjqjbyellb:
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          'Unable to select photo',
        );
        break;
    }
  }

  void _w425c8n25weiqiils3qjvu() {
    FocusScope.of(context).unfocus();
    CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(context, 'Released');
    Navigator.of(context).maybePop();
  }

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingAgdqi717f62hphbv7l95r8v(
      o1wq5mwul0ckiwligeu: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: [
              _npqux2xlqok9pl(context),
              Expanded(
                child: CustomScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SliverPadding(
                      padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                      sliver: SliverList.list(
                        children: [
                          _nk9gtv914rppmy(),
                          const SizedBox(height: 26),
                          const Text('Theme', style: _xafxbm4w730bb),
                          const SizedBox(height: 14),
                          _e1z0xzoxd22rgzqtoufipm(),
                          const SizedBox(height: 27),
                          const Text('Upload  (Pic)', style: _xafxbm4w730bb),
                          const SizedBox(height: 20),
                          _aj9x06b4tq1bo(),
                        ],
                      ),
                    ),
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Column(
                        children: [
                          const Spacer(),
                          SizedBox(
                            width: 230,
                            height: 53,
                            child: CokiSwimmingXjx1kxye89zenp9u(
                              vnjrt3g80paath: 'Release',
                              hnhyq6y6036stosq12zx: 53,
                              t15oelyr52ys: 20,
                              ouj1nn8u7hkigj89bhzhbjn: _w425c8n25weiqiils3qjvu,
                            ),
                          ),
                          const SizedBox(height: 21),
                        ],
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

  Widget _npqux2xlqok9pl(BuildContext o1za0ce6a11oxy2c) {
    return SizedBox(
      height: 60,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: CokiSwimmingCsp12jwqwwjk3wya4y1(
            detib9wx0a7eitw2731u4e: () =>
                Navigator.of(o1za0ce6a11oxy2c).maybePop(),
          ),
        ),
      ),
    );
  }

  Widget _nk9gtv914rppmy() {
    return Container(
      height: 176,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: TextField(
              controller: _elg6kb8vdzgnvoczsdo6i,
              maxLength: 150,
              minLines: null,
              maxLines: null,
              expands: true,
              textAlignVertical: TextAlignVertical.top,
              onChanged: (_) => setState(() {}),
              style: const TextStyle(
                color: _o6vnhrfu0kkm,
                fontSize: 16,
                height: 1.4,
                letterSpacing: 0,
                fontWeight: FontWeight.w400,
              ),
              decoration: const InputDecoration(
                hintText: 'Please enter',
                hintStyle: TextStyle(
                  color: Color(0xFFA6A6A6),
                  fontSize: 16,
                  height: 1.4,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
                counterText: '',
                border: InputBorder.none,
                contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 38),
              ),
            ),
          ),
          Positioned(
            right: 13,
            bottom: 13,
            child: IgnorePointer(
              child: Text(
                '${_elg6kb8vdzgnvoczsdo6i.text.characters.length}/150',
                style: const TextStyle(
                  color: Color(0xFFA6A6A6),
                  fontSize: 14,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _e1z0xzoxd22rgzqtoufipm() {
    const spj31phk07ggq01qd42 = [95.0, 95.0, 114.0];
    return LayoutBuilder(
      builder: (gq1aw9q17zq1pbk, iko6ab3wrt0cfmf0bre) {
        final ro4nuv9v35jxz = math.min(1.0, iko6ab3wrt0cfmf0bre.maxWidth / 324);
        return Row(
          children: [
            for (
              var ojqjx0ndycfvsk9gn = 0;
              ojqjx0ndycfvsk9gn < _xt0i2uv0qexs2.length;
              ojqjx0ndycfvsk9gn++
            ) ...[
              if (ojqjx0ndycfvsk9gn > 0) SizedBox(width: 10 * ro4nuv9v35jxz),
              SizedBox(
                width: spj31phk07ggq01qd42[ojqjx0ndycfvsk9gn] * ro4nuv9v35jxz,
                child: CokiSwimmingKtoozpjuob7rods(
                  kvg85l6uieobzf: BorderRadius.circular(19),
                  gwrsyzojtp84oco1ldhaaw90: () => setState(
                    () => _c3dgbtkv29uy93wbnuz69ml6 = ojqjx0ndycfvsk9gn,
                  ),
                  v6j3bxo2dz4aevlmr: Container(
                    height: 38,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: _c3dgbtkv29uy93wbnuz69ml6 == ojqjx0ndycfvsk9gn
                          ? null
                          : _ucfx3gbidahj9qb27gv795,
                      gradient: _c3dgbtkv29uy93wbnuz69ml6 == ojqjx0ndycfvsk9gn
                          ? const LinearGradient(
                              colors: [Color(0xFF60D0EE), Color(0xFFD43161)],
                            )
                          : null,
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9),
                        child: Text(
                          _xt0i2uv0qexs2[ojqjx0ndycfvsk9gn],
                          maxLines: 1,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            height: 1.1,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ],
        );
      },
    );
  }

  Widget _aj9x06b4tq1bo() {
    final gozafqzot5tzjhozo5z = _nbub2jcpb2weejwuu;
    return Align(
      alignment: Alignment.centerLeft,
      child: CokiSwimmingKtoozpjuob7rods(
        kvg85l6uieobzf: BorderRadius.circular(20),
        gwrsyzojtp84oco1ldhaaw90: () => unawaited(_n0t7llxd959xaffhkgy6ab()),
        v6j3bxo2dz4aevlmr: Container(
          width: 108,
          height: 108,
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: _w8xlxzr9a76gcwf1
              ? const CupertinoActivityIndicator(color: Color(0xFF5BCBEA))
              : gozafqzot5tzjhozo5z == null
              ? Image.asset(
                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_h6izuj44dfg1gwrgo9kp.png',
                  width: 24,
                  height: 23,
                )
              : Image.file(
                  File(gozafqzot5tzjhozo5z),
                  width: 108,
                  height: 108,
                  fit: BoxFit.cover,
                  errorBuilder:
                      (
                        btxxhaz72g63hacv5,
                        dze542e56v0azdo4n6b,
                        e3gw6lomxlq49,
                      ) => Image.asset(
                        'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_h6izuj44dfg1gwrgo9kp.png',
                        width: 24,
                        height: 23,
                      ),
                ),
        ),
      ),
    );
  }

  static const TextStyle _xafxbm4w730bb = TextStyle(
    color: Colors.white,
    fontSize: 20,
    height: 1.3,
    letterSpacing: 0,
    fontWeight: FontWeight.w900,
  );
}
