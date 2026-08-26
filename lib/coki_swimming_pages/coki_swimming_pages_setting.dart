part of '../main.dart';

class CokiSwimmingSettingScreen extends StatelessWidget {
  const CokiSwimmingSettingScreen({super.key, required this.onExit});

  final VoidCallback onExit;

  @override
  Widget build(BuildContext context) {
    final rows = [
      ('Privacy Policy', () => _text(context, 'Privacy Policy')),
      ('User Agreement', () => _text(context, 'User Agreement')),
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
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
            child: Column(
              children: [
                const CokiSwimmingTopBar(
                  title: 'Setting',
                  horizontalPadding: 0,
                ),
                const SizedBox(height: 22),
                for (final row in rows) ...[
                  CokiSwimmingSettingRow(label: row.$1, onTap: row.$2),
                  const SizedBox(height: 16),
                ],
                const Spacer(),
                SizedBox(
                  width: 190,
                  child: CokiSwimmingPlainButton(
                    label: 'Delete account',
                    color: const Color(0xFFD43161),
                    onTap: () => CokiSwimmingConfirm.show(context, onExit),
                  ),
                ),
                const SizedBox(height: 14),
                SizedBox(
                  width: 190,
                  child: CokiSwimmingPlainButton(
                    label: 'Log out',
                    color: const Color(0xFF60D0EE),
                    textColor: const Color(0xFF100A30),
                    onTap: () {
                      onExit();
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        CokiSwimmingRoutesPaths.welcome,
                        (route) => false,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _text(BuildContext context, String title) {
    Navigator.of(context).push(
      CupertinoPageRoute<void>(
        builder: (_) => CokiSwimmingTextScreen(title: title),
      ),
    );
  }
}
