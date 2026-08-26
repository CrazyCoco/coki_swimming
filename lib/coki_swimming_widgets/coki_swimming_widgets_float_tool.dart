part of '../main.dart';

class CokiSwimmingFloatTool extends StatelessWidget {
  const CokiSwimmingFloatTool({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(24),
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 44,
            height: 44,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.82),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: const Color(0xFF60D0EE), size: 24),
          ),
          const SizedBox(height: 3),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
              height: 1.2,
              letterSpacing: 0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
