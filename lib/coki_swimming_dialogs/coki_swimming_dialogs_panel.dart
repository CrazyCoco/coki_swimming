part of '../main.dart';

class _CokiSwimmingDialogPanel extends StatelessWidget {
  const _CokiSwimmingDialogPanel({
    required this.title,
    required this.detail,
    required this.actionLabel,
    required this.onAction,
  });

  final String title;
  final String detail;
  final String actionLabel;
  final VoidCallback onAction;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: 315,
        padding: const EdgeInsets.fromLTRB(24, 26, 24, 24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF100A30),
                fontSize: 24,
                height: 1.2,
                letterSpacing: 0,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              detail,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF100A30),
                fontSize: 13,
                height: 1.4,
                letterSpacing: 0,
              ),
            ),
            const SizedBox(height: 22),
            CokiSwimmingGradientButton(label: actionLabel, onTap: onAction),
            const SizedBox(height: 10),
            CokiSwimmingPlainButton(
              label: 'Cancel',
              color: const Color(0xFF100A30),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}
