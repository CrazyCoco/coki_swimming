part of '../main.dart';

class CokiSwimmingNq0bdvs9uqdiayj9158w extends StatefulWidget {
  const CokiSwimmingNq0bdvs9uqdiayj9158w({super.key});

  @override
  State<CokiSwimmingNq0bdvs9uqdiayj9158w> createState() =>
      _CokiSwimmingRlviyh99dh4az0dmn52d5www();
}

class _CokiSwimmingRlviyh99dh4az0dmn52d5www
    extends State<CokiSwimmingNq0bdvs9uqdiayj9158w> {
  static const Color _jnlm2sle63me1d8zxiad7cs = Color(0xFF100A30);
  static const Color _ezgv195xyhgew = Color(0xFFF1F2F4);
  static const Color _urpbrps7k1hnd5cm = Color(0xFF5BCBEA);
  static const Color _nlagquou59mw1wtc = Color(0xFFD72F63);

  final TextEditingController _w44lr0x0kd6pemmvistd = TextEditingController();
  final ScrollController _z4b0z1mr6soc8zkyijj = ScrollController();
  final List<String> _wbrx0jgemuxppfzmdc4 = [];

  @override
  void dispose() {
    _w44lr0x0kd6pemmvistd.dispose();
    _z4b0z1mr6soc8zkyijj.dispose();
    super.dispose();
  }

  void _t2eocks1qg67mpfd41fs0ul() {
    final qmtl063oafbxby2mrydobe = _w44lr0x0kd6pemmvistd.text.trim();
    if (qmtl063oafbxby2mrydobe.isEmpty) return;

    setState(() {
      _wbrx0jgemuxppfzmdc4.add(qmtl063oafbxby2mrydobe);
      _w44lr0x0kd6pemmvistd.clear();
    });
    FocusScope.of(context).unfocus();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _uhfcy85fcxxfg3ais5641(),
    );
  }

  void _uhfcy85fcxxfg3ais5641() {
    if (!_z4b0z1mr6soc8zkyijj.hasClients) return;
    _z4b0z1mr6soc8zkyijj.animateTo(
      _z4b0z1mr6soc8zkyijj.position.maxScrollExtent,
      duration: const Duration(milliseconds: 260),
      curve: Curves.easeOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _jnlm2sle63me1d8zxiad7cs,
      resizeToAvoidBottomInset: true,
      body: CokiSwimmingAgdqi717f62hphbv7l95r8v(
        o1wq5mwul0ckiwligeu: SafeArea(
          bottom: false,
          child: Column(
            children: [
              _smpn8nukzrt2(context),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: _ezgv195xyhgew,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(child: _nbalmd7taj9360azzz()),
                      _g0makpe0wrl4c1o(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _smpn8nukzrt2(BuildContext wilsyk8xcdbu1z) {
    return SizedBox(
      height: 68,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          children: [
            CokiSwimmingCsp12jwqwwjk3wya4y1(
              detib9wx0a7eitw2731u4e: () => Navigator.of(wilsyk8xcdbu1z).pop(),
            ),
            const SizedBox(width: 7),
            _rthhm2s3frrvoc8(
              'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_eysguczvzn1u9c.png',
              g3n76xdz7lkfqa: 40,
              i8r1randmsblwdymyzr: Colors.white,
              v6lz1z2tt6vy07500z932cs: 1.5,
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Text(
                'Apien',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  height: 1.1,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            _vp42vz6e9ab37gatesj(
              edzv3l0ltjdopf9ob: 'Photo',
              f5b14gtkuqjlfozyt:
                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_i4l40gq05g8x.png',
              vppa3idrvfph6p3g49u: 32,
              c7slhftcvtpl3nay: () =>
                  CokiSwimmingRtwym9wmdetuorto7.uxp9wn4bxdjeda(wilsyk8xcdbu1z),
            ),
            _vp42vz6e9ab37gatesj(
              edzv3l0ltjdopf9ob: 'Video call',
              f5b14gtkuqjlfozyt:
                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_lbrxbt89w0nhi1d8bqlqtazx.png',
              vppa3idrvfph6p3g49u: 32,
              c7slhftcvtpl3nay: () => Navigator.of(
                wilsyk8xcdbu1z,
              ).pushNamed(CokiSwimmingXu1hfvhsqfkovamr518kcwz.u44r7kig5pilpfg),
            ),
            _vp42vz6e9ab37gatesj(
              edzv3l0ltjdopf9ob: 'More',
              f5b14gtkuqjlfozyt:
                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_wf9kctuvxtzds.png',
              vppa3idrvfph6p3g49u: 40,
              c7slhftcvtpl3nay: () =>
                  CokiSwimmingEa33alie83a7ztht03ml6za.v8k18e1fwcihnfevusm4iq(
                    wilsyk8xcdbu1z,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _vp42vz6e9ab37gatesj({
    required String edzv3l0ltjdopf9ob,
    required String f5b14gtkuqjlfozyt,
    required double vppa3idrvfph6p3g49u,
    required VoidCallback c7slhftcvtpl3nay,
  }) {
    return Tooltip(
      message: edzv3l0ltjdopf9ob,
      child: CokiSwimmingKtoozpjuob7rods(
        kvg85l6uieobzf: BorderRadius.circular(22),
        gwrsyzojtp84oco1ldhaaw90: c7slhftcvtpl3nay,
        v6j3bxo2dz4aevlmr: SizedBox(
          width: 44,
          height: 44,
          child: Center(
            child: Image.asset(
              f5b14gtkuqjlfozyt,
              width: vppa3idrvfph6p3g49u,
              height: vppa3idrvfph6p3g49u,
            ),
          ),
        ),
      ),
    );
  }

  Widget _nbalmd7taj9360azzz() {
    return ListView(
      controller: _z4b0z1mr6soc8zkyijj,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
      children: [
        _nggkzh74hvembdo98sla(),
        const SizedBox(height: 12),
        _j2dd1nsgj651j5huez9kje(
          'OK, if you have anything you\nwant to know, you can ask me',
          caemx73e871dvx3bp: true,
        ),
        const SizedBox(height: 7),
        _hcmtmggl64k1l2p1err5f9gh(),
        for (final q9xuew2lofmmx in _wbrx0jgemuxppfzmdc4) ...[
          const SizedBox(height: 16),
          _j2dd1nsgj651j5huez9kje(q9xuew2lofmmx),
        ],
      ],
    );
  }

  Widget _nggkzh74hvembdo98sla() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _rthhm2s3frrvoc8(
          'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_eysguczvzn1u9c.png',
          g3n76xdz7lkfqa: 44,
          i8r1randmsblwdymyzr: _urpbrps7k1hnd5cm,
          v6lz1z2tt6vy07500z932cs: 1,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 184),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 11),
              decoration: BoxDecoration(
                color: _urpbrps7k1hnd5cm,
                borderRadius: BorderRadius.circular(9),
              ),
              child: const Text(
                'Hello, I am interested in\nyour stuff.',
                style: TextStyle(
                  color: _jnlm2sle63me1d8zxiad7cs,
                  fontSize: 15,
                  height: 1.33,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text('12:00', style: _xk3ml8ciezt4zs6u9h),
          ],
        ),
      ],
    );
  }

  Widget _j2dd1nsgj651j5huez9kje(
    String n8x4qjo37evo2v84bki7j, {
    bool caemx73e871dvx3bp = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 226),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 11),
              decoration: BoxDecoration(
                color: _nlagquou59mw1wtc,
                borderRadius: BorderRadius.circular(9),
              ),
              child: Text(
                n8x4qjo37evo2v84bki7j,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  height: 1.33,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text('12:00', style: _xk3ml8ciezt4zs6u9h),
          ],
        ),
        if (caemx73e871dvx3bp) ...[
          const SizedBox(width: 10),
          _rthhm2s3frrvoc8(
            'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_75utjvdb8y9wzfn5shrb55st.png',
            g3n76xdz7lkfqa: 44,
            i8r1randmsblwdymyzr: _nlagquou59mw1wtc,
            v6lz1z2tt6vy07500z932cs: 1,
          ),
        ],
      ],
    );
  }

  Widget _hcmtmggl64k1l2p1err5f9gh() {
    return Padding(
      padding: const EdgeInsets.only(right: 54),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_jc48t9sqir04g42.png',
                width: 154,
                height: 154,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            const Text('12:00', style: _xk3ml8ciezt4zs6u9h),
          ],
        ),
      ),
    );
  }

  Widget _g0makpe0wrl4c1o(BuildContext nevhjja5jen9xn3o94) {
    final zgrui5a75ogysdjo =
        MediaQuery.viewInsetsOf(nevhjja5jen9xn3o94).bottom > 0;
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 8, 20, zgrui5a75ogysdjo ? 10 : 22),
      child: Container(
        height: 55,
        padding: const EdgeInsets.only(left: 16, right: 8),
        decoration: BoxDecoration(
          color: _urpbrps7k1hnd5cm,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _w44lr0x0kd6pemmvistd,
                textInputAction: TextInputAction.send,
                onSubmitted: (_) => _t2eocks1qg67mpfd41fs0ul(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
                decoration: const InputDecoration(
                  hintText: 'Say something',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.2,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 18),
                ),
              ),
            ),
            Tooltip(
              message: 'Send',
              child: IconButton(
                onPressed: _t2eocks1qg67mpfd41fs0ul,
                icon: const Icon(CupertinoIcons.paperplane_fill),
                color: Colors.white,
                iconSize: 24,
                splashRadius: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _rthhm2s3frrvoc8(
    String otlqziynr96u5i, {
    required double g3n76xdz7lkfqa,
    required Color i8r1randmsblwdymyzr,
    required double v6lz1z2tt6vy07500z932cs,
  }) {
    return Container(
      width: g3n76xdz7lkfqa,
      height: g3n76xdz7lkfqa,
      padding: EdgeInsets.all(v6lz1z2tt6vy07500z932cs),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: i8r1randmsblwdymyzr,
      ),
      child: ClipOval(child: Image.asset(otlqziynr96u5i, fit: BoxFit.cover)),
    );
  }

  static const TextStyle _xk3ml8ciezt4zs6u9h = TextStyle(
    color: Color(0xFFA6A6A6),
    fontSize: 14,
    height: 1.2,
    letterSpacing: 0,
    fontWeight: FontWeight.w400,
  );
}
