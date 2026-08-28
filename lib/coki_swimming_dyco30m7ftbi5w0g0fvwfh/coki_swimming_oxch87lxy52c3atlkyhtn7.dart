part of '../main.dart';

class CokiSwimmingPip1wwzd46n0h0rlpl0lc extends StatefulWidget {
  const CokiSwimmingPip1wwzd46n0h0rlpl0lc({
    super.key,
    required this.unjth9l1c6aok3go,
    this.eg3fglh0fwuz5vgvo,
    this.d2762b49bbdd1433af = false,
    this.cokiSwimmingeeb020dae4f8f7c55d,
    this.cokiSwimming3eb97b3e29b6180513 = false,
    this.cokiSwimmingf15930c9a2c2447aa4,
  });

  final bool unjth9l1c6aok3go;
  final CokiSwimmingOla0gu1u5h0t2dqk0sy77kg? eg3fglh0fwuz5vgvo;
  final bool d2762b49bbdd1433af;
  final Future<void> Function()? cokiSwimmingeeb020dae4f8f7c55d;
  final bool cokiSwimming3eb97b3e29b6180513;
  final Future<bool> Function()? cokiSwimmingf15930c9a2c2447aa4;

  @override
  State<CokiSwimmingPip1wwzd46n0h0rlpl0lc> createState() =>
      _CokiSwimmingM4q8x2n7v1z6p9r3t5();
}

