part of '../main.dart';

class CokiSwimmingHomePane extends StatefulWidget {
  const CokiSwimmingHomePane({super.key, required this.isVisitor});

  final bool isVisitor;

  @override
  State<CokiSwimmingHomePane> createState() => _CokiSwimmingHomePaneState();
}

class _CokiSwimmingHomePaneState extends State<CokiSwimmingHomePane> {
  int _selectedSection = 0;

  @override
  Widget build(BuildContext context) {
    final users = _selectedSection == 0
        ? cokiSwimmingSeedUsers
        : cokiSwimmingSeedUsers.reversed;
    return SafeArea(
      bottom: false,
      child: ListView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 18),
        children: [
          Row(
            children: [
              CokiSwimmingTap(
                borderRadius: BorderRadius.circular(24),
                onTap: () => setState(() => _selectedSection = 0),
                child: Image.asset(
                  'coki_swimming_assets/coki_swimming_community_for_you.png',
                  width: 107,
                  height: 47,
                ),
              ),
              const Spacer(),
              CokiSwimmingTap(
                borderRadius: BorderRadius.circular(22),
                onTap: () => CokiSwimmingAccessGate.run(
                  context,
                  isVisitor: widget.isVisitor,
                  action: () => CokiSwimmingReleaseSheet.show(context),
                ),
                child: Image.asset(
                  'coki_swimming_assets/coki_swimming_community_add.png',
                  width: 44,
                  height: 44,
                ),
              ),
            ],
          ),
          const SizedBox(height: 19),
          SizedBox(
            height: 32,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CokiSwimmingTap(
                  borderRadius: BorderRadius.circular(6),
                  onTap: () => setState(() => _selectedSection = 0),
                  child: SizedBox(
                    width: 118,
                    height: 32,
                    child: Stack(
                      children: [
                        const Positioned(
                          left: 0,
                          top: 0,
                          child: Text(
                            'Trending',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              height: 1.2,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 92,
                          top: 0,
                          child: Image.asset(
                            'coki_swimming_assets/coki_swimming_community_sparkles.png',
                            width: 18,
                            height: 14,
                          ),
                        ),
                        if (_selectedSection == 0)
                          Positioned(
                            left: 0,
                            bottom: 0,
                            child: Image.asset(
                              'coki_swimming_assets/coki_swimming_community_underline.png',
                              width: 54,
                              height: 4,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                CokiSwimmingTap(
                  borderRadius: BorderRadius.circular(6),
                  onTap: () => setState(() => _selectedSection = 1),
                  child: SizedBox(
                    width: 54,
                    height: 32,
                    child: Stack(
                      children: [
                        Text(
                          'New',
                          style: TextStyle(
                            color: _selectedSection == 1
                                ? Colors.white
                                : const Color(0xFF817B96),
                            fontSize: 20,
                            height: 1.2,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        if (_selectedSection == 1)
                          Positioned(
                            left: 0,
                            bottom: 0,
                            child: Image.asset(
                              'coki_swimming_assets/coki_swimming_community_underline.png',
                              width: 54,
                              height: 4,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          for (final user in users) ...[
            CokiSwimmingCommunityCard(
              key: ValueKey('seed-${user.name}'),
              seedUser: user,
              isVisitor: widget.isVisitor,
            ),
            const SizedBox(height: 14),
          ],
        ],
      ),
    );
  }
}

class CokiSwimmingCommunityCard extends StatefulWidget {
  const CokiSwimmingCommunityCard({
    super.key,
    this.image,
    this.seedUser,
    required this.isVisitor,
  }) : assert(image != null || seedUser != null);

  final String? image;
  final CokiSwimmingSeedUser? seedUser;
  final bool isVisitor;

  @override
  State<CokiSwimmingCommunityCard> createState() =>
      _CokiSwimmingCommunityCardState();
}

class _CokiSwimmingCommunityCardState extends State<CokiSwimmingCommunityCard> {
  bool _isLiked = false;

  void _openContent() {
    final seedUser = widget.seedUser;
    Navigator.of(
      context,
    ).pushNamed(CokiSwimmingRoutesPaths.detail, arguments: seedUser);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 359,
      child: CokiSwimmingTap(
        borderRadius: BorderRadius.circular(19),
        onTap: _openContent,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(19),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                widget.seedUser?.postImageAssets.first ?? widget.image!,
                fit: BoxFit.cover,
              ),
              if (widget.seedUser != null)
                const DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0x99000000),
                        Colors.transparent,
                        Color(0xB3000000),
                      ],
                      stops: [0, 0.48, 1],
                    ),
                  ),
                ),
              Positioned(
                left: 0,
                top: 0,
                width: 210,
                height: 58,
                child: CokiSwimmingTap(
                  borderRadius: BorderRadius.circular(19),
                  onTap: () => Navigator.of(context).pushNamed(
                    CokiSwimmingRoutesPaths.swimmer,
                    arguments: widget.seedUser,
                  ),
                  child: widget.seedUser == null
                      ? const SizedBox.expand()
                      : Padding(
                          padding: const EdgeInsets.fromLTRB(12, 10, 8, 6),
                          child: Row(
                            children: [
                              CokiSwimmingAvatar(
                                image: widget.seedUser!.avatarAsset,
                                size: 38,
                              ),
                              const SizedBox(width: 9),
                              Expanded(
                                child: Text(
                                  widget.seedUser!.name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    height: 1.2,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: CokiSwimmingTap(
                  borderRadius: BorderRadius.circular(22),
                  onTap: () => CokiSwimmingAccessGate.run(
                    context,
                    isVisitor: widget.isVisitor,
                    action: () => CokiSwimmingReportSheet.show(context),
                  ),
                  child: SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Image.asset(
                        'coki_swimming_assets/coki_swimming_community_more.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ),
              ),
              if (widget.seedUser == null)
                Center(
                  child: CokiSwimmingTap(
                    borderRadius: BorderRadius.circular(22),
                    onTap: _openContent,
                    child: Image.asset(
                      'coki_swimming_assets/coki_swimming_community_play.png',
                      width: 44,
                      height: 44,
                    ),
                  ),
                ),
              if (widget.seedUser != null)
                Positioned(
                  left: 14,
                  right: 72,
                  bottom: 17,
                  child: Text(
                    widget.seedUser!.postCaption,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      height: 1.35,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              if ((widget.seedUser?.postImageAssets.length ?? 0) > 1)
                Positioned(
                  right: 14,
                  top: 58,
                  child: Container(
                    width: 34,
                    height: 28,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0x99000000),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(
                      Icons.collections_outlined,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              Positioned(
                right: 12,
                bottom: 15,
                child: CokiSwimmingTap(
                  borderRadius: BorderRadius.circular(25),
                  onTap: () => CokiSwimmingAccessGate.run(
                    context,
                    isVisitor: widget.isVisitor,
                    action: () => setState(() => _isLiked = !_isLiked),
                  ),
                  child: Image.asset(
                    _isLiked
                        ? 'coki_swimming_assets/coki_swimming_community_like_selected.png'
                        : 'coki_swimming_assets/coki_swimming_community_like_idle.png',
                    width: 50,
                    height: 50,
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

class CokiSwimmingPromoCard extends StatelessWidget {
  const CokiSwimmingPromoCard({super.key, required this.isVisitor});

  final bool isVisitor;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(14),
      onTap: () {
        if (isVisitor) {
          CokiSwimmingLoginPrompt.show(context);
        } else {
          Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.companion);
        }
      },
      child: Container(
        height: 168,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          image: const DecorationImage(
            image: AssetImage(
              'coki_swimming_assets/coki_swimming_stage_panel.png',
            ),
            fit: BoxFit.cover,
          ),
          border: Border.all(color: Colors.white.withValues(alpha: 0.35)),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 12,
              top: 14,
              child: Image.asset(
                'coki_swimming_assets/coki_swimming_avatar_coki.png',
                width: 72,
                height: 72,
              ),
            ),
            const Positioned(
              left: 16,
              bottom: 18,
              child: Text(
                'Art Trade Coki\nDelphine',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Positioned(
              right: 14,
              bottom: 12,
              child: Image.asset(
                'coki_swimming_assets/coki_swimming_talk_pill.png',
                width: 119,
                height: 53,
              ),
            ),
            Center(
              child: Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.72),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.play_arrow_rounded,
                  color: Color(0xFFD43161),
                  size: 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CokiSwimmingEntryCard extends StatefulWidget {
  const CokiSwimmingEntryCard({
    super.key,
    this.second = false,
    this.isVisitor = false,
    this.q49342b0d8fbd511a92,
  });

  final bool second;
  final bool isVisitor;
  final CokiSwimmingSeedUser? q49342b0d8fbd511a92;

  @override
  State<CokiSwimmingEntryCard> createState() => _CokiSwimmingEntryCardState();
}

class _CokiSwimmingEntryCardState extends State<CokiSwimmingEntryCard> {
  bool _isMarked = false;

  @override
  Widget build(BuildContext context) {
    final qec64d1db759168d6 = widget.q49342b0d8fbd511a92;
    final q96eec6db38e0347d4924 = qec64d1db759168d6?.postImageAssets;
    final qcdc00acb8503 = q96eec6db38e0347d4924 == null
        ? null
        : q96eec6db38e0347d4924[widget.second &&
                  q96eec6db38e0347d4924.length > 1
              ? 1
              : 0];
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(12),
      onTap: () => Navigator.of(
        context,
      ).pushNamed(CokiSwimmingRoutesPaths.detail, arguments: qec64d1db759168d6),
      child: Container(
        padding: const EdgeInsets.all(9),
        decoration: BoxDecoration(
          color: const Color(0xFF2B254D),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFF60D0EE)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CokiSwimmingAvatar(
                  image:
                      qec64d1db759168d6?.avatarAsset ??
                      'coki_swimming_assets/coki_swimming_avatar_apien.png',
                  size: 28,
                  onTap: () => Navigator.of(context).pushNamed(
                    CokiSwimmingRoutesPaths.swimmer,
                    arguments: qec64d1db759168d6,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    qec64d1db759168d6?.name ?? 'Gianluca Carver',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      height: 1.2,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                CokiSwimmingCircle(
                  color: Colors.transparent,
                  onTap: () => CokiSwimmingAccessGate.run(
                    context,
                    isVisitor: widget.isVisitor,
                    action: () => CokiSwimmingReportSheet.show(context),
                  ),
                  child: const Icon(Icons.more_horiz, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 310 / 150,
                    child: Image.asset(
                      qcdc00acb8503 ??
                          (widget.second
                              ? 'coki_swimming_assets/coki_swimming_pool_tile.png'
                              : 'coki_swimming_assets/coki_swimming_sea_frame.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 9,
                    top: 9,
                    child: CokiSwimmingTap(
                      borderRadius: BorderRadius.circular(18),
                      onTap: () => CokiSwimmingAccessGate.run(
                        context,
                        isVisitor: widget.isVisitor,
                        action: () => setState(() => _isMarked = !_isMarked),
                      ),
                      child: Container(
                        width: 33,
                        height: 33,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.82),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          _isMarked ? Icons.favorite : Icons.favorite_border,
                          color: const Color(0xFFD43161),
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 9,
                    bottom: 9,
                    child: CokiSwimmingTap(
                      borderRadius: BorderRadius.circular(18),
                      onTap: () => CokiSwimmingAccessGate.run(
                        context,
                        isVisitor: widget.isVisitor,
                        action: () => CokiSwimmingNotesSheet.show(context),
                      ),
                      child: Container(
                        width: 33,
                        height: 33,
                        decoration: const BoxDecoration(
                          color: Color(0xFF60D0EE),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.mode_comment_outlined,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              qec64d1db759168d6?.postCaption ??
                  (widget.second
                      ? 'Swim with the current, embrace the flow.'
                      : 'Life is a journey, embrace it.'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                height: 1.35,
                letterSpacing: 0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 7),
            const Text(
              '#Theme   #Theme   #Theme',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 10,
                height: 1.2,
                letterSpacing: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
