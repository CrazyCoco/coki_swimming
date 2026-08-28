part of '../main.dart';

class CokiSwimmingMerb0wr4ijwluplbh extends StatelessWidget {
  const CokiSwimmingMerb0wr4ijwluplbh({
    super.key,
    required this.s0dnsxzte0kvc8,
    this.lskvnnccdz4ydamm7kaisw1e,
    this.g8kedxcwq3kcsth35qz8,
    this.zv3pb7zca5gwmbo04be91cg0 = false,
    this.qmcu1oqyli7x1 = 15,
    this.hl27sqlc2hmj68k8xlm4 = true,
    this.t9tn1eyxnipqp842ozhiecw = false,
    this.d1yfqjrxzg71hi7gpb8 = true,
  });

  final String s0dnsxzte0kvc8;
  final Widget? lskvnnccdz4ydamm7kaisw1e;
  final VoidCallback? g8kedxcwq3kcsth35qz8;
  final bool zv3pb7zca5gwmbo04be91cg0;
  final double qmcu1oqyli7x1;
  final bool hl27sqlc2hmj68k8xlm4;
  final bool t9tn1eyxnipqp842ozhiecw;
  final bool d1yfqjrxzg71hi7gpb8;

  @override
  Widget build(BuildContext context) {
    final z0bzcgx0u3py8iawyja315b6 = Text(
      s0dnsxzte0kvc8,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textAlign: t9tn1eyxnipqp842ozhiecw ? TextAlign.center : TextAlign.start,
      style: TextStyle(
        color: zv3pb7zca5gwmbo04be91cg0
            ? const Color(0xFF100A30)
            : Colors.white,
        fontSize: 20,
        height: 1.2,
        letterSpacing: 0,
        fontWeight: FontWeight.w900,
      ),
    );
    final t30rg2jz0ib31ao = d1yfqjrxzg71hi7gpb8
        ? CokiSwimmingEv4ct2qk7zro(
            s0dnsxzte0kvc8,
            ik73w3yfizzr: t9tn1eyxnipqp842ozhiecw
                ? TextAlign.center
                : TextAlign.start,
            hi4ae102r25lkc3: z0bzcgx0u3py8iawyja315b6.style!,
          )
        : z0bzcgx0u3py8iawyja315b6;

    return Padding(
      padding: EdgeInsets.fromLTRB(qmcu1oqyli7x1, 8, qmcu1oqyli7x1, 0),
      child: t9tn1eyxnipqp842ozhiecw
          ? Stack(
              alignment: Alignment.center,
              children: [
                if (s0dnsxzte0kvc8.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 52),
                    child: t30rg2jz0ib31ao,
                  ),
                Row(
                  children: [
                    if (hl27sqlc2hmj68k8xlm4)
                      CokiSwimmingCsp12jwqwwjk3wya4y1(
                        detib9wx0a7eitw2731u4e:
                            g8kedxcwq3kcsth35qz8 ??
                            () => Navigator.of(context).maybePop(),
                      ),
                    const Spacer(),
                    ?lskvnnccdz4ydamm7kaisw1e,
                  ],
                ),
              ],
            )
          : Row(
              children: [
                if (hl27sqlc2hmj68k8xlm4)
                  CokiSwimmingCsp12jwqwwjk3wya4y1(
                    detib9wx0a7eitw2731u4e:
                        g8kedxcwq3kcsth35qz8 ??
                        () => Navigator.of(context).maybePop(),
                  ),
                if (s0dnsxzte0kvc8.isNotEmpty) ...[
                  if (hl27sqlc2hmj68k8xlm4) const SizedBox(width: 12),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: t30rg2jz0ib31ao,
                    ),
                  ),
                ] else
                  const Spacer(),
                ?lskvnnccdz4ydamm7kaisw1e,
              ],
            ),
    );
  }
}