class _CokiSwimmingM4q8x2n7v1z6p9r3t5
    extends State<CokiSwimmingPip1wwzd46n0h0rlpl0lc> {
  static const Color _cokiSwimmingB7m2q9x4v8z1n6p3r5 = Color(0xFF5BCBEA);
  static const Color _cokiSwimmingC9x3n7v1m6q8z2p4r5 = Color(0xFFD72F63);
  static const Color _cokiSwimmingD4q8m1z6v3n9x2p7r5 = Color(0xFF3A3558);
  final TextEditingController _cokiSwimmingQ7n3v9m1x6p8z4r2t5 =
      TextEditingController();
  late final List<String> _cokiSwimmingR2x8m5q1v7z3n9p6t4;
  late final int _cokiSwimming3fba51f6bf0fd56b52;
  int _cokiSwimmingS9m4q1x7v3n8z2p6r5 = 0;
  late bool _cokiSwimmingT5v1n8q3m7x9z2p4r6 =
      widget.cokiSwimming3eb97b3e29b6180513;
  bool _cokiSwimming1c74ccf61eb5a9faf4 = false;

  CokiSwimmingOla0gu1u5h0t2dqk0sy77kg get _cokiSwimmingU8q2m6x9v1z4n7p3r5 =>
      widget.eg3fglh0fwuz5vgvo ?? cokiSwimmingno1co2tb6p01cbgq6w3sj9k.first;

  @override
  void initState() {
    super.initState();
    _cokiSwimmingR2x8m5q1v7z3n9p6t4 = List<String>.from(
      _cokiSwimmingU8q2m6x9v1z4n7p3r5.m7c2v9x4q8s1d6p3,
    );
    _cokiSwimming3fba51f6bf0fd56b52 = _cokiSwimmingR2x8m5q1v7z3n9p6t4.length;
    _cokiSwimming1ec467e66c2e44a5();
  }

  Future<void> _cokiSwimming1ec467e66c2e44a5() async {
    final cokiSwimming402508c58e668df0 =
        _cokiSwimmingU8q2m6x9v1z4n7p3r5.pgj8geudv74awjznrves.first;
    var cokiSwimming9aaae8e66a1dfd9f = await CokiSwimmingDatabase
        .hxjpjp7w6ojq86l4ddyhf
        .cokiSwimming08fc79df5890845d(
          cokiSwimmingFfdff4098f67dc2a39b: 0,
          cokiSwimming9ca085a1e9464611db57745: _CokiSwimming550799c166502c1a08a0
              ._cokiSwimming8e1b8e862b98ec4505c9a80,
          cokiSwimming756b8fe9fc667a: cokiSwimming402508c58e668df0,
        );
    if (cokiSwimming9aaae8e66a1dfd9f == null) {
      cokiSwimming9aaae8e66a1dfd9f = jsonEncode(
        _cokiSwimmingR2x8m5q1v7z3n9p6t4,
      );
      await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
          .cokiSwimming74e8b2f70fa2f5b(
            cokiSwimming0a44fb28163763bb6ec69: 0,
            cokiSwimming47e760ec313f586105: _CokiSwimming550799c166502c1a08a0
                ._cokiSwimming8e1b8e862b98ec4505c9a80,
            cokiSwimmingDb6b0273792c060: cokiSwimming402508c58e668df0,
            cokiSwimmingC91a15fc4d8a49ccb: cokiSwimming9aaae8e66a1dfd9f,
          );
    }
    final cokiSwimmingC7d57b276900bc5a = jsonDecode(
      cokiSwimming9aaae8e66a1dfd9f,
    );
    if (!mounted || cokiSwimmingC7d57b276900bc5a is! List) return;
    setState(() {
      _cokiSwimmingR2x8m5q1v7z3n9p6t4
        ..clear()
        ..addAll(
          cokiSwimmingC7d57b276900bc5a.map(
            (cokiSwimming89543c0b1a9e7ef0) =>
                cokiSwimming89543c0b1a9e7ef0.toString(),
          ),
        );
    });
  }

  @override
  void didUpdateWidget(CokiSwimmingPip1wwzd46n0h0rlpl0lc oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.cokiSwimming3eb97b3e29b6180513 !=
        widget.cokiSwimming3eb97b3e29b6180513) {
      _cokiSwimmingT5v1n8q3m7x9z2p4r6 = widget.cokiSwimming3eb97b3e29b6180513;
    }
  }

  @override
  void dispose() {
    _cokiSwimmingQ7n3v9m1x6p8z4r2t5.dispose();
    super.dispose();
  }

  void _cokiSwimmingV3p7z1m9q4x8n2r6t5() {
    CokiSwimmingY5kxebxyhv8gg32yly.kco1p8qja05cbsuhzrwcvesj(
      context,
      h5j30v6kt4ykg21tutwflx: widget.unjth9l1c6aok3go,
      ssqbxn8vpgdaf9emp9937fjk: () async {
        if (_cokiSwimming1c74ccf61eb5a9faf4) return;
        _cokiSwimming1c74ccf61eb5a9faf4 = true;
        try {
          final cokiSwimmingb2f8bce09a4c07bae6 =
              widget.cokiSwimmingf15930c9a2c2447aa4 == null
              ? !_cokiSwimmingT5v1n8q3m7x9z2p4r6
              : await widget.cokiSwimmingf15930c9a2c2447aa4!();
          if (!mounted) return;
          setState(
            () => _cokiSwimmingT5v1n8q3m7x9z2p4r6 =
                cokiSwimmingb2f8bce09a4c07bae6,
          );
        } catch (_) {
          if (!mounted) return;
          CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
            context,
            'Unable to update',
            isError: true,
          );
        } finally {
          _cokiSwimming1c74ccf61eb5a9faf4 = false;
        }
      },
    );
  }

  void _cokiSwimmingX6m2q9v4n8z1p7r3t5() {
    final value = _cokiSwimmingQ7n3v9m1x6p8z4r2t5.text.trim();
    if (value.isEmpty) return;
    CokiSwimmingY5kxebxyhv8gg32yly.kco1p8qja05cbsuhzrwcvesj(
      context,
      h5j30v6kt4ykg21tutwflx: widget.unjth9l1c6aok3go,
      ssqbxn8vpgdaf9emp9937fjk: () async {
        final cokiSwimmingBf5daebeb41193b2 = [
          ..._cokiSwimmingR2x8m5q1v7z3n9p6t4,
          value,
        ];
        await Future<void>.delayed(const Duration(milliseconds: 450));
        await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
            .cokiSwimming74e8b2f70fa2f5b(
              cokiSwimming0a44fb28163763bb6ec69: 0,
              cokiSwimming47e760ec313f586105: _CokiSwimming550799c166502c1a08a0
                  ._cokiSwimming8e1b8e862b98ec4505c9a80,
              cokiSwimmingDb6b0273792c060:
                  _cokiSwimmingU8q2m6x9v1z4n7p3r5.pgj8geudv74awjznrves.first,
              cokiSwimmingC91a15fc4d8a49ccb: jsonEncode(
                cokiSwimmingBf5daebeb41193b2,
              ),
            );
        if (!mounted) return;
        setState(() {
          _cokiSwimmingR2x8m5q1v7z3n9p6t4
            ..clear()
            ..addAll(cokiSwimmingBf5daebeb41193b2);
          _cokiSwimmingQ7n3v9m1x6p8z4r2t5.clear();
        });
        FocusManager.instance.primaryFocus?.unfocus();
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(context, 'Comment sent');
      },
    );
  }

  String _cokiSwimmingY1n7x4q9m2v8z5p3r6(int value) {
    if (value < 1000) return '$value';
    return '${(value / 1000).toStringAsFixed(value >= 10000 ? 0 : 1)}k';
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    final item = _cokiSwimmingU8q2m6x9v1z4n7p3r5;
    final media = item.pgj8geudv74awjznrves;
    final count =
        item.q7m4v9x2k8d6p1s5 + (_cokiSwimmingT5v1n8q3m7x9z2p4r6 ? 1 : 0);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          CokiSwimmingAba7n9vsqt6w3fz(
            cokiSwimmingudas2o8q00gicj383hxod: CustomScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              slivers: [
                SliverToBoxAdapter(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(22),
                      ),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          PageView.builder(
                            itemCount: media.length,
                            onPageChanged: (value) => setState(
                              () => _cokiSwimmingS9m4q1x7v3n8z2p6r5 = value,
                            ),
                            itemBuilder: (context, index) =>
                                CokiSwimmingC42e81133062ccfd(
                                  cokiSwimmingEbf673309ff7e1c4: media[index],
                                ),
                          ),
                          if (media.length > 1)
                            Positioned(
                              left: 0,
                              right: 0,
                              bottom: 18,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  media.length,
                                  (index) => AnimatedContainer(
                                    duration: const Duration(milliseconds: 180),
                                    width:
                                        index == _cokiSwimmingS9m4q1x7v3n8z2p6r5
                                        ? 32
                                        : 13,
                                    height: 6,
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 3,
                                    ),
                                    decoration: BoxDecoration(
                                      color:
                                          index ==
                                              _cokiSwimmingS9m4q1x7v3n8z2p6r5
                                          ? colors.onPrimary
                                          : colors.onPrimary.withValues(
                                              alpha: 0.42,
                                            ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(20, 24, 20, 122),
                  sliver: SliverList.list(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 62,
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(1.5),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      colors: [
                                        _cokiSwimmingB7m2q9x4v8z1n6p3r5,
                                        _cokiSwimmingC9x3n7v1m6q8z2p4r5,
                                      ],
                                    ),
                                  ),
                                  child: CokiSwimmingBskfv8qke498jnw5a9nz(
                                    bvuh7vp0q7jr0o6:
                                        item.xkczithyrycvg26pfjjmm9,
                                    qqonq4itbdxn5jaq8l63c4: 46,
                                    mq2l8m5tl12kohgr7u: () =>
                                        Navigator.of(context).pushNamed(
                                          CokiSwimmingXu1hfvhsqfkovamr518kcwz
                                              .tigdkksey2ignkpcr57u,
                                          arguments: item,
                                        ),
                                  ),
                                ),
                                const SizedBox(height: 7),
                                Text(
                                  item.y2bm5rqs3zbbqyxivjft35,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: text.titleMedium?.copyWith(
                                    color: colors.onPrimary,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.jw6eiwt4zt0wuycr7q,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: text.titleMedium?.copyWith(
                                    color: colors.onPrimary,
                                    height: 1.35,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Wrap(
                                  spacing: 7,
                                  runSpacing: 7,
                                  children: List.generate(
                                    3,
                                    (_) => Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 7,
                                      ),
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          colors: [
                                            _cokiSwimmingB7m2q9x4v8z1n6p3r5,
                                            _cokiSwimmingC9x3n7v1m6q8z2p4r5,
                                          ],
                                        ),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      child: Text(
                                        '# Theme',
                                        style: text.labelLarge?.copyWith(
                                          color: colors.onPrimary,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            children: [
                              CokiSwimmingKtoozpjuob7rods(
                                kvg85l6uieobzf: BorderRadius.circular(24),
                                gwrsyzojtp84oco1ldhaaw90:
                                    _cokiSwimmingV3p7z1m9q4x8n2r6t5,
                                v6j3bxo2dz4aevlmr: Image.asset(
                                  _cokiSwimmingT5v1n8q3m7x9z2p4r6
                                      ? 'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_01741504cbcb6a850100.png'
                                      : 'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_7ca99e130a1bb3618c49.png',
                                  width: 48,
                                  height: 48,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                _cokiSwimmingY1n7x4q9m2v8z5p3r6(count),
                                style: text.titleMedium?.copyWith(
                                  color: colors.onPrimary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_a742cf09d531f8137c6b.png',
                            width: 114,
                            height: 31,
                          ),
                          const SizedBox(width: 5),
                          Image.asset(
                            'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_18254e147d8e908d2168.png',
                            width: 18,
                            height: 14,
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      if (_cokiSwimmingR2x8m5q1v7z3n9p6t4.isEmpty)
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 28),
                          alignment: Alignment.center,
                          child: Text(
                            'No comments yet',
                            style: text.bodyLarge?.copyWith(
                              color: colors.onPrimary.withValues(alpha: 0.6),
                            ),
                          ),
                        )
                      else
                        for (
                          var cokiSwimming2ae5ccf22557e79319 = 0;
                          cokiSwimming2ae5ccf22557e79319 <
                              _cokiSwimmingR2x8m5q1v7z3n9p6t4.length;
                          cokiSwimming2ae5ccf22557e79319++
                        ) ...[
                          _cokiSwimmingA6x2q8m4v9z1n7p3r5(
                            item,
                            _cokiSwimmingR2x8m5q1v7z3n9p6t4[cokiSwimming2ae5ccf22557e79319],
                            cokiSwimming2ae5ccf22557e79319 >=
                                _cokiSwimming3fba51f6bf0fd56b52,
                          ),
                          const SizedBox(height: 14),
                        ],
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            top: 0,
            child: SafeArea(
              bottom: false,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _cokiSwimmingZ4q8m1v6x2n9p7r3t5(
                    'Back',
                    'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_9242ab81de8bd9181100.png',
                    () => Navigator.of(context).maybePop(),
                  ),
                  if (!widget.d2762b49bbdd1433af)
                    _cokiSwimmingZ4q8m1v6x2n9p7r3t5(
                      'More',
                      'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_95592ade1da47b75dd0a.png',
                      () =>
                          CokiSwimmingEa33alie83a7ztht03ml6za.v8k18e1fwcihnfevusm4iq(
                            context,
                            cokiSwimming2017dfe9792f0833:
                                _cokiSwimmingU8q2m6x9v1z4n7p3r5
                                    .y2bm5rqs3zbbqyxivjft35,
                          ),
                    )
                  else if (widget.cokiSwimmingeeb020dae4f8f7c55d != null)
                    CokiSwimmingKtoozpjuob7rods(
                      kvg85l6uieobzf: BorderRadius.circular(24),
                      gwrsyzojtp84oco1ldhaaw90: () =>
                          CokiSwimmingTq92zenanm7d.cokiSwimming9e422d9ca2b283fe4a(
                            context,
                            () async {
                              await widget.cokiSwimmingeeb020dae4f8f7c55d!();
                              if (!context.mounted) return;
                              Navigator.of(context).maybePop();
                            },
                          ),
                      v6j3bxo2dz4aevlmr: const SizedBox(
                        width: 48,
                        height: 48,
                        child: Icon(
                          Icons.delete_outline_rounded,
                          color: Colors.white,
                          size: 26,
                        ),
                      ),
                    )
                  else
                    const SizedBox(width: 48, height: 48),
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 0,
            child: SafeArea(
              top: false,
              minimum: const EdgeInsets.only(bottom: 12),
              child: Container(
                height: 58,
                padding: const EdgeInsets.fromLTRB(18, 0, 8, 0),
                decoration: BoxDecoration(
                  color: colors.onPrimary,
                  borderRadius: BorderRadius.circular(29),
                  boxShadow: [
                    BoxShadow(
                      color: colors.shadow.withValues(alpha: 0.2),
                      blurRadius: 18,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _cokiSwimmingQ7n3v9m1x6p8z4r2t5,
                        textInputAction: TextInputAction.send,
                        onSubmitted: (_) => _cokiSwimmingX6m2q9v4n8z1p7r3t5(),
                        style: text.bodyLarge?.copyWith(
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Say something',
                          hintStyle: text.bodyLarge?.copyWith(
                            color: Theme.of(
                              context,
                            ).scaffoldBackgroundColor.withValues(alpha: 0.42),
                          ),
                          border: InputBorder.none,
                          isCollapsed: true,
                        ),
                      ),
                    ),
                    IconButton(
                      tooltip: 'Send',
                      onPressed: _cokiSwimmingX6m2q9v4n8z1p7r3t5,
                      icon: Image.asset(
                        'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_e312d45ac88a034422cd.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _cokiSwimmingZ4q8m1v6x2n9p7r3t5(
    String tooltip,
    String asset,
    VoidCallback onTap,
  ) {
    return Tooltip(
      message: tooltip,
      child: CokiSwimmingKtoozpjuob7rods(
        kvg85l6uieobzf: BorderRadius.circular(24),
        gwrsyzojtp84oco1ldhaaw90: onTap,
        v6j3bxo2dz4aevlmr: Image.asset(asset, width: 48, height: 48),
      ),
    );
  }

  Widget _cokiSwimmingA6x2q8m4v9z1n7p3r5(
    CokiSwimmingOla0gu1u5h0t2dqk0sy77kg item,
    String comment,
    bool cokiSwimming4f173a161144e9f1ed,
  ) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 14, 14, 16),
      decoration: BoxDecoration(
        color: _cokiSwimmingD4q8m1z6v3n9x2p7r5,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(1.5),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      _cokiSwimmingB7m2q9x4v8z1n6p3r5,
                      _cokiSwimmingC9x3n7v1m6q8z2p4r5,
                    ],
                  ),
                ),
                child: CokiSwimmingBskfv8qke498jnw5a9nz(
                  bvuh7vp0q7jr0o6: item.xkczithyrycvg26pfjjmm9,
                  qqonq4itbdxn5jaq8l63c4: 38,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  item.y2bm5rqs3zbbqyxivjft35,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: text.titleLarge?.copyWith(
                    color: colors.onPrimary,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              if (!cokiSwimming4f173a161144e9f1ed)
                Image.asset(
                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_e86fd5f6155d1572e94a.png',
                  width: 24,
                  height: 24,
                ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            comment,
            style: text.bodyLarge?.copyWith(
              color: colors.onPrimary,
              height: 1.35,
            ),
          ),
        ],
      ),
    );
  }
}
