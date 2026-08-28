part of '../main.dart';

class CokiSwimmingA4fxptkbuwklkcj2i33l extends StatefulWidget {
  const CokiSwimmingA4fxptkbuwklkcj2i33l({super.key});

  @override
  State<CokiSwimmingA4fxptkbuwklkcj2i33l> createState() =>
      _CokiSwimmingFwnd36wnnx5n();
}

class _CokiSwimmingFwnd36wnnx5n
    extends State<CokiSwimmingA4fxptkbuwklkcj2i33l> {
  int _kxr6kbqa3kht72p54q = 0;

  @override
  Widget build(BuildContext context) {
    const wd7o49946fhzr5ae7c9sjl = [
      'Harassment',
      'Malicious fraud',
      'Pornography',
      'Malicious insults',
      'False information',
    ];
    return CokiSwimmingAgdqi717f62hphbv7l95r8v(
      o1wq5mwul0ckiwligeu: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: [
              const CokiSwimmingMerb0wr4ijwluplbh(s0dnsxzte0kvc8: ''),
              Expanded(
                child: ListView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  padding: const EdgeInsets.fromLTRB(16, 18, 16, 24),
                  children: [
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        for (
                          var ceh4efx8wauino5h = 0;
                          ceh4efx8wauino5h < wd7o49946fhzr5ae7c9sjl.length;
                          ceh4efx8wauino5h++
                        )
                          SizedBox(
                            width: (MediaQuery.sizeOf(context).width - 44) / 2,
                            child: CokiSwimmingKtoozpjuob7rods(
                              kvg85l6uieobzf: BorderRadius.circular(8),
                              gwrsyzojtp84oco1ldhaaw90: () => setState(
                                () => _kxr6kbqa3kht72p54q = ceh4efx8wauino5h,
                              ),
                              v6j3bxo2dz4aevlmr: Container(
                                height: 70,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border:
                                      _kxr6kbqa3kht72p54q == ceh4efx8wauino5h
                                      ? Border.all(
                                          color: const Color(0xFFD43161),
                                          width: 2,
                                        )
                                      : null,
                                ),
                                child: Text(
                                  wd7o49946fhzr5ae7c9sjl[ceh4efx8wauino5h],
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Color(0xFF100A30),
                                    fontSize: 13,
                                    height: 1.3,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 28),
                    const Text(
                      'Supplementary description',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        height: 1.2,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const CokiSwimmingZuuwxu55t33tt(),
                    const SizedBox(height: 72),
                    Center(
                      child: SizedBox(
                        width: 190,
                        child: CokiSwimmingXjx1kxye89zenp9u(
                          vnjrt3g80paath: 'Submit',
                          ouj1nn8u7hkigj89bhzhbjn: () {
                            CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
                              context,
                              'Submitted',
                            );
                            Navigator.of(context).maybePop();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
