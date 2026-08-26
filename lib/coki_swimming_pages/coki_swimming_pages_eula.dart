part of '../main.dart';

class CokiSwimmingEulaScreen extends StatefulWidget {
  const CokiSwimmingEulaScreen({super.key, required this.onAccept});

  final Future<void> Function() onAccept;

  @override
  State<CokiSwimmingEulaScreen> createState() => _CokiSwimmingEulaScreenState();
}

class _CokiSwimmingEulaScreenState extends State<CokiSwimmingEulaScreen> {
  bool _isSaving = false;

  Future<void> _accept() async {
    if (_isSaving) return;
    setState(() => _isSaving = true);

    try {
      await widget.onAccept();
      if (!mounted) return;
      Navigator.of(context).maybePop();
    } catch (_) {
      if (!mounted) return;
      setState(() => _isSaving = false);
      CokiSwimmingToast.show(context, 'Please try again');
    }
  }

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: MediaQuery.withClampedTextScaling(
            minScaleFactor: 1,
            maxScaleFactor: 1,
            child: Stack(
              children: [
                Positioned.fill(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      const designHeight = 690.0;
                      final canvas = SizedBox(
                        width: constraints.maxWidth,
                        height: designHeight,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            const Positioned(
                              top: 42,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: Image(
                                  image: AssetImage(
                                    'coki_swimming_assets/coki_swimming_eula_panel.png',
                                  ),
                                  width: 395,
                                  height: 643,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 106,
                              left: 43,
                              right: 43,
                              child: Text(
                                'EULA',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF100A30),
                                  fontSize: 28,
                                  height: 1.1,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 161,
                              left: 43,
                              right: 43,
                              child: Text(
                                'Welcome to Coki! To make a better place,the\n'
                                'following content is not allowed in the app in\n'
                                'particular.\n\n'
                                '1. Any content about child harm,pornography\n'
                                'related detrimental to children.\n'
                                '2. Fake and harmful messages about recent\n'
                                'or current events.\n'
                                '3. Any violence,bullying content, publicly\n'
                                'promotes pornography and other content.\n\n'
                                'If we find any content including and not\n'
                                'limited to the above violations your content\n'
                                'will be deleted and account will be\n'
                                'banned.By clicking the above button,you\n'
                                'agreeto the Terms of Use and Privacy Policy',
                                softWrap: false,
                                style: TextStyle(
                                  color: Color(0xFF100A30),
                                  fontSize: 14,
                                  height: 1.42,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 516,
                              left: 77,
                              right: 76,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CokiSwimmingTap(
                                    onTap: () =>
                                        Navigator.of(context).pushNamed(
                                          CokiSwimmingRoutesPaths.termsOfUse,
                                        ),
                                    child: const Text(
                                      'Terms of Use',
                                      style: TextStyle(
                                        color: Color(0xFF100A30),
                                        fontSize: 14,
                                        height: 1.2,
                                        letterSpacing: 0,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                  CokiSwimmingTap(
                                    onTap: () =>
                                        Navigator.of(context).pushNamed(
                                          CokiSwimmingRoutesPaths.privacyPolicy,
                                        ),
                                    child: const Text(
                                      'Privacy Policy',
                                      style: TextStyle(
                                        color: Color(0xFF100A30),
                                        fontSize: 14,
                                        height: 1.2,
                                        letterSpacing: 0,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 562,
                              left: 56,
                              child: _CokiSwimmingEulaButton(
                                label: 'Cancel',
                                color: const Color(0xFFDE3265),
                                textColor: Colors.white,
                                onTap: () => Navigator.of(context).maybePop(),
                              ),
                            ),
                            Positioned(
                              top: 562,
                              right: 55,
                              child: _CokiSwimmingEulaButton(
                                label: _isSaving ? 'Saving...' : 'I agree',
                                color: const Color(0xFF58CBE9),
                                textColor: const Color(0xFF100A30),
                                onTap: _accept,
                              ),
                            ),
                          ],
                        ),
                      );

                      if (constraints.maxHeight >= designHeight) return canvas;
                      return SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: canvas,
                      );
                    },
                  ),
                ),
                Positioned(
                  left: 18,
                  top: 8,
                  child: CokiSwimmingBackButton(
                    onTap: () => Navigator.of(context).maybePop(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CokiSwimmingEulaButton extends StatelessWidget {
  const _CokiSwimmingEulaButton({
    required this.label,
    required this.color,
    required this.textColor,
    required this.onTap,
  });

  final String label;
  final Color color;
  final Color textColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(21),
      onTap: onTap,
      child: Container(
        width: 120,
        height: 41,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(21),
        ),
        child: Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: textColor,
            fontSize: 17,
            height: 1.1,
            letterSpacing: 0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
