part of '../main.dart';

class CokiSwimmingLoginPrompt {
  const CokiSwimmingLoginPrompt._();

  static void show(BuildContext context) {
    showGeneralDialog<void>(
      context: context,
      barrierDismissible: false,
      barrierLabel: 'Log in',
      barrierColor: Colors.black.withValues(alpha: 0.55),
      pageBuilder: (context, _, _) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Center(
          child: _CokiSwimmingDialogPanel(
            title: 'Log in',
            detail: 'Please log in to continue this action.',
            actionLabel: 'Log in',
            onAction: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamedAndRemoveUntil(
                CokiSwimmingRoutesPaths.welcome,
                (route) => false,
              );
            },
          ),
        ),
      ),
    );
  }
}
