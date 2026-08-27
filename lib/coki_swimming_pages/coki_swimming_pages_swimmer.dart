part of '../main.dart';

class CokiSwimmingSwimmerScreen extends StatelessWidget {
  const CokiSwimmingSwimmerScreen({
    super.key,
    required this.isVisitor,
    this.q1a68a142c595,
  });

  final bool isVisitor;
  final CokiSwimmingSeedUser? q1a68a142c595;

  @override
  Widget build(BuildContext context) {
    final q2ab4a4f1dca965 = q1a68a142c595;
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              CokiSwimmingTopBar(
                title: '',
                trailing: CokiSwimmingCircle(
                  color: Colors.white.withValues(alpha: 0.88),
                  onTap: () => CokiSwimmingAccessGate.run(
                    context,
                    isVisitor: isVisitor,
                    action: () => CokiSwimmingReportSheet.show(context),
                  ),
                  child: const Icon(Icons.more_horiz, color: Color(0xFF100A30)),
                ),
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
                  children: [
                    Center(
                      child: CokiSwimmingAvatar(
                        image:
                            q2ab4a4f1dca965?.avatarAsset ??
                            'coki_swimming_assets/coki_swimming_avatar_apien.png',
                        size: 96,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      q2ab4a4f1dca965?.name ?? 'Apien',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        height: 1.1,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      q2ab4a4f1dca965?.biography ??
                          'Life is a journey, embrace it.',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        height: 1.4,
                        letterSpacing: 0,
                      ),
                    ),
                    const SizedBox(height: 18),
                    Row(
                      children: [
                        Expanded(
                          child: CokiSwimmingGradientButton(
                            label: 'Follow',
                            onTap: () => CokiSwimmingAccessGate.run(
                              context,
                              isVisitor: isVisitor,
                              action: () =>
                                  CokiSwimmingToast.show(context, 'Updated'),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: CokiSwimmingPlainButton(
                            label: 'Chat',
                            color: const Color(0xFF100A30),
                            onTap: () => CokiSwimmingAccessGate.run(
                              context,
                              isVisitor: isVisitor,
                              action: () => Navigator.of(
                                context,
                              ).pushNamed(CokiSwimmingRoutesPaths.dialogue),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 22),
                    const Text(
                      'Post',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        height: 1.2,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 12),
                    CokiSwimmingEntryCard(q49342b0d8fbd511a92: q2ab4a4f1dca965),
                    const SizedBox(height: 16),
                    CokiSwimmingEntryCard(
                      second: true,
                      q49342b0d8fbd511a92: q2ab4a4f1dca965,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
