part of '../main.dart';

class CokiSwimmingTextBox extends StatelessWidget {
  const CokiSwimmingTextBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      minLines: 5,
      maxLines: 5,
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
          fontSize: 16,
          height: 22.4 / 16,
          letterSpacing: 0,
        ),
        counterText: '0/150',
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
