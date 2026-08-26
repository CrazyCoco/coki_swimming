part of '../main.dart';

class CokiSwimmingGradientText extends StatelessWidget {
  const CokiSwimmingGradientText(
    this.text, {
    super.key,
    required this.style,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
    this.textAlign = TextAlign.start,
  });

  final String text;
  final TextStyle style;
  final int maxLines;
  final TextOverflow overflow;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => const LinearGradient(
        colors: [Color(0xFF60D0EE), Color(0xFFAD99C2), Color(0xFFD43161)],
        stops: [0, 0.4704, 1],
      ).createShader(bounds),
      child: Text(
        text,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: style,
      ),
    );
  }
}
