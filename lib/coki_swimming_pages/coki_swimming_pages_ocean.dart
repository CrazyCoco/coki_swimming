part of '../main.dart';

class CokiSwimmingOceanPane extends StatelessWidget {
  const CokiSwimmingOceanPane({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'coki_swimming_assets/coki_swimming_pool_muse.png',
            fit: BoxFit.cover,
          ),
          Container(color: Colors.black.withValues(alpha: 0.18)),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 15, 22),
              child: Column(
                children: [
                  Row(
                    children: [
                      CokiSwimmingBackButton(
                        onTap: () =>
                            CokiSwimmingToast.show(context, 'Already here'),
                      ),
                      const Spacer(),
                      CokiSwimmingCircle(
                        color: Colors.white.withValues(alpha: 0.84),
                        onTap: () => CokiSwimmingReportSheet.show(context),
                        child: const Icon(
                          Icons.more_horiz,
                          color: Color(0xFF100A30),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const CokiSwimmingAvatar(
                        image:
                            'coki_swimming_assets/coki_swimming_avatar_apien.png',
                        size: 42,
                      ),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: Text(
                          'Apien\nJust had the best random call tonight...',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            height: 1.35,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      CokiSwimmingFloatTool(
                        icon: Icons.mode_comment_outlined,
                        label: '100',
                        onTap: () => CokiSwimmingNotesSheet.show(context),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: CokiSwimmingTap(
              borderRadius: BorderRadius.circular(34),
              onTap: () =>
                  Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.clip),
              child: Container(
                width: 66,
                height: 66,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.7),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.play_arrow_rounded,
                  color: Color(0xFFD43161),
                  size: 44,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
