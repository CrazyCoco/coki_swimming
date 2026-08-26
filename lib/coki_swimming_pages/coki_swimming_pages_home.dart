part of '../main.dart';

class CokiSwimmingHomePane extends StatelessWidget {
  const CokiSwimmingHomePane({super.key, required this.isVisitor});

  final bool isVisitor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 18),
        children: [
          Row(
            children: [
              const CokiSwimmingChip(text: 'For you'),
              const SizedBox(width: 12),
              const Text(
                'Trending',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Spacer(),
              CokiSwimmingCircle(
                child: const Icon(Icons.add, color: Color(0xFFD43161)),
                onTap: () => CokiSwimmingAccessGate.run(
                  context,
                  isVisitor: isVisitor,
                  action: () => CokiSwimmingReleaseSheet.show(context),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          CokiSwimmingPromoCard(isVisitor: isVisitor),
          const SizedBox(height: 16),
          CokiSwimmingEntryCard(isVisitor: isVisitor),
          const SizedBox(height: 16),
          CokiSwimmingEntryCard(second: true, isVisitor: isVisitor),
        ],
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
  });

  final bool second;
  final bool isVisitor;

  @override
  State<CokiSwimmingEntryCard> createState() => _CokiSwimmingEntryCardState();
}

class _CokiSwimmingEntryCardState extends State<CokiSwimmingEntryCard> {
  bool _isMarked = false;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(12),
      onTap: () =>
          Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.detail),
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
                  image: 'coki_swimming_assets/coki_swimming_avatar_apien.png',
                  size: 28,
                  onTap: () => Navigator.of(
                    context,
                  ).pushNamed(CokiSwimmingRoutesPaths.swimmer),
                ),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    'Gianluca Carver',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
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
                      widget.second
                          ? 'coki_swimming_assets/coki_swimming_pool_tile.png'
                          : 'coki_swimming_assets/coki_swimming_sea_frame.png',
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
              widget.second
                  ? 'Swim with the current, embrace the flow.'
                  : 'Life is a journey, embrace it.',
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
