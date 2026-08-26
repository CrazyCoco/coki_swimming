part of '../main.dart';

class CokiSwimmingInboxPane extends StatelessWidget {
  const CokiSwimmingInboxPane({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 68, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Message +',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                height: 1.2,
                letterSpacing: 0,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                itemCount: 4,
                separatorBuilder: (_, _) => const SizedBox(height: 12),
                itemBuilder: (context, index) => CokiSwimmingTap(
                  borderRadius: BorderRadius.circular(18),
                  onTap: () => Navigator.of(
                    context,
                  ).pushNamed(CokiSwimmingRoutesPaths.dialogue),
                  child: Container(
                    height: 66,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2B254D),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: const Color(0xFF60D0EE),
                        width: 1.2,
                      ),
                    ),
                    child: const Row(
                      children: [
                        CokiSwimmingAvatar(
                          image:
                              'coki_swimming_assets/coki_swimming_avatar_apien.png',
                          size: 50,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'Pyrlen\nEnjoy happy today.',
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
