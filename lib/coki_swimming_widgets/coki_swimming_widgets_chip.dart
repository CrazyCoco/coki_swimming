part of '../main.dart';

class CokiSwimmingChip extends StatelessWidget {
  const CokiSwimmingChip({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF60D0EE),
          fontSize: 14,
          height: 1.2,
          letterSpacing: 0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
