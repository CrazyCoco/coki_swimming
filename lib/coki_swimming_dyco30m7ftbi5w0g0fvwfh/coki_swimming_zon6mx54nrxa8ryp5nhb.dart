part of '../main.dart';

class CokiSwimmingL0m1oblkmfhf3l9516m8k extends StatefulWidget {
  const CokiSwimmingL0m1oblkmfhf3l9516m8k({super.key});

  @override
  State<CokiSwimmingL0m1oblkmfhf3l9516m8k> createState() =>
      _CokiSwimmingHjzxc8m5jr90asftbi();
}

class _CokiSwimmingHjzxc8m5jr90asftbi
    extends State<CokiSwimmingL0m1oblkmfhf3l9516m8k> {
  final TextEditingController _zepyp29k0dt8d527 = TextEditingController();

  @override
  void dispose() {
    _zepyp29k0dt8d527.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingAgdqi717f62hphbv7l95r8v(
      o1wq5mwul0ckiwligeu: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: [
              const CokiSwimmingMerb0wr4ijwluplbh(
                s0dnsxzte0kvc8: '',
                qmcu1oqyli7x1: 18,
              ),
              Expanded(
                child: ListView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
                  children: [
                    SizedBox(
                      height: 174,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: TextField(
                              controller: _zepyp29k0dt8d527,
                              expands: true,
                              minLines: null,
                              maxLines: null,
                              maxLength: 150,
                              textAlignVertical: TextAlignVertical.top,
                              onChanged: (_) => setState(() {}),
                              style: const TextStyle(
                                color: Color(0xFF100A30),
                                fontSize: 16,
                                height: 1.4,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Please enter',
                                hintStyle: TextStyle(
                                  color: const Color(
                                    0xFF100A30,
                                  ).withValues(alpha: 0.42),
                                  fontSize: 16,
                                  height: 1.4,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w400,
                                ),
                                counterText: '',
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: const EdgeInsets.fromLTRB(
                                  12,
                                  13,
                                  12,
                                  36,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 13,
                            bottom: 12,
                            child: IgnorePointer(
                              child: Text(
                                '${_zepyp29k0dt8d527.text.characters.length}/150',
                                style: TextStyle(
                                  color: const Color(
                                    0xFF100A30,
                                  ).withValues(alpha: 0.42),
                                  fontSize: 16,
                                  height: 1.2,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 27),
                    const Text(
                      'Upload  (video)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        height: 1.2,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CokiSwimmingKtoozpjuob7rods(
                        kvg85l6uieobzf: BorderRadius.circular(19),
                        gwrsyzojtp84oco1ldhaaw90: () =>
                            CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
                              context,
                              'Select a source',
                            ),
                        v6j3bxo2dz4aevlmr: Container(
                          width: 108,
                          height: 108,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(19),
                          ),
                          child: Image.asset(
                            'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_lbrxbt89w0nhi1d8bqlqtazx.png',
                            width: 32,
                            height: 32,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 45),
                child: SizedBox(
                  width: 230,
                  child: CokiSwimmingXjx1kxye89zenp9u(
                    vnjrt3g80paath: 'Release',
                    hnhyq6y6036stosq12zx: 62,
                    t15oelyr52ys: 22,
                    ouj1nn8u7hkigj89bhzhbjn: () {
                      CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
                        context,
                        'Released',
                      );
                      Navigator.of(context).maybePop();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
