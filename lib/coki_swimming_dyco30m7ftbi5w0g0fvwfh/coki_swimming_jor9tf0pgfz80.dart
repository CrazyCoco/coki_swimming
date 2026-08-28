part of '../main.dart';

class CokiSwimmingA4fxptkbuwklkcj2i33l extends StatefulWidget {
  const CokiSwimmingA4fxptkbuwklkcj2i33l({
    super.key,
    required this.cokiSwimmingF08193442d03983a,
  });

  final String cokiSwimmingF08193442d03983a;

  @override
  State<CokiSwimmingA4fxptkbuwklkcj2i33l> createState() =>
      _CokiSwimmingFwnd36wnnx5n();
}

class _CokiSwimmingFwnd36wnnx5n
    extends State<CokiSwimmingA4fxptkbuwklkcj2i33l> {
  int _kxr6kbqa3kht72p54q = 0;
  bool _cokiSwimming6f0fmwn95vbe5fz4cd9 = false;
  final TextEditingController _cokiSwimming52meiny979tga5wz0f =
      TextEditingController();

  @override
  void dispose() {
    _cokiSwimming52meiny979tga5wz0f.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const wd7o49946fhzr5ae7c9sjl = [
      'Harassment',
      'Malicious fraud',
      'Pornography',
      'Malicious insults',
      'False Information',
    ];
    return CokiSwimmingAgdqi717f62hphbv7l95r8v(
      o1wq5mwul0ckiwligeu: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 375),
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
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 28),
                      children: [
                        LayoutBuilder(
                          builder: (_, cokiSwimminguafnx84bpee2sth8gcefu) => Wrap(
                            spacing: 7,
                            runSpacing: 12,
                            children: [
                              for (
                                var ceh4efx8wauino5h = 0;
                                ceh4efx8wauino5h <
                                    wd7o49946fhzr5ae7c9sjl.length;
                                ceh4efx8wauino5h++
                              )
                                SizedBox(
                                  width:
                                      (cokiSwimminguafnx84bpee2sth8gcefu
                                              .maxWidth -
                                          7) /
                                      2,
                                  height: 115,
                                  child: CokiSwimmingKtoozpjuob7rods(
                                    kvg85l6uieobzf: BorderRadius.circular(18),
                                    gwrsyzojtp84oco1ldhaaw90: () => setState(
                                      () => _kxr6kbqa3kht72p54q =
                                          ceh4efx8wauino5h,
                                    ),
                                    v6j3bxo2dz4aevlmr: ClipRRect(
                                      borderRadius: BorderRadius.circular(18),
                                      child: ColoredBox(
                                        color: Colors.white,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 10,
                                              top: 12,
                                              right: 10,
                                              child: Text(
                                                wd7o49946fhzr5ae7c9sjl[ceh4efx8wauino5h],
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  color: Color(0xFF100A30),
                                                  fontSize: 16,
                                                  height: 1.35,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              right: 0,
                                              bottom: 0,
                                              width: 32,
                                              height: 32,
                                              child: Image.asset(
                                                _kxr6kbqa3kht72p54q ==
                                                        ceh4efx8wauino5h
                                                    ? 'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_0yofrrlvwc7pcmxr.png'
                                                    : 'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_444nghpg47ko2k02exgy2mt.png',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            if (_kxr6kbqa3kht72p54q ==
                                                ceh4efx8wauino5h)
                                              Positioned(
                                                right: 6,
                                                bottom: 6,
                                                width: 20,
                                                height: 20,
                                                child: Image.asset(
                                                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_wmcf8xso5fbdd4ziq88h.png',
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          'Supplementary description',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            height: 1.2,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          height: 103,
                          child: Stack(
                            children: [
                              TextField(
                                controller: _cokiSwimming52meiny979tga5wz0f,
                                maxLength: 150,
                                expands: true,
                                minLines: null,
                                maxLines: null,
                                textAlignVertical: TextAlignVertical.top,
                                onChanged: (_) => setState(() {}),
                                style: const TextStyle(
                                  color: Color(0xFF100A30),
                                  fontSize: 16,
                                  height: 1.35,
                                  letterSpacing: 0,
                                ),
                                decoration: InputDecoration(
                                  hintText:
                                      'Supplementary description (optional)',
                                  hintStyle: const TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 16,
                                    height: 1.35,
                                    letterSpacing: 0,
                                  ),
                                  counterText: '',
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: const EdgeInsets.fromLTRB(
                                    10,
                                    12,
                                    10,
                                    28,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide.none,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 12,
                                bottom: 10,
                                child: Text(
                                  '${_cokiSwimming52meiny979tga5wz0f.text.length}/150',
                                  style: const TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 16,
                                    height: 1.2,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                        Center(
                          child: SizedBox(
                            width: 231,
                            child: CokiSwimmingXjx1kxye89zenp9u(
                              hnhyq6y6036stosq12zx: 62,
                              t15oelyr52ys: 20,
                              vnjrt3g80paath: _cokiSwimming6f0fmwn95vbe5fz4cd9
                                  ? 'Submitting...'
                                  : 'Submit',
                              ouj1nn8u7hkigj89bhzhbjn: () async {
                                if (_cokiSwimming6f0fmwn95vbe5fz4cd9) return;
                                FocusManager.instance.primaryFocus?.unfocus();
                                setState(
                                  () => _cokiSwimming6f0fmwn95vbe5fz4cd9 = true,
                                );
                                try {
                                  await CokiSwimming4b37q42lzh8qku34.cokiSwimmingv02secrvh7rcx0z2c6(
                                    cokiSwimmingzal1b7pmwvrjchypahi7:
                                        _kxr6kbqa3kht72p54q,
                                    cokiSwimmingqw06jj5ff8mz2n8a:
                                        _cokiSwimming52meiny979tga5wz0f.text
                                            .trim(),
                                    cokiSwimming4b1f01711086cd1d:
                                        widget.cokiSwimmingF08193442d03983a,
                                  );
                                  if (!context.mounted) return;
                                  CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
                                    context,
                                    'Submitted',
                                  );
                                  Navigator.of(context).maybePop();
                                } catch (_) {
                                  if (!context.mounted) return;
                                  CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
                                    context,
                                    'Unable to submit',
                                    isError: true,
                                  );
                                } finally {
                                  if (context.mounted) {
                                    setState(
                                      () => _cokiSwimming6f0fmwn95vbe5fz4cd9 =
                                          false,
                                    );
                                  }
                                }
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
        ),
      ),
    );
  }
}
