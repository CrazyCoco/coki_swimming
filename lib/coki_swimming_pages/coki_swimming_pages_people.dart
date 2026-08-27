part of '../main.dart';

class CokiSwimmingPeopleScreen extends StatelessWidget {
  const CokiSwimmingPeopleScreen({
    super.key,
    required this.title,
    required this.actionLabel,
  });

  final String title;
  final String actionLabel;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              CokiSwimmingTopBar(title: title),
              Expanded(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  padding: const EdgeInsets.fromLTRB(15, 18, 15, 20),
                  itemCount: cokiSwimmingSeedUsers.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 9),
                  itemBuilder: (context, index) {
                    final q36d4211a2756f0124dac6a =
                        cokiSwimmingSeedUsers[index];
                    return Container(
                      height: 56,
                      padding: const EdgeInsets.fromLTRB(9, 7, 8, 7),
                      decoration: BoxDecoration(
                        color: const Color(0xFF2B254D),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Row(
                        children: [
                          CokiSwimmingAvatar(
                            image: q36d4211a2756f0124dac6a.avatarAsset,
                            size: 39,
                            onTap: () => Navigator.of(context).pushNamed(
                              CokiSwimmingRoutesPaths.swimmer,
                              arguments: q36d4211a2756f0124dac6a,
                            ),
                          ),
                          const SizedBox(width: 9),
                          Expanded(
                            child: Text(
                              '${q36d4211a2756f0124dac6a.name}\n${q36d4211a2756f0124dac6a.biography}',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                height: 1.35,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          CokiSwimmingSmallPill(
                            label: actionLabel,
                            color: Colors.white,
                            textColor: const Color(0xFF100A30),
                            onTap: () =>
                                CokiSwimmingToast.show(context, 'Updated'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
