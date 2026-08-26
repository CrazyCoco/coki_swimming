part of '../main.dart';

class CokiSwimmingCompanionScreen extends StatelessWidget {
  const CokiSwimmingCompanionScreen({super.key, required this.memberId});

  final int? memberId;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: [
              CokiSwimmingTopBar(title: ''),
              Positioned(
                left: 4,
                top: 54,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Text(
                    'Coki AI ++',
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.92),
                      fontSize: 34,
                      height: 1,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: -18,
                top: 34,
                child: Image.asset(
                  'coki_swimming_assets/coki_swimming_neon_aura.png',
                  width: 270,
                  height: 315,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: 24,
                right: 24,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(22, 24, 22, 24),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Coki AI',
                        style: TextStyle(
                          color: Color(0xFF100A30),
                          fontSize: 22,
                          height: 1.2,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 18),
                      const Text(
                        "Hi! I'm Coki, your friendly AI companion here to chat about all things swimming. Whether you're a beginner or a seasoned swimmer, I am here to explore techniques, share tips, and keep the conversation inspiring and fun.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF100A30),
                          fontSize: 12,
                          height: 1.55,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 22),
                      SizedBox(
                        width: 227,
                        child: CokiSwimmingGradientButton(
                          label: '100     Chat',
                          icon: Image.asset(
                            'coki_swimming_assets/coki_swimming_coin_disc.png',
                            width: 22,
                            height: 22,
                          ),
                          onTap: () {
                            if (memberId == null) {
                              CokiSwimmingLoginPrompt.show(context);
                              return;
                            }
                            Navigator.of(
                              context,
                            ).pushNamed(CokiSwimmingRoutesPaths.guideDialogue);
                          },
                        ),
                      ),
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
}
