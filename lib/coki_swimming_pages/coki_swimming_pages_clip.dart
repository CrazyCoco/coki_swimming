part of '../main.dart';

class CokiSwimmingClipScreen extends StatefulWidget {
  const CokiSwimmingClipScreen({super.key, required this.isVisitor});

  final bool isVisitor;

  @override
  State<CokiSwimmingClipScreen> createState() => _CokiSwimmingClipScreenState();
}

class _CokiSwimmingClipScreenState extends State<CokiSwimmingClipScreen> {
  bool _isHeartSelected = true;

  void _toggleHeart() {
    CokiSwimmingAccessGate.run(
      context,
      isVisitor: widget.isVisitor,
      action: () => setState(() => _isHeartSelected = !_isHeartSelected),
    );
  }

  @override
  Widget build(BuildContext context) {
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
            Image.asset(
              'coki_swimming_assets/coki_swimming_clip_scene.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
              filterQuality: FilterQuality.high,
            ),
            Positioned.fill(
              child: FittedBox(
                fit: BoxFit.cover,
                alignment: Alignment.center,
                child: SizedBox(
                  width: 375,
                  height: 812,
                  child: Stack(
                    children: [
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
                            action: () => CokiSwimmingReportSheet.show(context),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 155,
                        top: 373,
                        child: _CokiSwimmingClipTarget(
                          label: 'Play',
                          size: 65,
                          onTap: () =>
                              CokiSwimmingToast.show(context, 'Playing'),
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
