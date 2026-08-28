part of '../main.dart';

class CokiSwimmingLei4ce4d64ic4llpobyo8 extends StatefulWidget {
  const CokiSwimmingLei4ce4d64ic4llpobyo8({
    super.key,
    required this.urppm1a0b7mgzwjl90at4,
  });

  final bool urppm1a0b7mgzwjl90at4;

  @override
  State<CokiSwimmingLei4ce4d64ic4llpobyo8> createState() =>
      _CokiSwimmingJprer454ti6ulh74dnznsb();
}

class CokiSwimmingV8n2q6m4x9p1z7c3r5t6 extends StatefulWidget {
  const CokiSwimmingV8n2q6m4x9p1z7c3r5t6({super.key});

  @override
  State<CokiSwimmingV8n2q6m4x9p1z7c3r5t6> createState() =>
      _CokiSwimmingL6x2p9v4n8q1z7m3r5t0();
}

class _CokiSwimmingL6x2p9v4n8q1z7m3r5t0
    extends State<CokiSwimmingV8n2q6m4x9p1z7c3r5t6> {
  static const _cokiSwimmingR9x4m2q7v1z8p5n6 =
      'coki_swimming_daily_swim_log_v1';
  final _cokiSwimmingJ7m3q8v1x6z9p4n5 = TextEditingController();
  Map<String, double> _cokiSwimmingT4n8p2x6m1q7z9v3 = {};
  bool _cokiSwimmingF5z1q8m3v6x2n9p7 = true;

  String _cokiSwimmingB6x2n9m4q7v1z8p3(DateTime value) =>
      '${value.year.toString().padLeft(4, '0')}-${value.month.toString().padLeft(2, '0')}-${value.day.toString().padLeft(2, '0')}';

  @override
  void initState() {
    super.initState();
    _cokiSwimmingD8q4v1m7x2n9p6z3();
  }

  Future<void> _cokiSwimmingD8q4v1m7x2n9p6z3() async {
    final value = await SharedPreferencesAsync().getString(
      _cokiSwimmingR9x4m2q7v1z8p5n6,
    );
    if (value != null) {
      final decoded = jsonDecode(value);
      if (decoded is Map) {
        _cokiSwimmingT4n8p2x6m1q7z9v3 = decoded.map(
          (key, item) => MapEntry(key.toString(), (item as num).toDouble()),
        );
      }
    }
    final today = _cokiSwimmingB6x2n9m4q7v1z8p3(DateTime.now());
    final hours = _cokiSwimmingT4n8p2x6m1q7z9v3[today];
    if (mounted) {
      setState(() {
        _cokiSwimmingF5z1q8m3v6x2n9p7 = false;
        if (hours != null) {
          _cokiSwimmingJ7m3q8v1x6z9p4n5.text = hours.toString();
        }
      });
    }
  }

  Future<void> _cokiSwimmingN2z7p4m9x1q6v8n3() async {
    final hours = double.tryParse(_cokiSwimmingJ7m3q8v1x6z9p4n5.text.trim());
    if (hours == null || hours <= 0 || hours > 24) {
      CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
        context,
        'Enter a number between 0 and 24 hours',
        isError: true,
      );
      return;
    }
    final today = _cokiSwimmingB6x2n9m4q7v1z8p3(DateTime.now());
    final next = {..._cokiSwimmingT4n8p2x6m1q7z9v3, today: hours};
    await SharedPreferencesAsync().setString(
      _cokiSwimmingR9x4m2q7v1z8p5n6,
      jsonEncode(next),
    );
    if (!mounted) return;
    setState(() => _cokiSwimmingT4n8p2x6m1q7z9v3 = next);
    FocusManager.instance.primaryFocus?.unfocus();
    CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
      context,
      'Today\'s swim record saved',
    );
  }

  int _cokiSwimmingK1v7x3n9q5m2z8p4() {
    var count = 0;
    var date = DateTime.now();
    while (_cokiSwimmingT4n8p2x6m1q7z9v3.containsKey(
      _cokiSwimmingB6x2n9m4q7v1z8p3(date),
    )) {
      count++;
      date = date.subtract(const Duration(days: 1));
    }
    return count;
  }

  @override
  void dispose() {
    _cokiSwimmingJ7m3q8v1x6z9p4n5.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final entries = _cokiSwimmingT4n8p2x6m1q7z9v3.entries.toList()
      ..sort((a, b) => b.key.compareTo(a.key));
    final total = _cokiSwimmingT4n8p2x6m1q7z9v3.values.fold<double>(
      0,
      (sum, value) => sum + value,
    );
    final average = entries.isEmpty ? 0 : total / entries.length;
    final today = _cokiSwimmingB6x2n9m4q7v1z8p3(DateTime.now());
    return Scaffold(
      backgroundColor: const Color(0xFF100A30),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          tooltip: 'Back',
          icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
          onPressed: () => Navigator.of(context).maybePop(),
        ),
        title: const Text(
          'Daily swim check-in',
          style: TextStyle(
            fontSize: 18,
            height: 1.2,
            letterSpacing: 0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: _cokiSwimmingF5z1q8m3v6x2n9p7
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 30),
              children: [
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: const Color(0xFF292249),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color(0xFF60D0EE).withValues(alpha: 0.6),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Today\'s swim',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        today,
                        style: const TextStyle(color: Color(0xFFB9B3CE)),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: _cokiSwimmingJ7m3q8v1x6z9p4n5,
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'Training time',
                          suffixText: 'hours',
                          labelStyle: const TextStyle(color: Color(0xFFB9B3CE)),
                          suffixStyle: const TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: const Color(0xFF100A30),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: double.infinity,
                        height: 46,
                        child: FilledButton(
                          onPressed: _cokiSwimmingN2z7p4m9x1q6v8n3,
                          style: FilledButton.styleFrom(
                            backgroundColor: const Color(0xFFD43161),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            _cokiSwimmingT4n8p2x6m1q7z9v3.containsKey(today)
                                ? 'Update today\'s record'
                                : 'Save today\'s record',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                Row(
                  children: [
                    _cokiSwimmingW3m8q1v6x4n9p2z7('Days', '${entries.length}'),
                    const SizedBox(width: 10),
                    _cokiSwimmingW3m8q1v6x4n9p2z7(
                      'Total hours',
                      total.toStringAsFixed(1),
                    ),
                    const SizedBox(width: 10),
                    _cokiSwimmingW3m8q1v6x4n9p2z7(
                      'Streak',
                      '${_cokiSwimmingK1v7x3n9q5m2z8p4()}',
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'Average ${average.toStringAsFixed(1)} hours per swim',
                  style: const TextStyle(color: Color(0xFFB9B3CE)),
                ),
                const SizedBox(height: 18),
                const Text(
                  'Recent check-ins',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 8),
                if (entries.isEmpty)
                  const Text(
                    'No check-ins yet',
                    style: TextStyle(color: Color(0xFFB9B3CE)),
                  )
                else
                  for (final entry in entries.take(30))
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const CircleAvatar(
                        backgroundColor: Color(0xFF60D0EE),
                        child: Icon(Icons.pool, color: Color(0xFF100A30)),
                      ),
                      title: Text(
                        entry.key,
                        style: const TextStyle(color: Colors.white),
                      ),
                      trailing: Text(
                        '${entry.value.toStringAsFixed(1)} h',
                        style: const TextStyle(
                          color: Color(0xFF60D0EE),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
              ],
            ),
    );
  }

  Widget _cokiSwimmingW3m8q1v6x4n9p2z7(String label, String value) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 8),
        decoration: BoxDecoration(
          color: const Color(0xFF292249),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Text(
              value,
              style: const TextStyle(
                color: Color(0xFF60D0EE),
                fontSize: 19,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Color(0xFFB9B3CE), fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}

class _CokiSwimmingJprer454ti6ulh74dnznsb
    extends State<CokiSwimmingLei4ce4d64ic4llpobyo8> {
  void _wbn3x4x9v4nwn9zv() {
    CokiSwimmingY5kxebxyhv8gg32yly.kco1p8qja05cbsuhzrwcvesj(
      context,
      h5j30v6kt4ykg21tutwflx: widget.urppm1a0b7mgzwjl90at4,
      ssqbxn8vpgdaf9emp9937fjk: () => Navigator.of(
        context,
      ).pushNamed(CokiSwimmingXu1hfvhsqfkovamr518kcwz.o62xsgzo1oya6s),
    );
  }

  @override
  Widget build(BuildContext context) {
    final xmuct5g7ulgenrxkuwn3j079 = cokiSwimmingno1co2tb6p01cbgq6w3sj9k;
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_4zq0gohl68shs7xjgh.png',
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
        SafeArea(
          bottom: false,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 307,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Positioned(
                        left: 20,
                        top: 3,
                        child: Text(
                          'Coki',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            height: 1.08,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 20,
                        top: 50,
                        child: Text(
                          'Swim with the current, embrace\nthe flow.',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            height: 1.35,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 20,
                        top: 13,
                        child: CokiSwimmingKtoozpjuob7rods(
                          kvg85l6uieobzf: BorderRadius.circular(24),
                          gwrsyzojtp84oco1ldhaaw90: () =>
                              CokiSwimmingY5kxebxyhv8gg32yly.kco1p8qja05cbsuhzrwcvesj(
                                context,
                                h5j30v6kt4ykg21tutwflx:
                                    widget.urppm1a0b7mgzwjl90at4,
                                ssqbxn8vpgdaf9emp9937fjk: () =>
                                    Navigator.of(context).pushNamed(
                                      CokiSwimmingXu1hfvhsqfkovamr518kcwz
                                          .tsux9v3xzdp79n2vwllqrjd9,
                                    ),
                              ),
                          v6j3bxo2dz4aevlmr: Image.asset(
                            'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_f1q49zts6gp606l82qfcf.png',
                            width: 44,
                            height: 44,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 22,
                        top: 101,
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage(
                                'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_q5w61qze4rfzcl2i.png',
                              ),
                              width: 26,
                              height: 26,
                            ),
                            SizedBox(height: 7),
                            RotatedBox(
                              quarterTurns: 1,
                              child: Row(
                                children: [
                                  Text(
                                    'Coki AI',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 33,
                                      height: 1,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Image(
                                    image: AssetImage(
                                      'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_9n0kiofpdcmc7.png',
                                    ),
                                    width: 36,
                                    height: 18,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 50,
                        top: 74,
                        child: Image.asset(
                          'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_n9bdkwecb8mb.png',
                          width: 179,
                          height: 211,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        left: 110,
                        right: 39,
                        top: 250,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
                            child: Container(
                              height: 46,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              alignment: Alignment.center,
                              color: const Color(
                                0xFFB5A4B9,
                              ).withValues(alpha: 0.34),
                              child: const Text(
                                'Chat with AI to unlock swimming tips,\ntechniques, and more.',
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  height: 1.22,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        right: 20,
                        top: 70,
                        bottom: 0,
                        child: Semantics(
                          button: true,
                          label: 'Open Coki AI chat',
                          child: GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: _wbn3x4x9v4nwn9zv,
                            child: const SizedBox.expand(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 14),
                  child: Row(
                    children: [
                      Expanded(
                        child: CokiSwimmingKtoozpjuob7rods(
                          kvg85l6uieobzf: BorderRadius.circular(16),
                          gwrsyzojtp84oco1ldhaaw90: () =>
                              Navigator.of(context).pushNamed(
                                CokiSwimmingXu1hfvhsqfkovamr518kcwz
                                    .q7m4v9x2k8d6p1s5,
                              ),
                          v6j3bxo2dz4aevlmr: Container(
                            height: 88,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: const Color(0xFF292249),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: const Color(
                                  0xFF60D0EE,
                                ).withValues(alpha: 0.55),
                              ),
                            ),
                            child: const Row(
                              children: [
                                CircleAvatar(
                                  radius: 19,
                                  backgroundColor: Color(0xFF60D0EE),
                                  child: Icon(
                                    Icons.pool_outlined,
                                    color: Color(0xFF100A30),
                                    size: 21,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Swim log',
                                      maxLines: 1,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        height: 1.2,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: Colors.white,
                                  size: 22,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: CokiSwimmingKtoozpjuob7rods(
                          kvg85l6uieobzf: BorderRadius.circular(16),
                          gwrsyzojtp84oco1ldhaaw90: () =>
                              Navigator.of(context).pushNamed(
                                CokiSwimmingXu1hfvhsqfkovamr518kcwz
                                    .m9x3q7v1z5n8p4c6t2r0,
                              ),
                          v6j3bxo2dz4aevlmr: Container(
                            height: 88,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: const Color(0xFF292249),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: const Color(
                                  0xFFD43161,
                                ).withValues(alpha: 0.65),
                              ),
                            ),
                            child: const Row(
                              children: [
                                CircleAvatar(
                                  radius: 19,
                                  backgroundColor: Color(0xFFD43161),
                                  child: Icon(
                                    Icons.event_note_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Training plan',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      height: 1.2,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: Colors.white,
                                  size: 22,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
                  child: SizedBox(
                    width: 125,
                    child: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (bounds) => const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFF60D0EE), Color(0xFFD43161)],
                      ).createShader(bounds),
                      child: const Text(
                        'Trending',
                        style: TextStyle(
                          fontSize: 22,
                          height: 1.2,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 18),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 14,
                    childAspectRatio: 0.78,
                  ),
                  delegate: SliverChildBuilderDelegate((
                    tx15gngz9iea1sag,
                    z0xc2bimbuuhsz7,
                  ) {
                    final mtasewipmxtnglc2v7oai =
                        xmuct5g7ulgenrxkuwn3j079[z0xc2bimbuuhsz7];
                    return CokiSwimmingSru7lz71ab36wcsa42(
                      xnb8xe3x8wn4:
                          mtasewipmxtnglc2v7oai.pgj8geudv74awjznrves.first,
                      plup1qrc6jph: mtasewipmxtnglc2v7oai,
                      lx0jremyz3ceqne: () =>
                          Navigator.of(tx15gngz9iea1sag).pushNamed(
                            CokiSwimmingXu1hfvhsqfkovamr518kcwz
                                .usb6yvjb2e1k454zejxbs,
                            arguments: mtasewipmxtnglc2v7oai,
                          ),
                      jx9f78u6cfcn5b36k: () =>
                          CokiSwimmingY5kxebxyhv8gg32yly.kco1p8qja05cbsuhzrwcvesj(
                            tx15gngz9iea1sag,
                            h5j30v6kt4ykg21tutwflx:
                                widget.urppm1a0b7mgzwjl90at4,
                            ssqbxn8vpgdaf9emp9937fjk: () =>
                                CokiSwimmingEa33alie83a7ztht03ml6za.v8k18e1fwcihnfevusm4iq(
                                  tx15gngz9iea1sag,
                                ),
                          ),
                    );
                  }, childCount: xmuct5g7ulgenrxkuwn3j079.length),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CokiSwimmingPw5bv6hywjzbgs8tmu extends StatelessWidget {
  const CokiSwimmingPw5bv6hywjzbgs8tmu({
    super.key,
    required this.ck70e9ow9s3zxkp3bgi69id,
    required this.u6gl4aaf9lrrbm,
    required this.wi67icsbrjkrud3tjog1r0nv,
  });

  final String ck70e9ow9s3zxkp3bgi69id;
  final bool u6gl4aaf9lrrbm;
  final VoidCallback wi67icsbrjkrud3tjog1r0nv;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingKtoozpjuob7rods(
      kvg85l6uieobzf: BorderRadius.circular(21),
      gwrsyzojtp84oco1ldhaaw90: wi67icsbrjkrud3tjog1r0nv,
      v6j3bxo2dz4aevlmr: AnimatedContainer(
        duration: const Duration(milliseconds: 160),
        width: ck70e9ow9s3zxkp3bgi69id == 'Visual Arts' ? 100 : 88,
        height: 41,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: u6gl4aaf9lrrbm
              ? const Color(0xFF100A30)
              : const Color(0xFFB8B8B8),
          borderRadius: BorderRadius.circular(21),
        ),
        child: Text(
          ck70e9ow9s3zxkp3bgi69id,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            height: 1.2,
            letterSpacing: 0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class CokiSwimmingSru7lz71ab36wcsa42 extends StatelessWidget {
  const CokiSwimmingSru7lz71ab36wcsa42({
    super.key,
    required this.xnb8xe3x8wn4,
    required this.lx0jremyz3ceqne,
    required this.jx9f78u6cfcn5b36k,
    this.plup1qrc6jph,
  });

  final String xnb8xe3x8wn4;
  final VoidCallback lx0jremyz3ceqne;
  final VoidCallback jx9f78u6cfcn5b36k;
  final CokiSwimmingOla0gu1u5h0t2dqk0sy77kg? plup1qrc6jph;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF5DD2F0), Color(0xFFE32F69)],
        ),
        borderRadius: BorderRadius.circular(19),
      ),
      child: CokiSwimmingKtoozpjuob7rods(
        kvg85l6uieobzf: BorderRadius.circular(17),
        gwrsyzojtp84oco1ldhaaw90: lx0jremyz3ceqne,
        v6j3bxo2dz4aevlmr: ClipRRect(
          borderRadius: BorderRadius.circular(17),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(xnb8xe3x8wn4, fit: BoxFit.cover),
              const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x66000000),
                      Colors.transparent,
                      Color(0x99000000),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 6,
                top: 7,
                child: CokiSwimmingKtoozpjuob7rods(
                  kvg85l6uieobzf: BorderRadius.circular(22),
                  gwrsyzojtp84oco1ldhaaw90: jx9f78u6cfcn5b36k,
                  v6j3bxo2dz4aevlmr: SizedBox(
                    width: 44,
                    height: 44,
                    child: Center(
                      child: Image.asset(
                        'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_ks8x74tiutl4j7uolk8f.png',
                        width: 22,
                        height: 22,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                height: 55,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 9),
                      color: const Color(0xFF756E73).withValues(alpha: 0.52),
                      child: Row(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              plup1qrc6jph?.xkczithyrycvg26pfjjmm9 ??
                                  xnb8xe3x8wn4,
                              width: 42,
                              height: 42,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 9),
                          Expanded(
                            child: Text(
                              plup1qrc6jph?.s35sepsxcpz4hg ?? 'Video',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                height: 1.25,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
