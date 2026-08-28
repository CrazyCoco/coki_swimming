part of '../main.dart';

class CokiSwimmingR8mnila99ffuokkhv extends StatefulWidget {
  const CokiSwimmingR8mnila99ffuokkhv({
    super.key,
    required this.g3rchai2y8ha35t,
  });

  final int g3rchai2y8ha35t;

  @override
  State<CokiSwimmingR8mnila99ffuokkhv> createState() =>
      _CokiSwimmingU7ng1lsyjhkbmqued();
}

class _CokiSwimmingU7ng1lsyjhkbmqued
    extends State<CokiSwimmingR8mnila99ffuokkhv>
    with WidgetsBindingObserver {
  final TextEditingController _khs5gmnihdrn9f8wkf31x1 = TextEditingController();
  final ScrollController _x4nr5kg3ddvpfj = ScrollController();
  final FocusNode _p5mdg1hah05r1 = FocusNode();
  final DateTime _q69eycnvanejgbir = DateTime.now();
  bool _mp3dk1h84sh2l2m6j = false;
  int _rq01tnfl60uqrdvtenud4 = -1;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _p5mdg1hah05r1.addListener(_k546dsu3xqaqqaj4649nl);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _p5mdg1hah05r1.removeListener(_k546dsu3xqaqqaj4649nl);
    _khs5gmnihdrn9f8wkf31x1.dispose();
    _x4nr5kg3ddvpfj.dispose();
    _p5mdg1hah05r1.dispose();
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    _dpwmifx0x45dngcvlg();
  }

  void _k546dsu3xqaqqaj4649nl() {
    if (_p5mdg1hah05r1.hasFocus) _dpwmifx0x45dngcvlg();
  }

  Future<void> _uyqxnmuu6ewyphx8yjv() async {
    final nbghzflhyrez0 = _khs5gmnihdrn9f8wkf31x1.text.trim();
    if (nbghzflhyrez0.isEmpty || _mp3dk1h84sh2l2m6j) return;
    setState(() {
      _mp3dk1h84sh2l2m6j = true;
      _khs5gmnihdrn9f8wkf31x1.clear();
    });
    try {
      await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf.nnts9uxx2f55dwpt7j(
        deh9493eov3x17lviad9n3: widget.g3rchai2y8ha35t,
        k0tnti39j3lm3p94bdpy6: nbghzflhyrez0,
        yf0ek4jzhsdg: false,
      );
      final ou69fymhgxrxuc2w4an58 = await CokiSwimmingDatabase
          .hxjpjp7w6ojq86l4ddyhf
          .zl2ufclpn4x07aeqviowxz(widget.g3rchai2y8ha35t);
      final fs4nh3wfvvcnfj6oqhiyut0r = await CokiSwimmingT3opoirkwwdfld74guonn
          .gs1fvarhc322fsuv9x3c
          .irfwveoga9xgh7pdnd1(
            ou69fymhgxrxuc2w4an58
                .map(
                  (wv38wyxyh2oeune4w93) => CokiSwimmingK55tax5y38qxu5zk(
                    agsegkag8bbg: wv38wyxyh2oeune4w93.content,
                    sesw0ibzzglavf4o7davl6: wv38wyxyh2oeune4w93.fromGuide,
                  ),
                )
                .toList(growable: false),
          );
      await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf.nnts9uxx2f55dwpt7j(
        deh9493eov3x17lviad9n3: widget.g3rchai2y8ha35t,
        k0tnti39j3lm3p94bdpy6: fs4nh3wfvvcnfj6oqhiyut0r,
        yf0ek4jzhsdg: true,
      );
    } on CokiSwimmingUrywfs8r7iyz348utcsk8ni catch (error) {
      if (mounted) {
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          error.r7tri065phpjkzotbrqmnk,
        );
      }
    } on CokiSwimmingYouti2tr13wqsuu catch (error) {
      if (mounted) {
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          error.xxjuyqw35ly4y4,
        );
      }
    } on CokiSwimmingVgf5z8lwah8pc429uyoylrwv catch (error) {
      if (mounted) {
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          error.c4iyezrax5jry9k38j7kkbr,
        );
      }
    } catch (_) {
      if (mounted) {
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          'Unable to complete the Coki AI request. Please try again.',
        );
      }
    } finally {
      if (mounted) setState(() => _mp3dk1h84sh2l2m6j = false);
    }
  }

  void _dpwmifx0x45dngcvlg() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !_x4nr5kg3ddvpfj.hasClients) return;
      _x4nr5kg3ddvpfj.animateTo(
        _x4nr5kg3ddvpfj.position.maxScrollExtent,
        duration: const Duration(milliseconds: 260),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingAgdqi717f62hphbv7l95r8v(
      o1wq5mwul0ckiwligeu: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (lz31g8tzrc8hnx1x938, l0xl076caqf70tf97o0) {
            final n8hfsyef6ws227icu3uc = l0xl076caqf70tf97o0.maxWidth / 375;
            final pfzggd8hcun7wlb3meekb = 352 * n8hfsyef6ws227icu3uc;
            final ghohohra3troja6 = MediaQuery.viewInsetsOf(
              lz31g8tzrc8hnx1x938,
            ).bottom;

            return Stack(
              fit: StackFit.expand,
              children: [
                Positioned.fill(
                  child: CokiSwimmingBb4vxo54q8ay6fa3w(
                    iyzbn3eqestk94f2dz41: n8hfsyef6ws227icu3uc,
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: pfzggd8hcun7wlb3meekb,
                  bottom: ghohohra3troja6,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(36),
                      ),
                    ),
                    child: StreamBuilder<CokiSwimmingMember?>(
                      stream: CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
                          .qegrc7kcffpv0i(widget.g3rchai2y8ha35t),
                      builder: (hd93lgl6og7or3xw5o, izpdt0qokjqyzw29sar) {
                        final oapkk97h5aduyciafifrncu =
                            izpdt0qokjqyzw29sar.data?.avatarPath ??
                            'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_96c3ybdtsvgb1g.png';
                        return Stack(
                          children: [
                            Positioned.fill(
                              child: StreamBuilder<List<CokiSwimmingGuideLine>>(
                                stream: CokiSwimmingDatabase
                                    .hxjpjp7w6ojq86l4ddyhf
                                    .fhhdah5e3lpc0l8(widget.g3rchai2y8ha35t),
                                builder: (r4yey66yex9q0y5i, yffe7ivgxe03vmjq9) {
                                  final ny1lx3z1zbvi4qg968uh =
                                      yffe7ivgxe03vmjq9.data ?? const [];
                                  final y9wy4fkwhk2b16lxzkz5g =
                                      ny1lx3z1zbvi4qg968uh.length +
                                      1 +
                                      (_mp3dk1h84sh2l2m6j ? 1 : 0);
                                  if (_rq01tnfl60uqrdvtenud4 !=
                                      y9wy4fkwhk2b16lxzkz5g) {
                                    _rq01tnfl60uqrdvtenud4 =
                                        y9wy4fkwhk2b16lxzkz5g;
                                    _dpwmifx0x45dngcvlg();
                                  }
                                  return ListView.builder(
                                    controller: _x4nr5kg3ddvpfj,
                                    keyboardDismissBehavior:
                                        ScrollViewKeyboardDismissBehavior
                                            .onDrag,
                                    physics: const BouncingScrollPhysics(),
                                    padding: const EdgeInsets.fromLTRB(
                                      20,
                                      26,
                                      20,
                                      114,
                                    ),
                                    itemCount: y9wy4fkwhk2b16lxzkz5g,
                                    itemBuilder: (mvjjqigmeaknisys, iaf8qbv0xi41i9651v4xoyh) {
                                      if (iaf8qbv0xi41i9651v4xoyh == 0) {
                                        return _CokiSwimmingJ1sp8oo11c3e28c3q7(
                                          tedzb3ct9yhvohp4:
                                              'Hi there! I’m Coki, your AI buddy for all things swimming.',
                                          t7b2wgpma3klyd3c4am0x: true,
                                          ljvgs57go601ph: _q69eycnvanejgbir,
                                          hq63bib1zpmb93xne3:
                                              oapkk97h5aduyciafifrncu,
                                        );
                                      }
                                      final h8wksfngh2pcqisk40udc =
                                          iaf8qbv0xi41i9651v4xoyh - 1;
                                      if (h8wksfngh2pcqisk40udc ==
                                          ny1lx3z1zbvi4qg968uh.length) {
                                        return _CokiSwimmingHh5s3dvxjvsthwsrqbqmgx7(
                                          gwml3ajmqlv72edtlqfr2: DateTime.now(),
                                        );
                                      }
                                      final wh2l8p9sa8ndsj =
                                          ny1lx3z1zbvi4qg968uh[h8wksfngh2pcqisk40udc];
                                      return _CokiSwimmingJ1sp8oo11c3e28c3q7(
                                        tedzb3ct9yhvohp4:
                                            wh2l8p9sa8ndsj.content,
                                        t7b2wgpma3klyd3c4am0x:
                                            wh2l8p9sa8ndsj.fromGuide,
                                        ljvgs57go601ph:
                                            wh2l8p9sa8ndsj.createdAt,
                                        hq63bib1zpmb93xne3:
                                            oapkk97h5aduyciafifrncu,
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            Positioned(
                              left: 20,
                              right: 20,
                              bottom: 22,
                              child: _CokiSwimmingN94mjz7dbncti(
                                hfd2gg4zub0xhw1ppqzam: _khs5gmnihdrn9f8wkf31x1,
                                nbtj097oaek64fg12udey: _p5mdg1hah05r1,
                                ovheub2ldvm40ifinf: _mp3dk1h84sh2l2m6j,
                                qgw0xdeow92mawd4831v81h: _uyqxnmuu6ewyphx8yjv,
                                s0ill35cuxbmchjdr3b: _dpwmifx0x45dngcvlg,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                const Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SafeArea(
                    bottom: false,
                    child: CokiSwimmingMerb0wr4ijwluplbh(s0dnsxzte0kvc8: ''),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _CokiSwimmingJ1sp8oo11c3e28c3q7 extends StatelessWidget {
  const _CokiSwimmingJ1sp8oo11c3e28c3q7({
    required this.tedzb3ct9yhvohp4,
    required this.t7b2wgpma3klyd3c4am0x,
    required this.ljvgs57go601ph,
    required this.hq63bib1zpmb93xne3,
  });

  final String tedzb3ct9yhvohp4;
  final bool t7b2wgpma3klyd3c4am0x;
  final DateTime ljvgs57go601ph;
  final String hq63bib1zpmb93xne3;

  @override
  Widget build(BuildContext context) {
    final pspbqcja2sn0y12jf1h = Container(
      constraints: BoxConstraints(maxWidth: t7b2wgpma3klyd3c4am0x ? 265 : 192),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: t7b2wgpma3klyd3c4am0x
            ? const Color(0xFFD43161)
            : const Color(0xFF60D0EE),
        borderRadius: BorderRadius.circular(10),
      ),
      child: t7b2wgpma3klyd3c4am0x
          ? SelectableText(
              tedzb3ct9yhvohp4,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.35,
                letterSpacing: 0,
                fontWeight: FontWeight.w400,
              ),
            )
          : Text(
              tedzb3ct9yhvohp4,
              style: const TextStyle(
                color: Color(0xFF100A30),
                fontSize: 14,
                height: 1.35,
                letterSpacing: 0,
                fontWeight: FontWeight.w400,
              ),
            ),
    );

    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        children: [
          Text(
            _stnjjybmd3vleqvd(ljvgs57go601ph),
            style: const TextStyle(
              color: Color(0xFF100A30),
              fontSize: 16,
              height: 1.2,
              letterSpacing: 0,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: t7b2wgpma3klyd3c4am0x
                ? MainAxisAlignment.start
                : MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: t7b2wgpma3klyd3c4am0x
                ? [
                    Image.asset(
                      'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_anpq5yaxjdi6zogd5nyvsjuv.png',
                      width: 44,
                      height: 44,
                    ),
                    const SizedBox(width: 12),
                    Flexible(child: pspbqcja2sn0y12jf1h),
                  ]
                : [
                    Flexible(child: pspbqcja2sn0y12jf1h),
                    const SizedBox(width: 14),
                    _CokiSwimmingRzvqeas9b43d75a8uh1lr(
                      a0k4m6jz53g2ohnina369c: hq63bib1zpmb93xne3,
                    ),
                  ],
          ),
        ],
      ),
    );
  }
}

class _CokiSwimmingRzvqeas9b43d75a8uh1lr extends StatelessWidget {
  const _CokiSwimmingRzvqeas9b43d75a8uh1lr({
    required this.a0k4m6jz53g2ohnina369c,
  });

  final String a0k4m6jz53g2ohnina369c;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      padding: const EdgeInsets.all(1.5),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [Color(0xFF60D0EE), Color(0xFFAD99C2), Color(0xFFD43161)],
          stops: [0, 0.4704, 1],
        ),
      ),
      child: ClipOval(
        child: CokiSwimmingFp31kwqgnq7d7mmdubsu7(
          ebv0wnhcczmsg2ytfim3iox: a0k4m6jz53g2ohnina369c,
          mhyr7b1jr0dol34ahhd0ii9: 41,
          mjsibeo326cy1bub95ae: 41,
        ),
      ),
    );
  }
}

class _CokiSwimmingHh5s3dvxjvsthwsrqbqmgx7 extends StatelessWidget {
  const _CokiSwimmingHh5s3dvxjvsthwsrqbqmgx7({
    required this.gwml3ajmqlv72edtlqfr2,
  });

  final DateTime gwml3ajmqlv72edtlqfr2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        children: [
          Text(
            _stnjjybmd3vleqvd(gwml3ajmqlv72edtlqfr2),
            style: const TextStyle(
              color: Color(0xFF100A30),
              fontSize: 16,
              height: 1.2,
              letterSpacing: 0,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_anpq5yaxjdi6zogd5nyvsjuv.png',
                width: 44,
                height: 44,
              ),
              const SizedBox(width: 12),
              Container(
                width: 58,
                height: 44,
                decoration: BoxDecoration(
                  color: const Color(0xFFD43161),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: CupertinoActivityIndicator(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CokiSwimmingN94mjz7dbncti extends StatelessWidget {
  const _CokiSwimmingN94mjz7dbncti({
    required this.hfd2gg4zub0xhw1ppqzam,
    required this.nbtj097oaek64fg12udey,
    required this.ovheub2ldvm40ifinf,
    required this.qgw0xdeow92mawd4831v81h,
    required this.s0ill35cuxbmchjdr3b,
  });

  final TextEditingController hfd2gg4zub0xhw1ppqzam;
  final FocusNode nbtj097oaek64fg12udey;
  final bool ovheub2ldvm40ifinf;
  final VoidCallback qgw0xdeow92mawd4831v81h;
  final VoidCallback s0ill35cuxbmchjdr3b;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.fromLTRB(14, 0, 6, 0),
      decoration: BoxDecoration(
        color: const Color(0xFF60D0EE),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: hfd2gg4zub0xhw1ppqzam,
              focusNode: nbtj097oaek64fg12udey,
              enabled: !ovheub2ldvm40ifinf,
              onTap: s0ill35cuxbmchjdr3b,
              onSubmitted: (_) => qgw0xdeow92mawd4831v81h(),
              textInputAction: TextInputAction.send,
              maxLines: 1,
              cursorColor: Colors.white,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                height: 1.25,
                letterSpacing: 0,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                hintText: ovheub2ldvm40ifinf
                    ? 'Coki is thinking...'
                    : 'Say something',
                hintStyle: TextStyle(
                  color: Colors.white.withValues(alpha: 0.96),
                  fontSize: 16,
                  height: 1.25,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
                border: InputBorder.none,
                isCollapsed: true,
              ),
            ),
          ),
          CokiSwimmingKtoozpjuob7rods(
            kvg85l6uieobzf: BorderRadius.circular(22),
            gwrsyzojtp84oco1ldhaaw90: ovheub2ldvm40ifinf
                ? () {}
                : qgw0xdeow92mawd4831v81h,
            v6j3bxo2dz4aevlmr: SizedBox(
              width: 44,
              height: 44,
              child: Center(
                child: ovheub2ldvm40ifinf
                    ? const CupertinoActivityIndicator(color: Colors.white)
                    : Image.asset(
                        'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_vc5th133qh4ol4ek56u.png',
                        width: 24,
                        height: 24,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String _stnjjybmd3vleqvd(DateTime hj59tlg83jyjlmgs5yveywd) {
  final zt4tobvvyx2qbrp = hj59tlg83jyjlmgs5yveywd.hour.toString().padLeft(
    2,
    '0',
  );
  final rxpa5mrva84e39ec83a = hj59tlg83jyjlmgs5yveywd.minute.toString().padLeft(
    2,
    '0',
  );
  return '$zt4tobvvyx2qbrp:$rxpa5mrva84e39ec83a';
}
