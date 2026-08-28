part of '../main.dart';

class CokiSwimmingSs601a6wnfgg8fg74v {
  const CokiSwimmingSs601a6wnfgg8fg74v._rplnzdim62iw4mbh5i11fd8();

  static void flez1tfrh32e(BuildContext z88ov9nrwf12wf7c4ojofd0) {
    showGeneralDialog<void>(
      context: z88ov9nrwf12wf7c4ojofd0,
      barrierDismissible: false,
      barrierColor: Colors.transparent,
      transitionDuration: const Duration(milliseconds: 220),
      transitionBuilder:
          (
            aea8sn9cqniq,
            gw9yxy2lvn8jrflkr,
            on2rtxo2yhkjyjl,
            x7gix3q4qx5hipxwyekcrdmm,
          ) {
            return FadeTransition(
              opacity: gw9yxy2lvn8jrflkr,
              child: SlideTransition(
                position:
                    Tween<Offset>(
                      begin: const Offset(0, 0.04),
                      end: Offset.zero,
                    ).animate(
                      CurvedAnimation(
                        parent: gw9yxy2lvn8jrflkr,
                        curve: Curves.easeOutCubic,
                      ),
                    ),
                child: x7gix3q4qx5hipxwyekcrdmm,
              ),
            );
          },
      pageBuilder:
          (xpwgrl2pekyt95rvqyzmwa, cvnhr9st590pecth54mxilz, zvzjd7816dslu) =>
              const _CokiSwimmingKax0do3iizo4(),
    );
  }

  static void ctvj7h3t3haji5wzoeo(BuildContext frs4e4efdssqrhl9e) {
    showModalBottomSheet<void>(
      context: frs4e4efdssqrhl9e,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (gmdb8vlnkqvjwb9f3rj) => Container(
        height: MediaQuery.sizeOf(gmdb8vlnkqvjwb9f3rj).height * 0.45,
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
        decoration: const BoxDecoration(
          color: Color(0xFF100A30),
          borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
        ),
        child: const SafeArea(
          top: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Comments +',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      CokiSwimmingEtwefhbl35nvx4mmo3rhiaj(),
                      CokiSwimmingEtwefhbl35nvx4mmo3rhiaj(),
                      CokiSwimmingEtwefhbl35nvx4mmo3rhiaj(),
                    ],
                  ),
                ),
              ),
              CokiSwimmingFzyvkvzmusndsa(),
            ],
          ),
        ),
      ),
    );
  }
}

class _CokiSwimmingKax0do3iizo4 extends StatefulWidget {
  const _CokiSwimmingKax0do3iizo4();

  @override
  State<_CokiSwimmingKax0do3iizo4> createState() =>
      _CokiSwimmingXrvruklfk1m7b0lws();
}

class _CokiSwimmingXrvruklfk1m7b0lws extends State<_CokiSwimmingKax0do3iizo4> {
  final TextEditingController _c1pbmvglxvpf9bn8 = TextEditingController();

  @override
  void dispose() {
    _c1pbmvglxvpf9bn8.dispose();
    super.dispose();
  }

  void _ra9guc2aj7sw() {
    if (_c1pbmvglxvpf9bn8.text.trim().isEmpty) return;
    _c1pbmvglxvpf9bn8.clear();
    FocusManager.instance.primaryFocus?.unfocus();
    CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(context, 'Sent');
  }

