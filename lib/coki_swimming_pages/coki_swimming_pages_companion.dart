part of '../main.dart';

class CokiSwimmingCompanionScreen extends StatelessWidget {
  const CokiSwimmingCompanionScreen({super.key, required this.memberId});

  final int? memberId;

  void _openDialogue(BuildContext context) {
    if (memberId == null) {
      CokiSwimmingLoginPrompt.show(context);
      return;
    }
    Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.guideDialogue);
  }

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: LayoutBuilder(
          builder: (context, constraints) {
            final designScale = constraints.maxWidth / 375;
            final panelTop = 352 * designScale;

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
                  right: 28 * designScale,
                  top: 76 * designScale,
                  child: Image.asset(
                    'coki_swimming_assets/coki_swimming_landing_companion.png',
                    width: 215 * designScale,
                    height: 253 * designScale,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  left: 23 * designScale,
                  top: 117 * designScale,
                  child: _CokiSwimmingCompanionVerticalTitle(
                    designScale: designScale,
                  ),
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
                        padding: EdgeInsets.symmetric(
                          horizontal: 8 * designScale,
                        ),
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
                Positioned(
                  left: 0,
                  right: 0,
                  top: panelTop,
                  bottom: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(36),
                      ),
                    ),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.fromLTRB(
                        29,
                        20,
                        29,
                        MediaQuery.paddingOf(context).bottom + 20,
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'Coki AI',
                            style: TextStyle(
                              color: Color(0xFF100A30),
                              fontSize: 26,
                              height: 1.2,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Hi! I’m Coki, your friendly AI companion\n'
                            'here to chat about all things swimming.\n'
                            "Whether you're a beginner, a seasoned\n"
                            'swimmer, or just love the water, I’m here to\n'
                            'explore techniques, share tips, and keep\n'
                            'the conversation inspiring and fun. Ready\n'
                            'to dive into the world of swimming\n'
                            'together? Let’s talk and make a splash\n'
                            'every day!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF100A30),
                              fontSize: 16,
                              height: 1.85,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 37),
                          _CokiSwimmingCompanionActionButton(
                            onTap: () => _openDialogue(context),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SafeArea(
                    bottom: false,
                    child: CokiSwimmingTopBar(title: ''),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _CokiSwimmingCompanionVerticalTitle extends StatelessWidget {
  const _CokiSwimmingCompanionVerticalTitle({required this.designScale});

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

class _CokiSwimmingCompanionActionButton extends StatelessWidget {
  const _CokiSwimmingCompanionActionButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 281,
      height: 62,
      child: CokiSwimmingTap(
        borderRadius: BorderRadius.circular(31),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(31),
            gradient: const LinearGradient(
              colors: [Color(0xFF60D0EE), Color(0xFFD43161)],
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'coki_swimming_assets/coki_swimming_vault_coin.png',
                      width: 29,
                      height: 29,
                    ),
                    const SizedBox(width: 13),
                    const Text(
                      '100',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        height: 1,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'coki_swimming_assets/coki_swimming_companion_action.png',
                width: 79,
                height: 42,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
