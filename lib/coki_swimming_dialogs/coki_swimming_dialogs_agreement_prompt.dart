part of '../main.dart';

class CokiSwimmingAgreementPrompt {
  const CokiSwimmingAgreementPrompt._();

  static void show(BuildContext context) {
    showGeneralDialog<void>(
      context: context,
      barrierDismissible: false,
      barrierLabel: 'Agreement required',
      barrierColor: Colors.black.withValues(alpha: 0.55),
      pageBuilder: (context, _, _) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Center(
          child: _CokiSwimmingDialogPanel(
            title: 'Agreement required',
            detail: 'Please select the agreement checkbox to continue.',
            actionLabel: 'OK',
            onAction: () => Navigator.of(context).pop(),
          ),
        ),
      ),
    );
  }
}
