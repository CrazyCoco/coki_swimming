part of '../main.dart';

class CokiSwimmingNamedField extends StatelessWidget {
  const CokiSwimmingNamedField({
    super.key,
    required this.label,
    required this.maxLines,
  });

  final String label;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            height: 25.2 / 18,
            letterSpacing: 0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 9),
        TextField(
          maxLines: maxLines,
          style: const TextStyle(
            color: Color(0xFF100A30),
            fontSize: 16,
            height: 22.4 / 16,
            letterSpacing: 0,
          ),
          decoration: InputDecoration(
            hintText: 'Please enter',
            hintStyle: TextStyle(
              color: const Color(0xFF100A30).withValues(alpha: 0.42),
              fontSize: 12,
              height: 1.2,
              letterSpacing: 0,
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(maxLines > 1 ? 8 : 6),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
