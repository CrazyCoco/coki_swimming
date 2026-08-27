part of '../main.dart';

class CokiSwimmingGuideHeader extends StatelessWidget {
  const CokiSwimmingGuideHeader({super.key, required this.designScale});

  final double designScale;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          child: Image.asset(
            'coki_swimming_assets/coki_swimming_neon_aura.png',
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ),
        Positioned(
          right: 38 * designScale,
          top: 92 * designScale,
          child: Image.asset(
            'coki_swimming_assets/coki_swimming_landing_companion.png',
            width: 179 * designScale,
            height: 211 * designScale,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          left: 23 * designScale,
          top: 117 * designScale,
          child: _CokiSwimmingGuideVerticalTitle(designScale: designScale),
        ),
        Positioned(
          left: 110 * designScale,
          right: 39 * designScale,
          top: 264 * designScale,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(23 * designScale),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
              child: Container(
                height: 46 * designScale,
                padding: EdgeInsets.symmetric(horizontal: 8 * designScale),
                alignment: Alignment.center,
                color: const Color(0xFFB5A4B9).withValues(alpha: 0.34),
                child: const Text(
                  'Chat with AI to unlock swimming tips,\ntechniques, and more.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    height: 1.25,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _CokiSwimmingGuideVerticalTitle extends StatelessWidget {
  const _CokiSwimmingGuideVerticalTitle({required this.designScale});

  final double designScale;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60 * designScale,
      height: 193 * designScale,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              'coki_swimming_assets/coki_swimming_landing_star.png',
              width: 18 * designScale,
              height: 18 * designScale,
            ),
          ),
          Positioned(
            left: 0,
            top: 23 * designScale,
            child: RotatedBox(
              quarterTurns: 1,
              child: Text(
                'Coki AI',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34 * designScale,
                  height: 1,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              'coki_swimming_assets/coki_swimming_landing_plus_plus.png',
              width: 36 * designScale,
              height: 18 * designScale,
            ),
          ),
        ],
      ),
    );
  }
}
