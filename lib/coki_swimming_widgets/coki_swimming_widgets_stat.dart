part of '../main.dart';

class CokiSwimmingStat extends StatelessWidget {
  const CokiSwimmingStat({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Color(0xFFD43161),
            fontSize: 18,
            height: 1.2,
            letterSpacing: 0,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.black.withValues(alpha: 0.7),
            fontSize: 12,
            height: 1.4,
            letterSpacing: 0,
          ),
        ),
      ],
    );
  }
}
