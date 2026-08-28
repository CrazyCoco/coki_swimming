import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CokiSwimmingC42e81133062ccfd extends StatefulWidget {
  const CokiSwimmingC42e81133062ccfd({
    super.key,
    required this.cokiSwimmingEbf673309ff7e1c4,
    this.cokiSwimming74446ee54cb30be5,
    this.cokiSwimming27b54b25ebcf5117,
    this.cokiSwimmingBbc16a1e127a838c = BoxFit.cover,
  });

  final String cokiSwimmingEbf673309ff7e1c4;
  final double? cokiSwimming74446ee54cb30be5;
  final double? cokiSwimming27b54b25ebcf5117;
  final BoxFit cokiSwimmingBbc16a1e127a838c;

  @override
  State<CokiSwimmingC42e81133062ccfd> createState() =>
      _CokiSwimmingF86d499edec9eb60();
}

class _CokiSwimmingF86d499edec9eb60
    extends State<CokiSwimmingC42e81133062ccfd> {
  VideoPlayerController? _cokiSwimming30f2a0316111725d;

  bool get _cokiSwimmingEfe5cda31ce53f98 {
    final cokiSwimmingE0ea993af964147a = widget.cokiSwimmingEbf673309ff7e1c4
        .toLowerCase();
    return cokiSwimmingE0ea993af964147a.endsWith('.mp4') ||
        cokiSwimmingE0ea993af964147a.endsWith('.mov') ||
        cokiSwimmingE0ea993af964147a.endsWith('.m4v');
  }

  @override
  void initState() {
    super.initState();
    _cokiSwimming736065bf54747cc6();
  }

  @override
  void didUpdateWidget(CokiSwimmingC42e81133062ccfd oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.cokiSwimmingEbf673309ff7e1c4 !=
        widget.cokiSwimmingEbf673309ff7e1c4) {
      _cokiSwimming30f2a0316111725d?.dispose();
      _cokiSwimming30f2a0316111725d = null;
      _cokiSwimming736065bf54747cc6();
    }
  }

  void _cokiSwimming736065bf54747cc6() {
    if (!_cokiSwimmingEfe5cda31ce53f98) return;
    final cokiSwimming71dcaab6457795fc =
        File(widget.cokiSwimmingEbf673309ff7e1c4).isAbsolute
        ? VideoPlayerController.file(File(widget.cokiSwimmingEbf673309ff7e1c4))
        : VideoPlayerController.asset(widget.cokiSwimmingEbf673309ff7e1c4);
    _cokiSwimming30f2a0316111725d = cokiSwimming71dcaab6457795fc;
    cokiSwimming71dcaab6457795fc.initialize().then((_) async {
      await cokiSwimming71dcaab6457795fc.seekTo(Duration.zero);
      await cokiSwimming71dcaab6457795fc.pause();
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _cokiSwimming30f2a0316111725d?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cokiSwimming74fca2fd7ee64582 = _cokiSwimming30f2a0316111725d;
    if (_cokiSwimmingEfe5cda31ce53f98 &&
        cokiSwimming74fca2fd7ee64582?.value.isInitialized == true) {
      return SizedBox(
        width: widget.cokiSwimming74446ee54cb30be5,
        height: widget.cokiSwimming27b54b25ebcf5117,
        child: FittedBox(
          fit: widget.cokiSwimmingBbc16a1e127a838c,
          clipBehavior: Clip.hardEdge,
          child: SizedBox(
            width: cokiSwimming74fca2fd7ee64582!.value.size.width,
            height: cokiSwimming74fca2fd7ee64582.value.size.height,
            child: VideoPlayer(cokiSwimming74fca2fd7ee64582),
          ),
        ),
      );
    }
    return CokiSwimmingFp31kwqgnq7d7mmdubsu7(
      ebv0wnhcczmsg2ytfim3iox: widget.cokiSwimmingEbf673309ff7e1c4,
      mhyr7b1jr0dol34ahhd0ii9:
          widget.cokiSwimming74446ee54cb30be5 ?? double.infinity,
      mjsibeo326cy1bub95ae:
          widget.cokiSwimming27b54b25ebcf5117 ?? double.infinity,
      xukd4lpmnhu8l: false,
    );
  }
}

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
