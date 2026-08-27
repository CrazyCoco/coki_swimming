part of '../main.dart';

class CokiSwimmingLandingPane extends StatefulWidget {
  const CokiSwimmingLandingPane({super.key, required this.isVisitor});

  final bool isVisitor;

  @override
  State<CokiSwimmingLandingPane> createState() =>
      _CokiSwimmingLandingPaneState();
}

class _CokiSwimmingLandingPaneState extends State<CokiSwimmingLandingPane> {
  int _selectedFilter = 0;

  void _openCompanion() {
    CokiSwimmingAccessGate.run(
      context,
      isVisitor: widget.isVisitor,
      action: () =>
          Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.companion),
    );
  }

  @override
  Widget build(BuildContext context) {
    final q98485ea5691423a3 = cokiSwimmingSeedUsers
        .where((q9fbcf502616b225c65c4) => q9fbcf502616b225c65c4.hasVideo)
        .toList(growable: false);
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'coki_swimming_assets/coki_swimming_stage_panel.png',
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
        SafeArea(
          bottom: false,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 307,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Positioned(
                        left: 20,
                        top: 3,
                        child: Text(
                          'Coki',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            height: 1.08,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 20,
                        top: 50,
                        child: Text(
                          'Swim with the current, embrace\nthe flow.',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            height: 1.35,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 20,
                        top: 13,
                        child: CokiSwimmingTap(
                          borderRadius: BorderRadius.circular(24),
                          onTap: () => CokiSwimmingAccessGate.run(
                            context,
                            isVisitor: widget.isVisitor,
                            action: () => Navigator.of(
                              context,
                            ).pushNamed(CokiSwimmingRoutesPaths.vault),
                          ),
                          child: Image.asset(
                            'coki_swimming_assets/coki_swimming_landing_camera.png',
                            width: 44,
                            height: 44,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 22,
                        top: 101,
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage(
                                'coki_swimming_assets/coki_swimming_landing_star.png',
                              ),
                              width: 26,
                              height: 26,
                            ),
                            SizedBox(height: 7),
                            RotatedBox(
                              quarterTurns: 1,
                              child: Row(
                                children: [
                                  Text(
                                    'Coki AI',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 33,
                                      height: 1,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Image(
                                    image: AssetImage(
                                      'coki_swimming_assets/coki_swimming_landing_plus_plus.png',
                                    ),
                                    width: 36,
                                    height: 18,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 50,
                        top: 74,
                        child: Image.asset(
                          'coki_swimming_assets/coki_swimming_landing_companion.png',
                          width: 179,
                          height: 211,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        left: 110,
                        right: 39,
                        top: 250,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
                            child: Container(
                              height: 46,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              alignment: Alignment.center,
                              color: const Color(
                                0xFFB5A4B9,
                              ).withValues(alpha: 0.34),
                              child: const Text(
                                'Chat with AI to unlock swimming tips,\ntechniques, and more.',
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  height: 1.22,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        right: 20,
                        top: 70,
                        bottom: 0,
                        child: Semantics(
                          button: true,
                          label: 'Open Coki AI chat',
                          child: GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: _openCompanion,
                            child: const SizedBox.expand(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 59,
                  margin: const EdgeInsets.fromLTRB(20, 2, 20, 18),
                  padding: const EdgeInsets.all(9),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          CokiSwimmingLandingFilter(
                            label: 'Trending',
                            active: _selectedFilter == 0,
                            onTap: () => setState(() => _selectedFilter = 0),
                          ),
                          const SizedBox(width: 8),
                          CokiSwimmingLandingFilter(
                            label: 'For you',
                            active: _selectedFilter == 1,
                            onTap: () => setState(() => _selectedFilter = 1),
                          ),
                          const SizedBox(width: 8),
                          CokiSwimmingLandingFilter(
                            label: 'Movie',
                            active: _selectedFilter == 2,
                            onTap: () => setState(() => _selectedFilter = 2),
                          ),
                          const SizedBox(width: 8),
                          CokiSwimmingLandingFilter(
                            label: 'Visual Arts',
                            active: _selectedFilter == 3,
                            onTap: () => setState(() => _selectedFilter = 3),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 18),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 14,
                    childAspectRatio: 0.78,
                  ),
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final q9fbcf502616b225c65c4 = q98485ea5691423a3[index];
                    return CokiSwimmingLandingTile(
                      image: q9fbcf502616b225c65c4.q75c338b0dd8fc0df!,
                      q77a950db36a648bd: q9fbcf502616b225c65c4,
                      onTap: () => Navigator.of(context).pushNamed(
                        CokiSwimmingRoutesPaths.clip,
                        arguments: q9fbcf502616b225c65c4,
                      ),
                      onMore: () => CokiSwimmingAccessGate.run(
                        context,
                        isVisitor: widget.isVisitor,
                        action: () => CokiSwimmingReportSheet.show(context),
                      ),
                    );
                  }, childCount: q98485ea5691423a3.length),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CokiSwimmingLandingFilter extends StatelessWidget {
  const CokiSwimmingLandingFilter({
    super.key,
    required this.label,
    required this.active,
    required this.onTap,
  });

  final String label;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(21),
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 160),
        width: label == 'Visual Arts' ? 100 : 88,
        height: 41,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: active ? const Color(0xFF100A30) : const Color(0xFFB8B8B8),
          borderRadius: BorderRadius.circular(21),
        ),
        child: Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            height: 1.2,
            letterSpacing: 0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class CokiSwimmingLandingTile extends StatelessWidget {
  const CokiSwimmingLandingTile({
    super.key,
    required this.image,
    required this.onTap,
    required this.onMore,
    this.q77a950db36a648bd,
  });

  final String image;
  final VoidCallback onTap;
  final VoidCallback onMore;
  final CokiSwimmingSeedUser? q77a950db36a648bd;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF5DD2F0), Color(0xFFE32F69)],
        ),
        borderRadius: BorderRadius.circular(19),
      ),
      child: CokiSwimmingTap(
        borderRadius: BorderRadius.circular(17),
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(17),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(image, fit: BoxFit.cover),
              const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x66000000),
                      Colors.transparent,
                      Color(0x99000000),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 8,
                top: 8,
                child: Container(
                  height: 26,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFF59CCE9),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Text(
                    '#Video',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      height: 1.2,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'coki_swimming_assets/coki_swimming_community_play.png',
                  width: 44,
                  height: 44,
                ),
              ),
              Positioned(
                right: 6,
                top: 7,
                child: CokiSwimmingTap(
                  borderRadius: BorderRadius.circular(22),
                  onTap: onMore,
                  child: SizedBox(
                    width: 44,
                    height: 44,
                    child: Center(
                      child: Image.asset(
                        'coki_swimming_assets/coki_swimming_landing_more.png',
                        width: 22,
                        height: 22,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                height: 55,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 9),
                      color: const Color(0xFF756E73).withValues(alpha: 0.52),
                      child: Row(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              q77a950db36a648bd?.avatarAsset ?? image,
                              width: 42,
                              height: 42,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 9),
                          Expanded(
                            child: Text(
                              q77a950db36a648bd?.videoCaption ?? 'Video',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                height: 1.25,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
