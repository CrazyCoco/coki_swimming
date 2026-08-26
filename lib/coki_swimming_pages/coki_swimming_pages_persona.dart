part of '../main.dart';

class CokiSwimmingPersonaPane extends StatelessWidget {
  const CokiSwimmingPersonaPane({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 330,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(28),
                  ),
                  child: Image.asset(
                    'coki_swimming_assets/coki_swimming_pool_muse.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(28),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        const Color(0xFF100A30).withValues(alpha: 0.9),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 16,
                  top: 12,
                  child: CokiSwimmingCircle(
                    onTap: () => Navigator.of(
                      context,
                    ).pushNamed(CokiSwimmingRoutesPaths.setting),
                    child: const Icon(
                      Icons.settings_outlined,
                      color: Color(0xFF100A30),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  right: 20,
                  bottom: 14,
                  child: Column(
                    children: [
                      CokiSwimmingAvatar(
                        image:
                            'coki_swimming_assets/coki_swimming_avatar_coki.png',
                        size: 88,
                        onTap: () => Navigator.of(
                          context,
                        ).pushNamed(CokiSwimmingRoutesPaths.edit),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Apien',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          height: 1.1,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 14),
                      Row(
                        children: [
                          Expanded(
                            child: CokiSwimmingHeroStat(
                              label: 'Friends',
                              value: '1',
                              onTap: () => Navigator.of(
                                context,
                              ).pushNamed(CokiSwimmingRoutesPaths.circle),
                            ),
                          ),
                          Expanded(
                            child: CokiSwimmingHeroStat(
                              label: 'Followers',
                              value: '3.3w',
                              onTap: () => Navigator.of(
                                context,
                              ).pushNamed(CokiSwimmingRoutesPaths.fans),
                            ),
                          ),
                          Expanded(
                            child: CokiSwimmingHeroStat(
                              label: 'Following',
                              value: '33',
                              onTap: () => Navigator.of(
                                context,
                              ).pushNamed(CokiSwimmingRoutesPaths.circle),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CokiSwimmingTap(
              borderRadius: BorderRadius.circular(28),
              onTap: () => Navigator.of(
                context,
              ).pushNamed(CokiSwimmingRoutesPaths.vault),
              child: Container(
                height: 70,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'coki_swimming_assets/coki_swimming_coin_disc.png',
                      width: 28,
                      height: 28,
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Text(
                        'My gold coins\n12345',
                        style: TextStyle(
                          color: Color(0xFF100A30),
                          fontSize: 15,
                          height: 1.35,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    const Icon(Icons.arrow_forward, color: Color(0xFF100A30)),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Post',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    height: 1.2,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 12),
                CokiSwimmingEntryCard(),
                SizedBox(height: 16),
                CokiSwimmingEntryCard(second: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
