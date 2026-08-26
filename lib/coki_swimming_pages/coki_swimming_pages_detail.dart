part of '../main.dart';

class CokiSwimmingDetailScreen extends StatelessWidget {
  const CokiSwimmingDetailScreen({super.key, required this.isVisitor});

  final bool isVisitor;

  @override
  Widget build(BuildContext context) {
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
                    const ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      child: Image(
                        image: AssetImage(
                          'coki_swimming_assets/coki_swimming_sea_frame.png',
                        ),
                        height: 276,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        CokiSwimmingAvatar(
                          image:
                              'coki_swimming_assets/coki_swimming_avatar_apien.png',
                          size: 38,
                          onTap: () => Navigator.of(
                            context,
                          ).pushNamed(CokiSwimmingRoutesPaths.swimmer),
                        ),
                        const SizedBox(width: 9),
                        const Expanded(
                          child: Text(
                            'Apien',
                            style: TextStyle(
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
                    const Text(
                      'Do not wear clothes randomly at beaches. Swim beautifully and safely with your favorite style.',
                      style: TextStyle(
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
                    const CokiSwimmingNoteTile(),
                    const CokiSwimmingNoteTile(),
                    const CokiSwimmingNoteTile(),
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
