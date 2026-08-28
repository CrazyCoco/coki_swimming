part of '../main.dart';

class CokiSwimmingVkbdq84q1nw5h9ipn extends StatefulWidget {
  const CokiSwimmingVkbdq84q1nw5h9ipn({
    super.key,
    required this.lgeh2fxgazcq75g,
    this.t9ot4n3kehz3ma1zgubuqq,
    this.ba6d1ef28c2a9db022 = false,
    this.cokiSwimminga508081db3a0820fb5,
    this.cokiSwimming046421ace0330b5090 = false,
    this.cokiSwimming96ae818a94ba028b98,
  });

  final bool lgeh2fxgazcq75g;
  final CokiSwimmingOla0gu1u5h0t2dqk0sy77kg? t9ot4n3kehz3ma1zgubuqq;
  final bool ba6d1ef28c2a9db022;
  final Future<void> Function()? cokiSwimminga508081db3a0820fb5;
  final bool cokiSwimming046421ace0330b5090;
  final Future<bool> Function()? cokiSwimming96ae818a94ba028b98;

  @override
  State<CokiSwimmingVkbdq84q1nw5h9ipn> createState() =>
      _CokiSwimmingPsg55kmkoz6nnzx7x();
}

class _CokiSwimmingPsg55kmkoz6nnzx7x
    extends State<CokiSwimmingVkbdq84q1nw5h9ipn>
    with WidgetsBindingObserver, RouteAware {
  late bool _td3na2tzlsl6rbbj7x3ttp5 = widget.cokiSwimming046421ace0330b5090;
  bool _cokiSwimming47ee15967f7744e4c4 = false;
  VideoPlayerController? _iobtwblqi7i0pbv5jjfpdk;
  bool _m3xq5h7k9v2b8c4n = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    final f5qnrm05mpd4l1 = widget.t9ot4n3kehz3ma1zgubuqq?.dpz5ewc9dhgqc;
    if (f5qnrm05mpd4l1 == null) return;
    final mb62ubcim9ltd40 = File(f5qnrm05mpd4l1).isAbsolute
        ? VideoPlayerController.file(File(f5qnrm05mpd4l1))
        : VideoPlayerController.asset(f5qnrm05mpd4l1);
    _iobtwblqi7i0pbv5jjfpdk = mb62ubcim9ltd40;
    mb62ubcim9ltd40.initialize().then((_) async {
      await mb62ubcim9ltd40.setLooping(true);
      await mb62ubcim9ltd40.play();
      if (mounted) setState(() {});
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_m3xq5h7k9v2b8c4n) return;
    final d8q4m2x7v9c5 = ModalRoute.of(context);
    if (d8q4m2x7v9c5 != null) {
      cokiSwimmingRouteObserver.subscribe(this, d8q4m2x7v9c5);
      _m3xq5h7k9v2b8c4n = true;
    }
  }

  @override
  void didUpdateWidget(CokiSwimmingVkbdq84q1nw5h9ipn oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.cokiSwimming046421ace0330b5090 !=
        widget.cokiSwimming046421ace0330b5090) {
      _td3na2tzlsl6rbbj7x3ttp5 = widget.cokiSwimming046421ace0330b5090;
    }
  }

  @override
  void didPushNext() {
    _iobtwblqi7i0pbv5jjfpdk?.pause();
  }

  @override
  void didPopNext() {
    _iobtwblqi7i0pbv5jjfpdk?.play();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.inactive ||
        state == AppLifecycleState.paused ||
        state == AppLifecycleState.detached) {
      _iobtwblqi7i0pbv5jjfpdk?.pause();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    if (_m3xq5h7k9v2b8c4n) {
      cokiSwimmingRouteObserver.unsubscribe(this);
    }
    _iobtwblqi7i0pbv5jjfpdk?.dispose();
    super.dispose();
  }

  void _on5l9b3euazad1y() {
    CokiSwimmingY5kxebxyhv8gg32yly.kco1p8qja05cbsuhzrwcvesj(
      context,
      h5j30v6kt4ykg21tutwflx: widget.lgeh2fxgazcq75g,
      ssqbxn8vpgdaf9emp9937fjk: () async {
        if (_cokiSwimming47ee15967f7744e4c4) return;
        _cokiSwimming47ee15967f7744e4c4 = true;
        try {
          final cokiSwimmingfdc0175a8f1ba765c6 =
              widget.cokiSwimming96ae818a94ba028b98 == null
              ? !_td3na2tzlsl6rbbj7x3ttp5
              : await widget.cokiSwimming96ae818a94ba028b98!();
          if (!mounted) return;
          setState(
            () => _td3na2tzlsl6rbbj7x3ttp5 = cokiSwimmingfdc0175a8f1ba765c6,
          );
        } catch (_) {
          if (!mounted) return;
          CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
            context,
            'Unable to update',
            isError: true,
          );
        } finally {
          _cokiSwimming47ee15967f7744e4c4 = false;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final btnvt2w2z3enc = widget.t9ot4n3kehz3ma1zgubuqq;
    final o03495s9bin75b0yo3dhkj3s = _iobtwblqi7i0pbv5jjfpdk;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          fit: StackFit.expand,
          children: [
            LayoutBuilder(
              builder: (iff2xuif3sai8k89, _) {
                return SizedBox.expand(
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      if (btnvt2w2z3enc == null)
                        Image.asset(
                          'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_tdthku8h58a7lza73b7.png',
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                        )
                      else ...[
                        if (o03495s9bin75b0yo3dhkj3s?.value.isInitialized ==
                            true)
                          FittedBox(
                            fit: BoxFit.cover,
                            clipBehavior: Clip.hardEdge,
                            child: SizedBox(
                              width: o03495s9bin75b0yo3dhkj3s!.value.size.width,
                              height:
                                  o03495s9bin75b0yo3dhkj3s.value.size.height,
                              child: VideoPlayer(o03495s9bin75b0yo3dhkj3s),
                            ),
                          )
                        else
                          CokiSwimmingC42e81133062ccfd(
                            cokiSwimmingEbf673309ff7e1c4:
                                btnvt2w2z3enc.xpgbqaoc87cxdg7jjztf!,
                          ),
                        const DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0x66000000),
                                Colors.transparent,
                                Color(0xB3000000),
                              ],
                              stops: [0, 0.55, 1],
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Semantics(
                            button: true,
                            label: 'Play or pause video',
                            child: GestureDetector(
                              behavior: HitTestBehavior.opaque,
                              onTap: () {
                                final controller = _iobtwblqi7i0pbv5jjfpdk;
                                if (controller == null ||
                                    !controller.value.isInitialized) {
                                  return;
                                }
                                setState(() {
                                  controller.value.isPlaying
                                      ? controller.pause()
                                      : controller.play();
                                });
                              },
                              child: const SizedBox.expand(),
                            ),
                          ),
                        ),
                      ],
                      Positioned(
                        left: 18,
                        top: 54,
                        child: _CokiSwimmingGwxyf5trvk8o521(
                          jw18949aiqlvka8: 'Back',
                          ve49llgfd852c4y7g6v: 40,
                          v541ui5iv8wpifacsk: () =>
                              Navigator.of(iff2xuif3sai8k89).maybePop(),
                        ),
                      ),
                      if (widget.ba6d1ef28c2a9db022 &&
                          widget.cokiSwimminga508081db3a0820fb5 != null)
                        Positioned(
                          right: 18,
                          top: 54,
                          child: Semantics(
                            button: true,
                            label: 'Delete',
                            child: CokiSwimmingKtoozpjuob7rods(
                              kvg85l6uieobzf: BorderRadius.circular(22),
                              gwrsyzojtp84oco1ldhaaw90: () =>
                                  CokiSwimmingTq92zenanm7d.cokiSwimming9e422d9ca2b283fe4a(
                                    iff2xuif3sai8k89,
                                    () async {
                                      await widget
                                          .cokiSwimminga508081db3a0820fb5!();
                                      if (!iff2xuif3sai8k89.mounted) return;
                                      Navigator.of(iff2xuif3sai8k89).maybePop();
                                    },
                                  ),
                              v6j3bxo2dz4aevlmr: Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.84),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.delete_outline_rounded,
                                  color: Color(0xFF100A30),
                                  size: 25,
                                ),
                              ),
                            ),
                          ),
                        )
                      else if (!widget.ba6d1ef28c2a9db022)
                        Positioned(
                          right: 18,
                          top: 54,
                          child: _CokiSwimmingGwxyf5trvk8o521(
                            jw18949aiqlvka8: 'More',
                            ve49llgfd852c4y7g6v: 40,
                            v541ui5iv8wpifacsk: () =>
                                CokiSwimmingY5kxebxyhv8gg32yly.kco1p8qja05cbsuhzrwcvesj(
                                  iff2xuif3sai8k89,
                                  h5j30v6kt4ykg21tutwflx:
                                      widget.lgeh2fxgazcq75g,
                                  ssqbxn8vpgdaf9emp9937fjk: () =>
                                      CokiSwimmingEa33alie83a7ztht03ml6za.v8k18e1fwcihnfevusm4iq(
                                        iff2xuif3sai8k89,
                                        cokiSwimming2017dfe9792f0833:
                                            btnvt2w2z3enc
                                                ?.y2bm5rqs3zbbqyxivjft35 ??
                                            'unknown',
                                      ),
                                ),
                          ),
                        ),
                      if (o03495s9bin75b0yo3dhkj3s?.value.isPlaying != true)
                        Align(
                          alignment: Alignment.center,
                          child: _CokiSwimmingGwxyf5trvk8o521(
                            jw18949aiqlvka8: 'Play',
                            ve49llgfd852c4y7g6v: 44,
                            v541ui5iv8wpifacsk: () {
                              final gojq9dnypss67sy68g =
                                  _iobtwblqi7i0pbv5jjfpdk;
                              if (gojq9dnypss67sy68g == null ||
                                  !gojq9dnypss67sy68g.value.isInitialized) {
                                return;
                              }
                              setState(() => gojq9dnypss67sy68g.play());
                            },
                          ),
                        ),
                      Positioned(
                        right: 13,
                        bottom: MediaQuery.paddingOf(context).bottom + 60,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Semantics(
                              button: true,
                              selected: _td3na2tzlsl6rbbj7x3ttp5,
                              label: 'Favorite',
                              child: CokiSwimmingKtoozpjuob7rods(
                                kvg85l6uieobzf: BorderRadius.circular(25),
                                gwrsyzojtp84oco1ldhaaw90: _on5l9b3euazad1y,
                                v6j3bxo2dz4aevlmr: Image.asset(
                                  _td3na2tzlsl6rbbj7x3ttp5
                                      ? 'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_01741504cbcb6a850100.png'
                                      : 'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_7ca99e130a1bb3618c49.png',
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                            Text(
                              '${(btnvt2w2z3enc?.q7m4v9x2k8d6p1s5 ?? 0) + (_td3na2tzlsl6rbbj7x3ttp5 ? 1 : 0)}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(height: 36),
                            _CokiSwimmingGwxyf5trvk8o521(
                              jw18949aiqlvka8: 'Responses',
                              ve49llgfd852c4y7g6v: 50,
                              v541ui5iv8wpifacsk: () =>
                                  CokiSwimmingY5kxebxyhv8gg32yly.kco1p8qja05cbsuhzrwcvesj(
                                    iff2xuif3sai8k89,
                                    h5j30v6kt4ykg21tutwflx:
                                        widget.lgeh2fxgazcq75g,
                                    ssqbxn8vpgdaf9emp9937fjk: () =>
                                        CokiSwimmingSs601a6wnfgg8fg74v.ctvj7h3t3haji5wzoeo(
                                          iff2xuif3sai8k89,
                                          k6v2r9m4x8c1p7s3: btnvt2w2z3enc,
                                        ),
                                  ),
                            ),
                            CokiSwimmingD67038e81c290baa(
                              cokiSwimming90df3b806b3a319c: btnvt2w2z3enc,
                              cokiSwimming2378cbe62fd97c4e: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 18,
                        right: 76,
                        bottom: 34,
                        child: Semantics(
                          button: true,
                          label: 'Open Apien profile',
                          child: CokiSwimmingKtoozpjuob7rods(
                            kvg85l6uieobzf: BorderRadius.circular(8),
                            gwrsyzojtp84oco1ldhaaw90: () =>
                                Navigator.of(iff2xuif3sai8k89).pushNamed(
                                  CokiSwimmingXu1hfvhsqfkovamr518kcwz
                                      .tigdkksey2ignkpcr57u,
                                  arguments: btnvt2w2z3enc,
                                ),
                            v6j3bxo2dz4aevlmr: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 58,
                                  height: 65,
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: CokiSwimmingBskfv8qke498jnw5a9nz(
                                          bvuh7vp0q7jr0o6:
                                              btnvt2w2z3enc
                                                  ?.xkczithyrycvg26pfjjmm9 ??
                                              'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_96c3ybdtsvgb1g.png',
                                          qqonq4itbdxn5jaq8l63c4: 58,
                                        ),
                                      ),
                                      Positioned(
                                        left: 11,
                                        bottom: 0,
                                        child: Image.asset(
                                          'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_293d61a13b0eedfece.png',
                                          width: 36,
                                          height: 14,
                                          filterQuality: FilterQuality.high,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        btnvt2w2z3enc?.y2bm5rqs3zbbqyxivjft35 ??
                                            '',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          height: 1.2,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        btnvt2w2z3enc?.s35sepsxcpz4hg ?? '',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          height: 1.3,
                                          letterSpacing: 0,
                                        ),
                                      ),
                                    ],
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
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _CokiSwimmingGwxyf5trvk8o521 extends StatelessWidget {
  const _CokiSwimmingGwxyf5trvk8o521({
    required this.jw18949aiqlvka8,
    required this.v541ui5iv8wpifacsk,
    this.ve49llgfd852c4y7g6v = 44,
  });

  final String jw18949aiqlvka8;
  final VoidCallback v541ui5iv8wpifacsk;
  final double ve49llgfd852c4y7g6v;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: jw18949aiqlvka8,
      child: CokiSwimmingKtoozpjuob7rods(
        kvg85l6uieobzf: BorderRadius.circular(
          math.max(44, ve49llgfd852c4y7g6v) / 2,
        ),
        gwrsyzojtp84oco1ldhaaw90: v541ui5iv8wpifacsk,
        v6j3bxo2dz4aevlmr: SizedBox(
          width: math.max(44, ve49llgfd852c4y7g6v),
          height: math.max(44, ve49llgfd852c4y7g6v),
          child: Center(
            child: Image.asset(
              switch (jw18949aiqlvka8) {
                'Back' =>
                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_ngiss6h4zehouzcqdyb5.png',
                'More' =>
                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_wf9kctuvxtzds.png',
                'Play' =>
                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_f9uhejm1fo4g7oqk8dph.png',
                'Responses' =>
                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_3a60f5082a7d2fab44.png',
                _ =>
                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_f9uhejm1fo4g7oqk8dph.png',
              },
              width: ve49llgfd852c4y7g6v,
              height: ve49llgfd852c4y7g6v,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
      ),
    );
  }
}
