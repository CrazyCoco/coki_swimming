part of '../main.dart';

class CokiSwimmingConfirm {
  const CokiSwimmingConfirm._();

  static void show(BuildContext context, Future<void> Function() onConfirm) {
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
          onAction: () async {
            Navigator.of(context).pop();
            try {
              await onConfirm();
              if (!context.mounted) return;
              Navigator.of(context).pushNamedAndRemoveUntil(
                CokiSwimmingRoutesPaths.welcome,
                (route) => false,
              );
            } catch (_) {
              if (context.mounted) {
                CokiSwimmingToast.show(context, 'Unable to delete account');
              }
            }
          },
        ),
      ),
    );
  }
}
