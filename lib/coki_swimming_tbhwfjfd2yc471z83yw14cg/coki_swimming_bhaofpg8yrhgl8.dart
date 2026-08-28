part of '../main.dart';

class CokiSwimmingEv4ct2qk7zro extends StatelessWidget {
  const CokiSwimmingEv4ct2qk7zro(
    this.acjt909s1i5gw4vi2, {
    super.key,
    required this.hi4ae102r25lkc3,
    this.lfchobi7ai8xyf1p = 1,
    this.xgilg23i8q1xceobi9a1r7 = TextOverflow.ellipsis,
    this.ik73w3yfizzr = TextAlign.start,
  });

  final String acjt909s1i5gw4vi2;
  final TextStyle hi4ae102r25lkc3;
  final int lfchobi7ai8xyf1p;
  final TextOverflow xgilg23i8q1xceobi9a1r7;
  final TextAlign ik73w3yfizzr;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (f6fvg5c5x3srjl2ti9y) => const LinearGradient(
        colors: [Color(0xFF60D0EE), Color(0xFFAD99C2), Color(0xFFD43161)],
        stops: [0, 0.4704, 1],
      ).createShader(f6fvg5c5x3srjl2ti9y),
      child: Text(
        acjt909s1i5gw4vi2,
        maxLines: lfchobi7ai8xyf1p,
        overflow: xgilg23i8q1xceobi9a1r7,
        textAlign: ik73w3yfizzr,
        style: hi4ae102r25lkc3,
      ),
    );
  }
}
