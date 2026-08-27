part of '../main.dart';

class CokiSwimmingInboxPane extends StatelessWidget {
  const CokiSwimmingInboxPane({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 50,
          left: 0,
          right: 0,
          child: Image.asset(
            'coki_swimming_assets/coki_swimming_sea_frame.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(19, 68, 19, 0),
            child: Column(
              children: [
                const _CokiSwimmingInboxHeading(),
                const SizedBox(height: 13),
                Expanded(
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
                    padding: const EdgeInsets.fromLTRB(0, 7, 0, 24),
                    itemCount: 4,
                    separatorBuilder: (_, _) => const SizedBox(height: 21),
                    itemBuilder: (context, index) => _CokiSwimmingInboxEntry(
                      hasMarker: index < 3,
                      usesDeepSurface: index < 2,
                      onTap: () => Navigator.of(
                        context,
                      ).pushNamed(CokiSwimmingRoutesPaths.dialogue),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _CokiSwimmingInboxHeading extends StatelessWidget {
  const _CokiSwimmingInboxHeading();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const Positioned(
            left: 0,
            top: 0,
            child: Text(
              'Message',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                height: 1.2,
                letterSpacing: 0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Positioned(
            left: 94,
            top: -1,
            child: Image.asset(
              'coki_swimming_assets/coki_swimming_community_sparkles.png',
              width: 18,
              height: 14,
            ),
          ),
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
    );
  }
}

class _CokiSwimmingInboxEntry extends StatelessWidget {
  const _CokiSwimmingInboxEntry({
    required this.hasMarker,
    required this.usesDeepSurface,
    required this.onTap,
  });

  final bool hasMarker;
  final bool usesDeepSurface;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: "Pyrlen, I'm very happy today.",
      child: CokiSwimmingTap(
        borderRadius: BorderRadius.circular(38),
        onTap: onTap,
        child: SizedBox(
          height: 74,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: usesDeepSurface
                        ? const Color(0xFF100A30)
                        : Colors.black,
                    borderRadius: BorderRadius.circular(38),
                    border: Border.all(
                      color: const Color(0xFF5AD7F3),
                      width: 1.7,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: -7,
                child: Image.asset(
                  'coki_swimming_assets/coki_swimming_pyrlen_portrait.png',
                  width: 72,
                  height: 72,
                  filterQuality: FilterQuality.high,
                ),
              ),
              const Positioned(
                left: 97,
                top: 11,
                right: 53,
                child: Text(
                  'Pyrlen',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    height: 1.1,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const Positioned(
                left: 97,
                top: 43,
                right: 53,
                child: Text(
                  "I'm very happy today.",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    height: 1.2,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              if (hasMarker)
                const Positioned(
                  right: 22,
                  top: 23,
                  child: SizedBox(
                    width: 17,
                    height: 27,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xFFD92E60),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            height: 1,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w400,
                          ),
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
