part of '../main.dart';

class CokiSwimmingLandingPane extends StatelessWidget {
  const CokiSwimmingLandingPane({super.key, required this.isVisitor});

  final bool isVisitor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Coki',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          height: 1.1,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Swim with the current, embrace\nthe flow.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          height: 1.25,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                CokiSwimmingCircle(
                  onTap: () => CokiSwimmingAccessGate.run(
                    context,
                    isVisitor: isVisitor,
                    action: () => Navigator.of(
                      context,
                    ).pushNamed(CokiSwimmingRoutesPaths.vault),
                  ),
                  child: Image.asset(
                    'coki_swimming_assets/coki_swimming_camera_round.png',
                    width: 32,
                    height: 32,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 235,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  right: 22,
                  top: -18,
                  child: Image.asset(
                    'coki_swimming_assets/coki_swimming_neon_aura.png',
                    width: 240,
                    height: 280,
                    fit: BoxFit.contain,
                  ),
                ),
                const Positioned(
                  left: 22,
                  top: 28,
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      'Coki AI ++',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 33,
                        height: 1,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 110,
                  right: 40,
                  bottom: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 9,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2B254D).withValues(alpha: 0.82),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Chat with AI to unlock swimming tips, techniques, and more.',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        height: 1.3,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CokiSwimmingLandingFilter(label: 'Trending', active: true),
                SizedBox(width: 8),
                CokiSwimmingLandingFilter(label: 'For you'),
                SizedBox(width: 8),
                CokiSwimmingLandingFilter(label: 'Movie'),
                SizedBox(width: 8),
                CokiSwimmingLandingFilter(label: 'Visual'),
              ],
            ),
          ),
          const SizedBox(height: 14),
          Expanded(
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 18),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 14,
                childAspectRatio: 0.78,
              ),
              itemCount: 4,
              itemBuilder: (context, index) => CokiSwimmingLandingTile(
                second: index.isOdd,
                onTap: () {
                  if (isVisitor) {
                    CokiSwimmingLoginPrompt.show(context);
                  } else {
                    Navigator.of(
                      context,
                    ).pushNamed(CokiSwimmingRoutesPaths.companion);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CokiSwimmingLandingFilter extends StatelessWidget {
  const CokiSwimmingLandingFilter({
    super.key,
    required this.label,
    this.active = false,
  });

  final String label;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 44,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: active ? const Color(0xFF100A30) : const Color(0xFFB8B8B8),
          borderRadius: BorderRadius.circular(22),
          border: active ? Border.all(color: Colors.white, width: 2) : null,
        ),
        child: Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            height: 1.2,
            letterSpacing: 0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class CokiSwimmingLandingTile extends StatelessWidget {
  const CokiSwimmingLandingTile({
    super.key,
    required this.onTap,
    this.second = false,
  });

  final VoidCallback onTap;
  final bool second;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: const Color(0xFFD43161), width: 2),
          image: DecorationImage(
            image: AssetImage(
              second
                  ? 'coki_swimming_assets/coki_swimming_pool_tile.png'
                  : 'coki_swimming_assets/coki_swimming_water_portrait.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 8,
              top: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
                decoration: BoxDecoration(
                  color: const Color(0xFF60D0EE),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  '#Movie',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    height: 1.2,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 58,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: const Color(0xFF100A30).withValues(alpha: 0.58),
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(16),
                  ),
                ),
                child: const Text(
                  'Xanthe',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.2,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w900,
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
