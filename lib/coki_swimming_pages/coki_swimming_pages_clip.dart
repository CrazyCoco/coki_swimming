part of '../main.dart';

class CokiSwimmingClipScreen extends StatefulWidget {
  const CokiSwimmingClipScreen({
    super.key,
    required this.isVisitor,
    this.q5c5ea193730d84485504,
  });

  final bool isVisitor;
  final CokiSwimmingSeedUser? q5c5ea193730d84485504;

  @override
  State<CokiSwimmingClipScreen> createState() => _CokiSwimmingClipScreenState();
}

class _CokiSwimmingClipScreenState extends State<CokiSwimmingClipScreen> {
  bool _isHeartSelected = true;
  VideoPlayerController? _qf61d261ffe5b24ad33abed;

  @override
  void initState() {
    super.initState();
    final q1b7a885c7e532ce2 = widget.q5c5ea193730d84485504?.videoAsset;
    if (q1b7a885c7e532ce2 == null) return;
    final q9a60cbcd67819b = VideoPlayerController.asset(q1b7a885c7e532ce2);
    _qf61d261ffe5b24ad33abed = q9a60cbcd67819b;
    q9a60cbcd67819b.initialize().then((_) async {
      await q9a60cbcd67819b.setLooping(true);
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _qf61d261ffe5b24ad33abed?.dispose();
    super.dispose();
  }

  void _toggleHeart() {
    CokiSwimmingAccessGate.run(
      context,
      isVisitor: widget.isVisitor,
      action: () => setState(() => _isHeartSelected = !_isHeartSelected),
    );
  }

  @override
  Widget build(BuildContext context) {
    final q5d2a624d719e = widget.q5c5ea193730d84485504;
    final q6166cc0d4250c5bbc92f = _qf61d261ffe5b24ad33abed;
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
              builder: (context, constraints) {
                return Center(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 375,
                      height: 812,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          if (q5d2a624d719e == null)
                            Image.asset(
                              'coki_swimming_assets/coki_swimming_clip_scene.png',
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                            )
                          else ...[
                            if (q6166cc0d4250c5bbc92f?.value.isInitialized ==
                                true)
                              FittedBox(
                                fit: BoxFit.cover,
                                clipBehavior: Clip.hardEdge,
                                child: SizedBox(
                                  width:
                                      q6166cc0d4250c5bbc92f!.value.size.width,
                                  height:
                                      q6166cc0d4250c5bbc92f.value.size.height,
                                  child: VideoPlayer(q6166cc0d4250c5bbc92f),
                                ),
                              )
                            else
                              Image.asset(
                                q5d2a624d719e.q75c338b0dd8fc0df!,
                                fit: BoxFit.cover,
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
                            Positioned(
                              left: 20,
                              top: 56,
                              child: Image.asset(
                                'coki_swimming_assets/coki_swimming_nav_return.png',
                                width: 40,
                                height: 40,
                              ),
                            ),
                            Positioned(
                              right: 20,
                              top: 56,
                              child: Image.asset(
                                'coki_swimming_assets/coki_swimming_dialogue_more.png',
                                width: 40,
                                height: 40,
                              ),
                            ),
                            if (q6166cc0d4250c5bbc92f?.value.isPlaying != true)
                              Positioned(
                                left: 155,
                                top: 373,
                                child: Image.asset(
                                  'coki_swimming_assets/coki_swimming_community_play.png',
                                  width: 65,
                                  height: 65,
                                ),
                              ),
                            Positioned(
                              right: 13,
                              top: 645,
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.mode_comment,
                                  color: Color(0xFF60D0EE),
                                  size: 25,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 18,
                              right: 76,
                              bottom: 45,
                              child: Row(
                                children: [
                                  CokiSwimmingAvatar(
                                    image: q5d2a624d719e.avatarAsset,
                                    size: 58,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          q5d2a624d719e.name,
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
                                          q5d2a624d719e.videoCaption ?? '',
                                          maxLines: 2,
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
                          ],
                          Positioned(
                            left: 18,
                            top: 54,
                            child: _CokiSwimmingClipTarget(
                              label: 'Back',
                              onTap: () => Navigator.of(context).maybePop(),
                            ),
                          ),
                          Positioned(
                            right: 18,
                            top: 54,
                            child: _CokiSwimmingClipTarget(
                              label: 'More',
                              onTap: () => CokiSwimmingAccessGate.run(
                                context,
                                isVisitor: widget.isVisitor,
                                action: () =>
                                    CokiSwimmingReportSheet.show(context),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 155,
                            top: 373,
                            child: _CokiSwimmingClipTarget(
                              label: 'Play',
                              size: 65,
                              onTap: () {
                                final q9eaee4bba987b5b5f6 =
                                    _qf61d261ffe5b24ad33abed;
                                if (q9eaee4bba987b5b5f6 == null ||
                                    !q9eaee4bba987b5b5f6.value.isInitialized) {
                                  CokiSwimmingToast.show(context, 'Playing');
                                  return;
                                }
                                setState(() {
                                  q9eaee4bba987b5b5f6.value.isPlaying
                                      ? q9eaee4bba987b5b5f6.pause()
                                      : q9eaee4bba987b5b5f6.play();
                                });
                              },
                            ),
                          ),
                          Positioned(
                            right: 13,
                            top: 548,
                            child: Semantics(
                              button: true,
                              selected: _isHeartSelected,
                              label: 'Favorite',
                              child: CokiSwimmingTap(
                                borderRadius: BorderRadius.circular(25),
                                onTap: _toggleHeart,
                                child: Image.asset(
                                  _isHeartSelected
                                      ? 'coki_swimming_assets/coki_swimming_community_like_selected.png'
                                      : 'coki_swimming_assets/coki_swimming_community_like_idle.png',
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 13,
                            top: 645,
                            child: _CokiSwimmingClipTarget(
                              label: 'Responses',
                              size: 50,
                              onTap: () => CokiSwimmingAccessGate.run(
                                context,
                                isVisitor: widget.isVisitor,
                                action: () =>
                                    CokiSwimmingNotesSheet.showForClip(context),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 18,
                            bottom: 45,
                            child: _CokiSwimmingClipTarget(
                              label: 'Open Apien profile',
                              size: 58,
                              onTap: () => Navigator.of(
                                context,
                              ).pushNamed(CokiSwimmingRoutesPaths.swimmer),
                            ),
                          ),
                          Positioned(
                            left: 80,
                            right: 18,
                            bottom: 45,
                            height: 58,
                            child: Semantics(
                              button: true,
                              label: 'Open Apien profile',
                              child: CokiSwimmingTap(
                                borderRadius: BorderRadius.circular(8),
                                onTap: () => Navigator.of(
                                  context,
                                ).pushNamed(CokiSwimmingRoutesPaths.swimmer),
                                child: const SizedBox.expand(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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

class _CokiSwimmingClipTarget extends StatelessWidget {
  const _CokiSwimmingClipTarget({
    required this.label,
    required this.onTap,
    this.size = 44,
  });

  final String label;
  final VoidCallback onTap;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: label,
      child: CokiSwimmingTap(
        borderRadius: BorderRadius.circular(size / 2),
        onTap: onTap,
        child: SizedBox(width: size, height: size),
      ),
    );
  }
}
