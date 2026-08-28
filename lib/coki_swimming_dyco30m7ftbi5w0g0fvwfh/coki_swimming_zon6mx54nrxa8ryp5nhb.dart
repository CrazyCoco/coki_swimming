part of '../main.dart';

class CokiSwimmingL0m1oblkmfhf3l9516m8k extends StatefulWidget {
  const CokiSwimmingL0m1oblkmfhf3l9516m8k({
    super.key,
    required this.cokiSwimming01ce09909fbb2d6e22,
  });

  final int cokiSwimming01ce09909fbb2d6e22;

  @override
  State<CokiSwimmingL0m1oblkmfhf3l9516m8k> createState() =>
      _CokiSwimmingHjzxc8m5jr90asftbi();
}

class _CokiSwimmingHjzxc8m5jr90asftbi
    extends State<CokiSwimmingL0m1oblkmfhf3l9516m8k> {
  static const String _cokiSwimming1505a4e8133618060e4 =
      'coki_swimming_09f0ac088be177d6e083';
  final TextEditingController _zepyp29k0dt8d527 = TextEditingController();
  String? _cokiSwimming6c0fc3c1fe050c3;
  bool _cokiSwimmingD39ff568259d4e51fd5dff56 = false;
  bool _cokiSwimming3v8m1q6x9p2k7r4t5n0h = false;

  Future<void> _cokiSwimmingA892faf3d317709cc461e5() async {
    if (_cokiSwimmingD39ff568259d4e51fd5dff56) return;
    final cokiSwimmingD6d48892a6e5b5cb9d1a8 =
        await CokiSwimmingRtwym9wmdetuorto7.uxp9wn4bxdjeda(context);
    if (cokiSwimmingD6d48892a6e5b5cb9d1a8 == null || !mounted) return;
    setState(() => _cokiSwimmingD39ff568259d4e51fd5dff56 = true);
    final cokiSwimmingA0b455952f98 = await CokiSwimmingMoqf2x4lzqna5nuxmxu1rah5
        .j0gecuushzrwcqffsejytl
        .cokiSwimming488f8713dd7e51e30aae(cokiSwimmingD6d48892a6e5b5cb9d1a8);
    if (!mounted) return;
    setState(() => _cokiSwimmingD39ff568259d4e51fd5dff56 = false);
    switch (cokiSwimmingA0b455952f98.s8ino37cgs5urhavq3k) {
      case CokiSwimmingAgu703r90i4rdun9b8a07eu1.zbp3eniyd720ii:
        setState(
          () => _cokiSwimming6c0fc3c1fe050c3 =
              cokiSwimmingA0b455952f98.cl6shvp4miod1vh,
        );
        break;
      case CokiSwimmingAgu703r90i4rdun9b8a07eu1.i6phxpwdk2a3a6kl3hcrj:
        break;
      case CokiSwimmingAgu703r90i4rdun9b8a07eu1.xfylbv3f69742tgubgsh:
        CokiSwimmingR7qb20p0rwuw7.dl5fmb2io0o4apao43(
          context,
          aushougwjesw3a58m7ka: 'Media permission',
        );
        break;
      case CokiSwimmingAgu703r90i4rdun9b8a07eu1.hhjze8rpndgpsp3t8nfyaia:
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          'Camera, photo, and microphone permission may be required',
          isError: true,
        );
        break;
      case CokiSwimmingAgu703r90i4rdun9b8a07eu1.ml7v6nhg8apanpou1b92nq:
      case CokiSwimmingAgu703r90i4rdun9b8a07eu1.lbqeawmbjqjbyellb:
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          'Unable to select video',
          isError: true,
        );
        break;
    }
  }

  Future<void> _cokiSwimmingFd0c33c0ccb24525d0() async {
    if (_cokiSwimming3v8m1q6x9p2k7r4t5n0h) return;
    final cokiSwimmingAff9f20e7c004b50b3 = _cokiSwimming6c0fc3c1fe050c3;
    if (cokiSwimmingAff9f20e7c004b50b3 == null) {
      CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
        context,
        'Please choose a video',
        isError: true,
      );
      return;
    }
    FocusScope.of(context).unfocus();
    setState(() => _cokiSwimming3v8m1q6x9p2k7r4t5n0h = true);
    String? cokiSwimming84ba9996456e58e0;
    try {
      cokiSwimming84ba9996456e58e0 = await CokiSwimmingMoqf2x4lzqna5nuxmxu1rah5
          .j0gecuushzrwcqffsejytl
          .cokiSwimming4f02cccd10f0e6f51e(
            cokiSwimming0201c617085ad8e2: cokiSwimmingAff9f20e7c004b50b3,
            cokiSwimmingF829cc4fef9408bb: widget.cokiSwimming01ce09909fbb2d6e22,
          );
      final cokiSwimmingC01a143458d5 = await CokiSwimmingDatabase
          .hxjpjp7w6ojq86l4ddyhf
          .cokiSwimming08fc79df5890845d(
            cokiSwimmingFfdff4098f67dc2a39b:
                widget.cokiSwimming01ce09909fbb2d6e22,
            cokiSwimming9ca085a1e9464611db57745:
                cokiSwimmingEe949f348e3201ebf685,
            cokiSwimming756b8fe9fc667a: _cokiSwimming1505a4e8133618060e4,
          );
      final cokiSwimming9c02d0fb0a78fd63 = cokiSwimmingC01a143458d5 == null
          ? <dynamic>[]
          : (jsonDecode(cokiSwimmingC01a143458d5) as List<dynamic>);
      final cokiSwimmingA1cef18f7a22346c = await CokiSwimmingDatabase
          .hxjpjp7w6ojq86l4ddyhf
          .j44e71jhd7xqhl10ryivo(widget.cokiSwimming01ce09909fbb2d6e22);
      final cokiSwimming398f434407773385 = DateTime.now();
      cokiSwimming9c02d0fb0a78fd63.insert(
        0,
        CokiSwimmingOla0gu1u5h0t2dqk0sy77kg(
          y2bm5rqs3zbbqyxivjft35:
              cokiSwimmingA1cef18f7a22346c?.displayName ?? 'Coki',
          xkczithyrycvg26pfjjmm9:
              cokiSwimmingA1cef18f7a22346c?.avatarPath ??
              'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_96c3ybdtsvgb1g.png',
          pgj8geudv74awjznrves: [cokiSwimming84ba9996456e58e0],
          jw6eiwt4zt0wuycr7q: _zepyp29k0dt8d527.text.trim(),
          b7oexxik958wc: 'Swimming',
          lrh0ljlgkvjv13o: cokiSwimmingA1cef18f7a22346c?.biography ?? '',
          dpz5ewc9dhgqc: cokiSwimming84ba9996456e58e0,
          xpgbqaoc87cxdg7jjztf: cokiSwimming84ba9996456e58e0,
          s35sepsxcpz4hg: _zepyp29k0dt8d527.text.trim(),
          cokiSwimmingD6f37ea57614705817c1:
              widget.cokiSwimming01ce09909fbb2d6e22,
          cokiSwimming33bc936a74920f8954e0:
              'coki_swimming_${cokiSwimming398f434407773385.microsecondsSinceEpoch}',
          cokiSwimming78b6e768b6acab88e197: cokiSwimming398f434407773385,
        ).cokiSwimming4e5227e43dc4c3fab6e2(),
      );
      await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
          .cokiSwimming74e8b2f70fa2f5b(
            cokiSwimming0a44fb28163763bb6ec69:
                widget.cokiSwimming01ce09909fbb2d6e22,
            cokiSwimming47e760ec313f586105: cokiSwimmingEe949f348e3201ebf685,
            cokiSwimmingDb6b0273792c060: _cokiSwimming1505a4e8133618060e4,
            cokiSwimmingC91a15fc4d8a49ccb: jsonEncode(
              cokiSwimming9c02d0fb0a78fd63,
            ),
          );
      if (!mounted) return;
      CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(context, 'Released');
      Navigator.of(context).maybePop();
    } on Object {
      if (cokiSwimming84ba9996456e58e0 != null) {
        await CokiSwimmingMoqf2x4lzqna5nuxmxu1rah5.j0gecuushzrwcqffsejytl
            .cokiSwimming7h2v9k4m8q1x6p3r5t0n(
              cokiSwimming84ba9996456e58e0,
              widget.cokiSwimming01ce09909fbb2d6e22,
            );
      }
      if (mounted) {
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          'Unable to release video',
          isError: true,
        );
      }
    } finally {
      if (mounted) {
        setState(() => _cokiSwimming3v8m1q6x9p2k7r4t5n0h = false);
      }
    }
  }

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
                        gwrsyzojtp84oco1ldhaaw90:
                            _cokiSwimmingA892faf3d317709cc461e5,
                        v6j3bxo2dz4aevlmr: Container(
                          width: 108,
                          height: 108,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(19),
                          ),
                          child: _cokiSwimmingD39ff568259d4e51fd5dff56
                              ? const CircularProgressIndicator()
                              : Icon(
                                  _cokiSwimming6c0fc3c1fe050c3 == null
                                      ? Icons.videocam_outlined
                                      : Icons.check_circle_rounded,
                                  color: _cokiSwimming6c0fc3c1fe050c3 == null
                                      ? const Color(0xFF100A30)
                                      : const Color(0xFFD43161),
                                  size: 34,
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
                    ouj1nn8u7hkigj89bhzhbjn: _cokiSwimmingFd0c33c0ccb24525d0,
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
