part of '../main.dart';

class CokiSwimmingAy2dg3calz2y {
  const CokiSwimmingAy2dg3calz2y._exhmw18clwh12xuu5prr0();

  static void pbp5sjg2i7oab6zl9h(
    BuildContext lqpxrfhim19gnc,
    String arvokwtoaraz2nqr8twl2j7c,
    {bool isError = false},
  ) {
    final aln6hy7wn9euze6ho = Overlay.of(lqpxrfhim19gnc);
    late final OverlayEntry xv7g4zaobtxrzov2eejf0;
    xv7g4zaobtxrzov2eejf0 = OverlayEntry(
      builder: (lf6vw3ymjf3k1l5uc8igcc1) => Positioned.fill(
        child: IgnorePointer(
          child: Center(
            child: Material(
              color: Colors.transparent,
              child: Container(
                constraints: const BoxConstraints(maxWidth: 280),
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                color: const Color(0xFF292249).withValues(alpha: 0.97),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: (isError
                          ? const Color(0xFFD43161)
                          : const Color(0xFF60D0EE))
                      .withValues(alpha: 0.72),
                ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 22,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      isError
                          ? Icons.info_outline_rounded
                          : Icons.check_circle_outline_rounded,
                      color: isError
                          ? const Color(0xFFD43161)
                          : const Color(0xFF60D0EE),
                      size: 21,
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: Text(
                        arvokwtoaraz2nqr8twl2j7c,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          height: 1.3,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
    aln6hy7wn9euze6ho.insert(xv7g4zaobtxrzov2eejf0);
    Timer(const Duration(seconds: 2), () {
      if (xv7g4zaobtxrzov2eejf0.mounted) {
        xv7g4zaobtxrzov2eejf0.remove();
      }
    });
  }
}
