import 'dart:io';

import 'package:flutter/material.dart';

class CokiSwimmingFp31kwqgnq7d7mmdubsu7 extends StatelessWidget {
  const CokiSwimmingFp31kwqgnq7d7mmdubsu7({
    super.key,
    required this.ebv0wnhcczmsg2ytfim3iox,
    required this.mhyr7b1jr0dol34ahhd0ii9,
    required this.mjsibeo326cy1bub95ae,
    this.xukd4lpmnhu8l = true,
  });

  final String ebv0wnhcczmsg2ytfim3iox;
  final double mhyr7b1jr0dol34ahhd0ii9;
  final double mjsibeo326cy1bub95ae;
  final bool xukd4lpmnhu8l;

  @override
  Widget build(BuildContext context) {
    final sncywxatmwbbcx = Container(
      width: mhyr7b1jr0dol34ahhd0ii9,
      height: mjsibeo326cy1bub95ae,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: xukd4lpmnhu8l ? BoxShape.circle : BoxShape.rectangle,
        border: xukd4lpmnhu8l
            ? const Border.fromBorderSide(BorderSide(color: Colors.white))
            : null,
        gradient: const LinearGradient(
          colors: [Color(0xFF60D0EE), Color(0xFFAD99C2), Color(0xFFD43161)],
          stops: [0, 0.4704, 1],
        ),
      ),
      child: Icon(
        Icons.person_rounded,
        color: Colors.white,
        size:
            (mhyr7b1jr0dol34ahhd0ii9 < mjsibeo326cy1bub95ae
                ? mhyr7b1jr0dol34ahhd0ii9
                : mjsibeo326cy1bub95ae) *
            0.62,
      ),
    );
    if (!File(ebv0wnhcczmsg2ytfim3iox).isAbsolute) {
      if (ebv0wnhcczmsg2ytfim3iox.endsWith(
        'coki_swimming_96c3ybdtsvgb1g.png',
      )) {
        return sncywxatmwbbcx;
      }
      return Image.asset(
        ebv0wnhcczmsg2ytfim3iox,
        width: mhyr7b1jr0dol34ahhd0ii9,
        height: mjsibeo326cy1bub95ae,
        fit: BoxFit.cover,
        errorBuilder: (_, _, _) => sncywxatmwbbcx,
      );
    }
    return Image.file(
      File(ebv0wnhcczmsg2ytfim3iox),
      width: mhyr7b1jr0dol34ahhd0ii9,
      height: mjsibeo326cy1bub95ae,
      fit: BoxFit.cover,
      errorBuilder: (_, _, _) => sncywxatmwbbcx,
    );
  }
}
