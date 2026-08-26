part of '../main.dart';

class CokiSwimmingPermissionPrompt {
  const CokiSwimmingPermissionPrompt._();

  static void show(BuildContext context, {required String permissionName}) {
    showGeneralDialog<void>(
      context: context,
      barrierDismissible: false,
      barrierLabel: '$permissionName permission required',
      barrierColor: Colors.black.withValues(alpha: 0.55),
      pageBuilder: (context, _, _) => Center(
        child: _CokiSwimmingDialogPanel(
          title: 'Permission required',
          detail:
              '$permissionName access is disabled. Open Settings to allow access and choose your profile photo.',
          actionLabel: 'Settings',
          onAction: () {
            Navigator.of(context).pop();
            unawaited(CokiSwimmingAvatarService.instance.openSettings());
          },
        ),
      ),
    );
  }
}
