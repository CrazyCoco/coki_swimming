part of '../main.dart';

class CokiSwimmingMediaScreen extends StatelessWidget {
  const CokiSwimmingMediaScreen({
    super.key,
    required this.image,
    required this.trailing,
    this.bottomCard = false,
    this.isVisitor = false,
  });

  final String image;
  final Widget trailing;
  final bool bottomCard;
  final bool isVisitor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(image, fit: BoxFit.cover),
          Container(color: const Color(0x33D43161)),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 15, 22),
              child: Column(
                children: [
                  Row(
                    children: [
                      CokiSwimmingBackButton(
                        onTap: () => Navigator.of(context).maybePop(),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Apien',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          height: 1.2,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const Spacer(),
                      CokiSwimmingCircle(
                        color: Colors.white.withValues(alpha: 0.84),
                        onTap: () => CokiSwimmingAccessGate.run(
                          context,
                          isVisitor: isVisitor,
                          action: () => CokiSwimmingReportSheet.show(context),
                        ),
                        child: const Icon(
                          Icons.more_horiz,
                          color: Color(0xFF100A30),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  if (bottomCard)
                    Container(
                      padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Apien\nCalling...',
                              style: TextStyle(
                                color: Color(0xFF100A30),
                                fontSize: 15,
                                height: 1.35,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          CokiSwimmingTap(
                            borderRadius: BorderRadius.circular(28),
                            onTap: () => Navigator.of(context).maybePop(),
                            child: trailing,
                          ),
                        ],
                      ),
                    )
                  else
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
                            'Just had the best random call tonight...',
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
                        trailing,
                      ],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
