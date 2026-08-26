part of '../main.dart';

class CokiSwimmingTap extends StatelessWidget {
  const CokiSwimmingTap({
    super.key,
    required this.child,
    required this.onTap,
    this.borderRadius,
  });

  final Widget child;
  final VoidCallback onTap;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(borderRadius: borderRadius, onTap: onTap, child: child),
    );
  }
}
