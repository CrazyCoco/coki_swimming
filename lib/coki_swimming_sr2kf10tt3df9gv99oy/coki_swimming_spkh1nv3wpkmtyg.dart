part of '../main.dart';

class CokiSwimmingRtwym9wmdetuorto7 {
  const CokiSwimmingRtwym9wmdetuorto7._x9vs4kkosy5wnwaem0va();

  static Future<CokiSwimmingGcnt0jewcf1egxi3?> uxp9wn4bxdjeda(
    BuildContext d0lnsom1g9ctd88tx8uz,
  ) {
    return showModalBottomSheet<CokiSwimmingGcnt0jewcf1egxi3>(
      context: d0lnsom1g9ctd88tx8uz,
      backgroundColor: Colors.transparent,
      builder: (rhxpc7v2dyb1gf8g7ljapl) =>
          const _CokiSwimmingP52hlgttj3edyd4qseohad1(),
    );
  }
}

class _CokiSwimmingP52hlgttj3edyd4qseohad1 extends StatelessWidget {
  const _CokiSwimmingP52hlgttj3edyd4qseohad1();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
      decoration: const BoxDecoration(
        color: Color(0xFF100A30),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 38,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.45),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 18),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Profile photo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(height: 14),
            _CokiSwimmingHruydb6zxwh1o5pg886v5wk(
              phd3w6jw5r5i31vo9pj90: CupertinoIcons.camera_fill,
              sndythsc77cwu: 'Take Photo',
              xev92lbiq8d7o: () => Navigator.of(
                context,
              ).pop(CokiSwimmingGcnt0jewcf1egxi3.xqv2yjmj3yqx4dg),
            ),
            const SizedBox(height: 10),
            _CokiSwimmingHruydb6zxwh1o5pg886v5wk(
              phd3w6jw5r5i31vo9pj90: CupertinoIcons.photo_fill,
              sndythsc77cwu: 'Choose from Photo Library',
              xev92lbiq8d7o: () => Navigator.of(
                context,
              ).pop(CokiSwimmingGcnt0jewcf1egxi3.ax8icszvu1lgzkxup4rc9e),
            ),
            const SizedBox(height: 10),
            CokiSwimmingRawwst0gui2o378c66i5elvz(
              e67hqwb9qy10z9k5z: 'Cancel',
              sush03fe1pypmha0j3: Colors.white,
              y0bkn83p183sy8a1x9z7w: const Color(0xFF100A30),
              kcbdmyug43tkjpe: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}

class _CokiSwimmingHruydb6zxwh1o5pg886v5wk extends StatelessWidget {
  const _CokiSwimmingHruydb6zxwh1o5pg886v5wk({
    required this.phd3w6jw5r5i31vo9pj90,
    required this.sndythsc77cwu,
    required this.xev92lbiq8d7o,
  });

  final IconData phd3w6jw5r5i31vo9pj90;
  final String sndythsc77cwu;
  final VoidCallback xev92lbiq8d7o;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingKtoozpjuob7rods(
      kvg85l6uieobzf: BorderRadius.circular(16),
      gwrsyzojtp84oco1ldhaaw90: xev92lbiq8d7o,
      v6j3bxo2dz4aevlmr: Container(
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
        ),
        child: Row(
          children: [
            Icon(phd3w6jw5r5i31vo9pj90, color: Colors.white, size: 23),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                sndythsc77cwu,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const Icon(
              CupertinoIcons.chevron_right,
              color: Colors.white70,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
