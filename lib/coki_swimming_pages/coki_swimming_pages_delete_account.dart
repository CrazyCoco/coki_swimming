part of '../main.dart';

class CokiSwimmingDeleteAccountScreen extends StatelessWidget {
  const CokiSwimmingDeleteAccountScreen({super.key, required this.onDelete});

  final Future<void> Function() onDelete;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              const CokiSwimmingTopBar(title: 'Delete account'),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Before you delete your account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          height: 1.25,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 14),
                      Text(
                        'Deleting your Coki account is permanent and cannot be undone. The following data associated with your account will be removed:',
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.82),
                          fontSize: 15,
                          height: 1.55,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const _CokiSwimmingDeletionItem(
                        title: 'Profile information',
                        detail: 'Your account details, avatar, name and bio.',
                      ),
                      const _CokiSwimmingDeletionItem(
                        title: 'Diamond balance',
                        detail:
                            'Any remaining diamonds linked to this account.',
                      ),
                      const _CokiSwimmingDeletionItem(
                        title: 'Published data',
                        detail:
                            'Posts, photos, videos and related data published through this account.',
                      ),
                      const _CokiSwimmingDeletionItem(
                        title: 'Coki AI history',
                        detail: 'Your saved conversations with Coki AI.',
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'This action only affects data owned by this account. Content belonging to other accounts is not changed.',
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.62),
                          fontSize: 13,
                          height: 1.5,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 12, 24, 20),
                child: SizedBox(
                  width: double.infinity,
                  child: CokiSwimmingPlainButton(
                    label: 'Delete account',
                    color: const Color(0xFFD43161),
                    height: 58,
                    fontSize: 20,
                    onTap: () => CokiSwimmingConfirm.show(context, onDelete),
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

class _CokiSwimmingDeletionItem extends StatelessWidget {
  const _CokiSwimmingDeletionItem({required this.title, required this.detail});

  final String title;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 9,
            height: 9,
            margin: const EdgeInsets.only(top: 7),
            decoration: const BoxDecoration(
              color: Color(0xFF60D0EE),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.3,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  detail,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.72),
                    fontSize: 14,
                    height: 1.45,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
