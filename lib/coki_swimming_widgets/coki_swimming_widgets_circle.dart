part of '../main.dart';

class CokiSwimmingCircle extends StatelessWidget {
  const CokiSwimmingCircle({
    super.key,
    required this.child,
    required this.onTap,
    this.color = Colors.white,
  });

  final Widget child;
  final VoidCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(22),
      onTap: onTap,
      child: Container(
        width: 44,
        height: 44,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: child,
      ),
    );
  }
}
