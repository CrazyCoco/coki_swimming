part of '../main.dart';

class CokiSwimmingPlainButton extends StatelessWidget {
  const CokiSwimmingPlainButton({
    super.key,
    required this.label,
    required this.color,
    required this.onTap,
    this.textColor = Colors.white,
  });

  final String label;
  final Color color;
  final VoidCallback onTap;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(28),
      onTap: onTap,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            height: 1.2,
            letterSpacing: 0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
