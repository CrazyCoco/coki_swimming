part of '../main.dart';

class CokiSwimmingPersonaPane extends StatelessWidget {
  const CokiSwimmingPersonaPane({super.key, this.member});

  final CokiSwimmingMember? member;

  @override
  Widget build(BuildContext context) {
    final initialMember = member;
    if (initialMember == null) {
      return const _CokiSwimmingPersonaContent(member: null);
    }
    return StreamBuilder<CokiSwimmingMember?>(
      stream: CokiSwimmingDatabase.instance.watchMemberById(initialMember.id),
      initialData: initialMember,
      builder: (context, snapshot) =>
          _CokiSwimmingPersonaContent(member: snapshot.data ?? initialMember),
    );
  }
}

class _CokiSwimmingPersonaContent extends StatelessWidget {
  const _CokiSwimmingPersonaContent({required this.member});

  final CokiSwimmingMember? member;

  String get _avatarPath =>
      member?.avatarPath ??
      'coki_swimming_assets/coki_swimming_avatar_placeholder.png';

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      padding: EdgeInsets.zero,
      children: [
        _CokiSwimmingPersonaHeader(
          avatarPath: _avatarPath,
          displayName: member?.displayName ?? 'Coki',
        ),
        const SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: _CokiSwimmingCoinCard(balance: member?.coinBalance ?? 0),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CokiSwimmingCommunityCard(
            image:
                'coki_swimming_assets/coki_swimming_community_primary_card.png',
            isVisitor: false,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class _CokiSwimmingPersonaHeader extends StatelessWidget {
  const _CokiSwimmingPersonaHeader({
    required this.avatarPath,
    required this.displayName,
  });

  final String avatarPath;
  final String displayName;

  @override
  Widget build(BuildContext context) {
    final topInset = MediaQuery.paddingOf(context).top;
    return SizedBox(
      height: 340,
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(28)),
        child: Stack(
          fit: StackFit.expand,
          children: [
            CokiSwimmingAvatarImage(
              path: avatarPath,
              width: MediaQuery.sizeOf(context).width,
              height: 340,
              circularPlaceholder: false,
            ),
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0x00000000),
                    Color(0x220F092E),
                    Color(0xF2100A30),
                  ],
                  stops: [0.25, 0.55, 1],
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: topInset + 12,
              child: CokiSwimmingCircle(
                onTap: () => Navigator.of(
                  context,
                ).pushNamed(CokiSwimmingRoutesPaths.setting),
                child: const Icon(
                  Icons.settings_outlined,
                  color: Color(0xFF100A30),
                  size: 23,
                ),
              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 112,
              child: Column(
                children: [
                  CokiSwimmingTap(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () => Navigator.of(
                      context,
                    ).pushNamed(CokiSwimmingRoutesPaths.edit),
                    child: Container(
                      width: 100,
                      height: 100,
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF60D0EE),
                            Color(0xFFAD99C2),
                            Color(0xFFD43161),
                          ],
                          stops: [0, 0.4704, 1],
                        ),
                      ),
                      child: ClipOval(
                        child: CokiSwimmingAvatarImage(
                          path: avatarPath,
                          width: 92,
                          height: 92,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    displayName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      height: 1.05,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 58,
                    child: Row(
                      children: [
                        Expanded(
                          child: CokiSwimmingHeroStat(
                            label: 'Posts',
                            value: '1',
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CokiSwimmingCoinCard extends StatelessWidget {
  const _CokiSwimmingCoinCard({required this.balance});

  final int balance;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(35),
      onTap: () =>
          Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.vault),
      child: Container(
        height: 70,
        padding: const EdgeInsets.fromLTRB(24, 9, 20, 9),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'My gold coins',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFF36333A),
                      fontSize: 20,
                      height: 1.05,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Image.asset(
                        'coki_swimming_assets/coki_swimming_persona_coin.png',
                        width: 22,
                        height: 22,
                      ),
                      const SizedBox(width: 7),
                      Flexible(
                        child: Text(
                          balance.toString(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Color(0xFFD43161),
                            fontSize: 16,
                            height: 1.1,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward, color: Color(0xFF17131E), size: 27),
          ],
        ),
      ),
    );
  }
}
