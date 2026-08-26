part of '../main.dart';

class CokiSwimmingPolicyWebViewScreen extends StatefulWidget {
  const CokiSwimmingPolicyWebViewScreen({
    super.key,
    required this.title,
    required this.url,
  });

  final String title;
  final String url;

  @override
  State<CokiSwimmingPolicyWebViewScreen> createState() =>
      _CokiSwimmingPolicyWebViewScreenState();
}

class _CokiSwimmingPolicyWebViewScreenState
    extends State<CokiSwimmingPolicyWebViewScreen> {
  late final WebViewController _controller;
  int _loadingProgress = 0;
  bool _hasLoadError = false;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.transparent)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (progress) {
            if (!mounted) return;
            setState(() => _loadingProgress = progress);
          },
          onPageStarted: (_) {
            if (!mounted) return;
            setState(() {
              _hasLoadError = false;
              _loadingProgress = 0;
            });
          },
          onPageFinished: (_) {
            if (!mounted) return;
            setState(() => _loadingProgress = 100);
          },
          onWebResourceError: (error) {
            if (error.isForMainFrame == false || !mounted) return;
            setState(() => _hasLoadError = true);
          },
          onNavigationRequest: (request) {
            final uri = Uri.tryParse(request.url);
            if (uri?.scheme == 'https' &&
                uri?.host == CokiSwimmingNetworkConfig.officialWebsiteHost) {
              return NavigationDecision.navigate;
            }
            if (mounted) {
              CokiSwimmingToast.show(context, 'This link cannot open here');
            }
            return NavigationDecision.prevent;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
  }

  Future<void> _reload() async {
    setState(() {
      _hasLoadError = false;
      _loadingProgress = 0;
    });
    await _controller.reload();
  }

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              CokiSwimmingTopBar(
                title: widget.title,
                onReturn: () => Navigator.of(context).maybePop(),
              ),
              SizedBox(
                height: 2,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 180),
                  opacity: _loadingProgress < 100 && !_hasLoadError ? 1 : 0,
                  child: LinearProgressIndicator(
                    value: _loadingProgress / 100,
                    minHeight: 2,
                    color: const Color(0xFF58CBE9),
                    backgroundColor: Colors.white.withValues(alpha: 0.22),
                  ),
                ),
              ),
              Expanded(
                child: _hasLoadError
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
                            CokiSwimmingTap(
                              borderRadius: BorderRadius.circular(21),
                              onTap: _reload,
                              child: Container(
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
                    : WebViewWidget(controller: _controller),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
