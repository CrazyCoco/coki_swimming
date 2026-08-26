part of '../main.dart';

class CokiSwimmingEulaScreen extends StatefulWidget {
  const CokiSwimmingEulaScreen({super.key, required this.onAccept});

  final Future<void> Function() onAccept;

  @override
  State<CokiSwimmingEulaScreen> createState() => _CokiSwimmingEulaScreenState();
}

class _CokiSwimmingEulaScreenState extends State<CokiSwimmingEulaScreen> {
  bool _isSaving = false;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              CokiSwimmingTopBar(
                title: '',
                onReturn: () => Navigator.of(context).maybePop(),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    width: 318,
                    padding: const EdgeInsets.fromLTRB(24, 34, 24, 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(
                            0xFFD43161,
                          ).withValues(alpha: 0.34),
                          blurRadius: 28,
                          offset: const Offset(0, 12),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'EULA',
                          style: TextStyle(
                            color: Color(0xFF100A30),
                            fontSize: 28,
                            height: 1.1,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(height: 18),
                        const Text(
                          'Welcome to Coki! To make a better place, the following content is not allowed in the app in particular.\n\n1. Any content about child harm, pornography related detrimental to children.\n2. Fake and harmful messages about recent or current events.\n3. Any violence, bullying content, publicly promotes pornography and other content.\n\nIf we find any content including and not limited to the above violations your content will be deleted and account will be banned. By clicking the above button, you agree to the Terms of Use and Privacy Policy.',
                          style: TextStyle(
                            color: Color(0xFF100A30),
                            fontSize: 11,
                            height: 1.38,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 23),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Terms of Use',
                              style: TextStyle(
                                color: Color(0xFF100A30),
                                fontSize: 11,
                                letterSpacing: 0,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            SizedBox(width: 38),
                            Text(
                              'Privacy Policy',
                              style: TextStyle(
                                color: Color(0xFF100A30),
                                fontSize: 11,
                                letterSpacing: 0,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 18),
                        Row(
                          children: [
                            Expanded(
                              child: CokiSwimmingSmallPill(
                                label: 'Cancel',
                                color: const Color(0xFFD43161),
                                onTap: () => Navigator.of(context).maybePop(),
                              ),
                            ),
                            const SizedBox(width: 14),
                            Expanded(
                              child: CokiSwimmingSmallPill(
                                label: _isSaving ? 'Saving...' : 'I agree',
                                color: const Color(0xFF60D0EE),
                                onTap: () async {
                                  if (_isSaving) return;
                                  setState(() => _isSaving = true);
                                  try {
                                    await widget.onAccept();
                                    if (!context.mounted) return;
                                    Navigator.of(context).maybePop();
                                  } catch (_) {
                                    if (!context.mounted) return;
                                    setState(() => _isSaving = false);
                                    CokiSwimmingToast.show(
                                      context,
                                      'Please try again',
                                    );
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
