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
                  itemCount: 4,
                  separatorBuilder: (_, _) => const SizedBox(height: 9),
                  itemBuilder: (context, index) => Container(
                    height: 56,
                    padding: const EdgeInsets.fromLTRB(9, 7, 8, 7),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2B254D),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Row(
                      children: [
                        const CokiSwimmingAvatar(
                          image:
                              'coki_swimming_assets/coki_swimming_avatar_apien.png',
                          size: 39,
                        ),
                        const SizedBox(width: 9),
                        const Expanded(
                          child: Text(
                            'Apien\nNice to meet you all.',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
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
