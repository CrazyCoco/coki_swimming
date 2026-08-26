part of '../main.dart';

class CokiSwimmingAccessGate {
  const CokiSwimmingAccessGate._();

  static void run(
    BuildContext context, {
    required bool isVisitor,
    required VoidCallback action,
  }) {
    if (isVisitor) {
      CokiSwimmingLoginPrompt.show(context);
      return;
    }
    action();
  }
}
