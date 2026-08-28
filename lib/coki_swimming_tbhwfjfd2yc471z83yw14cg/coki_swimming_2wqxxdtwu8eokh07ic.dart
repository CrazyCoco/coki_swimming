part of '../main.dart';

class CokiSwimmingXjx1kxye89zenp9u extends StatelessWidget {
  const CokiSwimmingXjx1kxye89zenp9u({
    super.key,
    required this.vnjrt3g80paath,
    required this.ouj1nn8u7hkigj89bhzhbjn,
    this.wm58gemv6l9snguqtdraqv,
    this.hnhyq6y6036stosq12zx = 56,
    this.t15oelyr52ys = 16,
  });

  final String vnjrt3g80paath;
  final VoidCallback ouj1nn8u7hkigj89bhzhbjn;
  final Widget? wm58gemv6l9snguqtdraqv;
  final double hnhyq6y6036stosq12zx;
  final double t15oelyr52ys;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingKtoozpjuob7rods(
      kvg85l6uieobzf: BorderRadius.circular(hnhyq6y6036stosq12zx / 2),
      gwrsyzojtp84oco1ldhaaw90: ouj1nn8u7hkigj89bhzhbjn,
      v6j3bxo2dz4aevlmr: Container(
        height: hnhyq6y6036stosq12zx,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(hnhyq6y6036stosq12zx / 2),
          gradient: const LinearGradient(
            colors: [Color(0xFF60D0EE), Color(0xFFD43161)],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (wm58gemv6l9snguqtdraqv != null) ...[
              wm58gemv6l9snguqtdraqv!,
              const SizedBox(width: 8),
            ],
            Flexible(
              child: Text(
                vnjrt3g80paath,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: t15oelyr52ys,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