  @override
  Widget build(BuildContext context) {
    final xkmahtug1k78no = MediaQuery.of(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: Color(0xFF100A30),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Material(
        color: Colors.transparent,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_1og7s05fed23qmq.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
              filterQuality: FilterQuality.high,
            ),
            AnimatedPadding(
              duration: const Duration(milliseconds: 180),
              curve: Curves.easeOut,
              padding: EdgeInsets.only(
                bottom: xkmahtug1k78no.viewInsets.bottom,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: xkmahtug1k78no.size.height * 0.625,
                  decoration: const BoxDecoration(
                    color: Color(0xFF100A30),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 44,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Image.asset(
                                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_v8g9ae5tgyxd24ch.png',
                                  width: 134,
                                  height: 31,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                              Positioned(
                                right: -14,
                                top: -8,
                                child: CokiSwimmingKtoozpjuob7rods(
                                  kvg85l6uieobzf: BorderRadius.circular(22),
                                  gwrsyzojtp84oco1ldhaaw90: () =>
                                      Navigator.of(context).pop(),
                                  v6j3bxo2dz4aevlmr: SizedBox(
                                    width: 44,
                                    height: 44,
                                    child: Center(
                                      child: Image.asset(
                                        'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_svg32jdifqpk9m5w95taktgb.png',
                                        width: 24,
                                        height: 24,
                                        filterQuality: FilterQuality.high,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 3),
                        Expanded(
                          child: ListView.separated(
                            keyboardDismissBehavior:
                                ScrollViewKeyboardDismissBehavior.onDrag,
                            physics: const BouncingScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemCount: 4,
                            separatorBuilder: (_, _) =>
                                const SizedBox(height: 10),
                            itemBuilder:
                                (jeqtu40rs87wxefx5q, pt2sjoyvs5w937qg) =>
                                    const _CokiSwimmingC3mig3052v4u(),
                          ),
                        ),
                        _CokiSwimmingZ2b3l38fjqc289(
                          ujxwsiiyahqvebvl: _c1pbmvglxvpf9bn8,
                          q9ai113p3yjjkm: _ra9guc2aj7sw,
                        ),
                        const SizedBox(height: 27),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CokiSwimmingC3mig3052v4u extends StatelessWidget {
  const _CokiSwimmingC3mig3052v4u();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 82,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(0xFF3A3558),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 16,
              top: 14,
              child: Image.asset(
                'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_75utjvdb8y9wzfn5shrb55st.png',
                width: 34,
                height: 34,
                filterQuality: FilterQuality.high,
              ),
            ),
            const Positioned(
              left: 60,
              top: 20,
              right: 52,
              child: Text(
                'Stella',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.1,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const Positioned(
              left: 16,
              right: 16,
              bottom: 15,
              child: Text(
                'I love it!',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              right: 8,
              top: 8,
              child: CokiSwimmingKtoozpjuob7rods(
                kvg85l6uieobzf: BorderRadius.circular(20),
                gwrsyzojtp84oco1ldhaaw90: () =>
                    CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
                      context,
                      'Options',
                    ),
                v6j3bxo2dz4aevlmr: const SizedBox(
                  width: 40,
                  height: 40,
                  child: Icon(Icons.more_horiz, color: Colors.white, size: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CokiSwimmingZ2b3l38fjqc289 extends StatelessWidget {
  const _CokiSwimmingZ2b3l38fjqc289({
    required this.ujxwsiiyahqvebvl,
    required this.q9ai113p3yjjkm,
  });

  final TextEditingController ujxwsiiyahqvebvl;
  final VoidCallback q9ai113p3yjjkm;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: ujxwsiiyahqvebvl,
                textInputAction: TextInputAction.send,
                onSubmitted: (_) => q9ai113p3yjjkm(),
                style: const TextStyle(
                  color: Color(0xFF100A30),
                  fontSize: 16,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  hintText: 'Say something',
                  hintStyle: TextStyle(
                    color: const Color(0xFF100A30).withValues(alpha: 0.42),
                    fontSize: 16,
                    height: 1.2,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.fromLTRB(16, 17, 8, 16),
                ),
              ),
            ),
            CokiSwimmingKtoozpjuob7rods(
              kvg85l6uieobzf: BorderRadius.circular(24),
              gwrsyzojtp84oco1ldhaaw90: q9ai113p3yjjkm,
              v6j3bxo2dz4aevlmr: const SizedBox(
                width: 52,
                height: 55,
                child: Icon(
                  Icons.send_rounded,
                  color: Color(0xFFD92E60),
                  size: 26,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
