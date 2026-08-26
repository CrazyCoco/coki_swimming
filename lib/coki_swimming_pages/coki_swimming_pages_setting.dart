part of '../main.dart';

class CokiSwimmingSettingScreen extends StatelessWidget {
  const CokiSwimmingSettingScreen({super.key, required this.onExit});

  final VoidCallback onExit;

  @override
  Widget build(BuildContext context) {
    final rows = [
      (
        'Privacy Policy',
        () => Navigator.of(
          context,
        ).pushNamed(CokiSwimmingRoutesPaths.privacyPolicy),
      ),
      (
        'User Agreement',
        () =>
            Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.termsOfUse),
      ),
      (
        'Blacklist',
        () => Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.shield),
      ),
      (
        'Wallet',
        () => Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.vault),
      ),
      (
        'Edit personal information',
        () => Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.edit),
      ),
    ];
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 4, 20, 20),
            child: LayoutBuilder(
              builder: (context, constraints) => SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      children: [
                        const CokiSwimmingTopBar(
                          title: 'Setting',
                          horizontalPadding: 0,
                        ),
                        const SizedBox(height: 18),
                        for (final row in rows) ...[
                          CokiSwimmingSettingRow(label: row.$1, onTap: row.$2),
                          const SizedBox(height: 16),
                        ],
                        const Spacer(),
                        SizedBox(
                          width: 229,
                          child: CokiSwimmingPlainButton(
                            label: 'Delete account',
                            color: const Color(0xFFD43161),
                            height: 62,
                            fontSize: 22,
                            onTap: () => Navigator.of(
                              context,
                            ).pushNamed(CokiSwimmingRoutesPaths.deleteAccount),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 229,
                          child: CokiSwimmingPlainButton(
                            label: 'Log out',
                            color: const Color(0xFF60D0EE),
                            textColor: const Color(0xFF100A30),
                            height: 62,
                            fontSize: 22,
                            onTap: () {
                              onExit();
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                CokiSwimmingRoutesPaths.welcome,
                                (route) => false,
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 29),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
