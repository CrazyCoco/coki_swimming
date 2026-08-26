part of '../main.dart';

class CokiSwimmingWelcomeScreen extends StatefulWidget {
  const CokiSwimmingWelcomeScreen({
    super.key,
    required this.hasAcceptedEula,
    required this.onVisitorMode,
  });

  final bool hasAcceptedEula;
  final VoidCallback onVisitorMode;

  @override
  State<CokiSwimmingWelcomeScreen> createState() =>
      _CokiSwimmingWelcomeScreenState();
}

class _CokiSwimmingWelcomeScreenState extends State<CokiSwimmingWelcomeScreen> {
  bool _isAgreementOn = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || widget.hasAcceptedEula) return;
      Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.eula);
    });
  }

  void _enter(VoidCallback action) {
    if (!_isAgreementOn) {
      CokiSwimmingAgreementPrompt.show(context);
      return;
    }
    if (!widget.hasAcceptedEula) {
      Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.eula);
      return;
    }
    action();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF100A30),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'coki_swimming_assets/coki_swimming_login_home_bg.png',
            fit: BoxFit.cover,
          ),
          SafeArea(
            bottom: false,
            child: Stack(
              children: [
                Positioned(
                  left: 26,
                  top: 11,
                  child: Image.asset(
                    'coki_swimming_assets/coki_swimming_welcome_mark.png',
                    width: 97,
                    height: 97,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  right: 25,
                  top: 34,
                  child: CokiSwimmingTap(
                    borderRadius: BorderRadius.circular(15),
                    onTap: () => Navigator.of(
                      context,
                    ).pushNamed(CokiSwimmingRoutesPaths.eula),
                    child: Image.asset(
                      'coki_swimming_assets/coki_swimming_eula_button.png',
                      width: 61,
                      height: 31,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 235,
            child: Center(
              child: SizedBox(
                width: 229,
                child: CokiSwimmingTap(
                  borderRadius: BorderRadius.circular(31),
                  onTap: () => _enter(
                    () => Navigator.of(
                      context,
                    ).pushNamed(CokiSwimmingRoutesPaths.access),
                  ),
                  child: Container(
                    height: 62,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF5AC9E6),
                      borderRadius: BorderRadius.circular(31),
                    ),
                    child: const Text(
                      'Login by email',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        height: 1.2,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 154,
            child: Center(
              child: SizedBox(
                width: 229,
                child: CokiSwimmingTap(
                  borderRadius: BorderRadius.circular(31),
                  onTap: () => _enter(() {
                    widget.onVisitorMode();
                    Navigator.of(
                      context,
                    ).pushReplacementNamed(CokiSwimmingRoutesPaths.hub);
                  }),
                  child: Container(
                    height: 62,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF100A30),
                      borderRadius: BorderRadius.circular(31),
                    ),
                    child: const Text(
                      "I'm new",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        height: 1.2,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 94,
            child: CokiSwimmingTap(
              onTap: () => _enter(
                () => Navigator.of(
                  context,
                ).pushNamed(CokiSwimmingRoutesPaths.signup),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "Don't have an account? "),
                      TextSpan(
                        text: 'Sign up',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.25,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 22,
            right: 18,
            bottom: 17,
            child: SizedBox(
              height: 44,
              child: Row(
                children: [
                  CokiSwimmingTap(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () =>
                        setState(() => _isAgreementOn = !_isAgreementOn),
                    child: SizedBox(
                      width: 27,
                      height: 44,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          _isAgreementOn
                              ? 'coki_swimming_assets/coki_swimming_agreement_on.png'
                              : 'coki_swimming_assets/coki_swimming_agreement_idle.png',
                          width: 19,
                          height: 19,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Agree with ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      height: 1.2,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  CokiSwimmingTap(
                    onTap: () => Navigator.of(
                      context,
                    ).pushNamed(CokiSwimmingRoutesPaths.termsOfUse),
                    child: const Text(
                      'Agreement',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        height: 1.2,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                      ),
                    ),
                  ),
                  const Text(
                    ' and ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      height: 1.2,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: CokiSwimmingTap(
                        onTap: () => Navigator.of(
                          context,
                        ).pushNamed(CokiSwimmingRoutesPaths.privacyPolicy),
                        child: const Text(
                          'Privacy Policy',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            height: 1.2,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
