part of '../main.dart';

class CokiSwimmingSm8cok7886zzso2y43xcpl extends StatefulWidget {
  const CokiSwimmingSm8cok7886zzso2y43xcpl({
    super.key,
    required this.zfpn7bnd2x9vv8s9,
    required this.inwvge275iqmny8,
  });

  final String zfpn7bnd2x9vv8s9;
  final String inwvge275iqmny8;

  @override
  State<CokiSwimmingSm8cok7886zzso2y43xcpl> createState() =>
      _CokiSwimmingJty702351a0h();
}

class _CokiSwimmingJty702351a0h
    extends State<CokiSwimmingSm8cok7886zzso2y43xcpl> {
  late final WebViewController _ez964seqetore16;
  int _g510wwufgijr = 0;
  bool _f2ksi1hd07jnxs = false;

  @override
  void initState() {
    super.initState();
    _ez964seqetore16 = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.transparent)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (ydyrcvevn96lf346) {
            if (!mounted) return;
            setState(() => _g510wwufgijr = ydyrcvevn96lf346);
          },
          onPageStarted: (_) {
            if (!mounted) return;
            setState(() {
              _f2ksi1hd07jnxs = false;
              _g510wwufgijr = 0;
            });
          },
          onPageFinished: (_) {
            if (!mounted) return;
            setState(() => _g510wwufgijr = 100);
          },
          onWebResourceError: (bekui9u8fvigxbl) {
            if (bekui9u8fvigxbl.isForMainFrame == false || !mounted) return;
            setState(() => _f2ksi1hd07jnxs = true);
          },
          onNavigationRequest: (xdapb8860fmfqmc9g7) {
            final glk9a9gxnxr2zrxz1paz = Uri.tryParse(xdapb8860fmfqmc9g7.url);
            if (glk9a9gxnxr2zrxz1paz?.scheme == 'https' &&
                glk9a9gxnxr2zrxz1paz?.host ==
                    CokiSwimmingCzkz7i7pmb2hdjcc1lhpe.swnzyd0fiw16fwqkmzie4l) {
              return NavigationDecision.navigate;
            }
            if (mounted) {
              CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
                context,
                'This link cannot open here',
              );
            }
            return NavigationDecision.prevent;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.inwvge275iqmny8));
  }

  Future<void> _r16n2z6cl2880que9swuh028() async {
    setState(() {
      _f2ksi1hd07jnxs = false;
      _g510wwufgijr = 0;
    });
    await _ez964seqetore16.reload();
  }

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingAgdqi717f62hphbv7l95r8v(
      o1wq5mwul0ckiwligeu: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              CokiSwimmingMerb0wr4ijwluplbh(
                s0dnsxzte0kvc8: widget.zfpn7bnd2x9vv8s9,
                g8kedxcwq3kcsth35qz8: () => Navigator.of(context).maybePop(),
              ),
              SizedBox(
                height: 2,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 180),
                  opacity: _g510wwufgijr < 100 && !_f2ksi1hd07jnxs ? 1 : 0,
                  child: LinearProgressIndicator(
                    value: _g510wwufgijr / 100,
                    minHeight: 2,
                    color: const Color(0xFF58CBE9),
                    backgroundColor: Colors.white.withValues(alpha: 0.22),
                  ),
                ),
              ),
              Expanded(
                child: _f2ksi1hd07jnxs
                    ? Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.wifi_off_rounded,
                              color: Colors.white,
                              size: 42,
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              'Unable to load page',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                height: 1.2,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const SizedBox(height: 18),
                            CokiSwimmingKtoozpjuob7rods(
                              kvg85l6uieobzf: BorderRadius.circular(21),
                              gwrsyzojtp84oco1ldhaaw90:
                                  _r16n2z6cl2880que9swuh028,
                              v6j3bxo2dz4aevlmr: Container(
                                height: 42,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 24,
                                ),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF58CBE9),
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                child: const Text(
                                  'Retry',
                                  style: TextStyle(
                                    color: Color(0xFF100A30),
                                    fontSize: 16,
                                    height: 1.2,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : WebViewWidget(controller: _ez964seqetore16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
