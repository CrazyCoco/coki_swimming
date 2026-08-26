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
        body: Stack(
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
              right: 28,
              top: 76,
              child: Image.asset(
                'coki_swimming_assets/coki_swimming_landing_companion.png',
                width: 215,
                height: 253,
                fit: BoxFit.contain,
              ),
            ),
            const Positioned(
              left: 23,
              top: 98,
              child: _CokiSwimmingCompanionVerticalTitle(),
            ),
            Positioned(
              left: 93,
              right: 39,
              top: 223,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
                  child: Container(
                    height: 38,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    color: const Color(0xFFB5A4B9).withValues(alpha: 0.34),
                    child: const Text(
                      'Chat with AI to unlock swimming tips,\ntechniques, and more.',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        height: 1.18,
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
              top: 296,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) => SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.fromLTRB(
                      30,
                      20,
                      30,
                      MediaQuery.paddingOf(context).bottom + 24,
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight:
                            constraints.maxHeight -
                            MediaQuery.paddingOf(context).bottom -
                            44,
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
                          const SizedBox(height: 15),
                          const Text(
                            "Hi! I'm Coki, your friendly AI companion\nhere to chat about all things swimming.\nWhether you're a beginner, a seasoned\nswimmer, or just love the water. I'm here to\nexplore techniques, share tips, and keep\nthe conversation inspiring and fun. Ready\nto dive into the world of swimming\ntogether? Let's talk and make a splash\nevery day!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF100A30),
                              fontSize: 16,
                              height: 1.55,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 24),
                          _CokiSwimmingCompanionChatButton(
                            onTap: () => _openDialogue(context),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SafeArea(bottom: false, child: CokiSwimmingTopBar(title: '')),
          ],
        ),
      ),
    );
  }
}

class _CokiSwimmingCompanionVerticalTitle extends StatelessWidget {
  const _CokiSwimmingCompanionVerticalTitle();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'coki_swimming_assets/coki_swimming_landing_star.png',
          width: 18,
          height: 18,
        ),
        const SizedBox(height: 8),
        const RotatedBox(
          quarterTurns: 1,
          child: Text(
            'Coki AI',
            style: TextStyle(
              color: Colors.white,
              fontSize: 34,
              height: 1,
              letterSpacing: 0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Image.asset(
          'coki_swimming_assets/coki_swimming_landing_plus_plus.png',
          width: 36,
          height: 18,
        ),
      ],
    );
  }
}

class _CokiSwimmingCompanionChatButton extends StatelessWidget {
  const _CokiSwimmingCompanionChatButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 288,
      height: 52,
      child: CokiSwimmingTap(
        borderRadius: BorderRadius.circular(26),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.fromLTRB(18, 5, 5, 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26),
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
                      'coki_swimming_assets/coki_swimming_coin_disc.png',
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
                'coki_swimming_assets/coki_swimming_companion_chat.png',
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
