part of '../main.dart';

class CokiSwimmingDetailScreen extends StatelessWidget {
  const CokiSwimmingDetailScreen({
    super.key,
    required this.isVisitor,
    this.q46b7ae32cd0ca3,
  });

  final bool isVisitor;
  final CokiSwimmingSeedUser? q46b7ae32cd0ca3;

  @override
  Widget build(BuildContext context) {
    final qaa3a18c4dc51066f54 = q46b7ae32cd0ca3;
    final qec02fa5e73d5eb =
        qaa3a18c4dc51066f54?.postImageAssets ??
        const ['coki_swimming_assets/coki_swimming_sea_frame.png'];
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              CokiSwimmingTopBar(
                title: '',
                trailing: CokiSwimmingCircle(
                  color: Colors.white.withValues(alpha: 0.84),
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
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 20),
                  children: [
                    SizedBox(
                      height: 276,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            PageView.builder(
                              itemCount: qec02fa5e73d5eb.length,
                              itemBuilder: (context, q2d6c8c4ada14570219) =>
                                  Image.asset(
                                    qec02fa5e73d5eb[q2d6c8c4ada14570219],
                                    fit: BoxFit.cover,
                                  ),
                            ),
                            if (qec02fa5e73d5eb.length > 1)
                              Positioned(
                                right: 12,
                                top: 12,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0x99000000),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Text(
                                    '${qec02fa5e73d5eb.length} photos',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      height: 1.2,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        CokiSwimmingAvatar(
                          image:
                              qaa3a18c4dc51066f54?.avatarAsset ??
                              'coki_swimming_assets/coki_swimming_avatar_apien.png',
                          size: 38,
                          onTap: () => Navigator.of(context).pushNamed(
                            CokiSwimmingRoutesPaths.swimmer,
                            arguments: qaa3a18c4dc51066f54,
                          ),
                        ),
                        const SizedBox(width: 9),
                        Expanded(
                          child: Text(
                            qaa3a18c4dc51066f54?.name ?? 'Apien',
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
                    const SizedBox(height: 14),
                    Text(
                      qaa3a18c4dc51066f54?.postCaption ??
                          'Do not wear clothes randomly at beaches. Swim beautifully and safely with your favorite style.',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        height: 1.45,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      '#Theme   #Theme   #Theme',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 11,
                        height: 1.35,
                        letterSpacing: 0,
                      ),
                    ),
                    const SizedBox(height: 14),
                    const Text(
                      'Comments +',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        height: 1.2,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 10),
                    if (qaa3a18c4dc51066f54 == null) ...[
                      const CokiSwimmingNoteTile(),
                      const CokiSwimmingNoteTile(),
                      const CokiSwimmingNoteTile(),
                    ] else
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3A3558),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CokiSwimmingAvatar(
                              image: qaa3a18c4dc51066f54.avatarAsset,
                              size: 36,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    qaa3a18c4dc51066f54.name,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      height: 1.2,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    qaa3a18c4dc51066f54.postComment,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      height: 1.35,
                                      letterSpacing: 0,
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
              CokiSwimmingInputDock(
                onSubmit: () => CokiSwimmingAccessGate.run(
                  context,
                  isVisitor: isVisitor,
                  action: () => CokiSwimmingNotesSheet.show(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
