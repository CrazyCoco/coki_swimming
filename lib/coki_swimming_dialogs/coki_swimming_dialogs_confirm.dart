part of '../main.dart';

class CokiSwimmingConfirm {
  const CokiSwimmingConfirm._();

  static void show(BuildContext context, VoidCallback onConfirm) {
    showGeneralDialog<void>(
      context: context,
      barrierDismissible: false,
      barrierLabel: 'Delete account',
      barrierColor: Colors.black.withValues(alpha: 0.55),
      pageBuilder: (context, _, _) => Center(
        child: _CokiSwimmingDialogPanel(
          title: 'Delete account',
          detail:
              'This will remove your profile from this device and return to login.',
          actionLabel: 'OK',
          onAction: () {
            Navigator.of(context).pop();
            onConfirm();
            Navigator.of(context).pushNamedAndRemoveUntil(
              CokiSwimmingRoutesPaths.welcome,
              (route) => false,
            );
          },
        ),
      ),
    );
  }
}
