part of '../main.dart';

class CokiSwimmingCompanionScreen extends StatefulWidget {
  const CokiSwimmingCompanionScreen({super.key, required this.memberId});

  final int? memberId;

  @override
  State<CokiSwimmingCompanionScreen> createState() =>
      _CokiSwimmingCompanionScreenState();
}

class _CokiSwimmingCompanionScreenState
    extends State<CokiSwimmingCompanionScreen> {
  static const int _entryCost = 100;

  bool _checkingAccess = false;

  Future<void> _openDialogue() async {
    final memberId = widget.memberId;
    if (memberId == null) {
      CokiSwimmingLoginPrompt.show(context);
      return;
    }
    if (_checkingAccess) return;
    _checkingAccess = true;
    try {
      final member = await CokiSwimmingDatabase.instance.memberById(memberId);
      if (!mounted) return;
      if (member == null) {
        CokiSwimmingLoginPrompt.show(context);
        return;
      }
      if (member.coinBalance < _entryCost) {
        await CokiSwimmingGuideEntryPrompt.showInsufficient(
          context,
          member.coinBalance,
        );
        return;
      }

      final confirmed = await CokiSwimmingGuideEntryPrompt.confirm(
        context,
        member.coinBalance,
      );
      if (!confirmed || !mounted) return;

      final consumed = await CokiSwimmingDatabase.instance.consumeGuideAccess(
        memberId: memberId,
        quantity: _entryCost,
      );
      if (!mounted) return;
      if (!consumed) {
        final latest = await CokiSwimmingDatabase.instance.memberById(memberId);
        if (!mounted) return;
        await CokiSwimmingGuideEntryPrompt.showInsufficient(
          context,
          latest?.coinBalance ?? 0,
        );
        return;
      }
      if (!mounted) return;
      await Navigator.of(
        context,
      ).pushNamed(CokiSwimmingRoutesPaths.guideDialogue);
    } on CokiSwimmingStorageException catch (error) {
      if (mounted) CokiSwimmingToast.show(context, error.message);
    } catch (_) {
      if (mounted) {
        CokiSwimmingToast.show(
          context,
          'Unable to enter Coki AI. Please try again.',
        );
      }
    } finally {
      _checkingAccess = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: LayoutBuilder(
          builder: (context, constraints) {
            final designScale = constraints.maxWidth / 375;
            final panelTop = 352 * designScale;

            return Stack(
              fit: StackFit.expand,
              children: [
                Positioned.fill(
                  child: CokiSwimmingGuideHeader(designScale: designScale),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: panelTop,
                  bottom: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(36),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            padding: EdgeInsets.fromLTRB(
                              29,
                              20,
                              29,
                              MediaQuery.paddingOf(context).bottom + 119,
                            ),
                            child: const Column(
                              children: [
                                Text(
                                  'Coki AI',
                                  style: TextStyle(
                                    color: Color(0xFF100A30),
                                    fontSize: 26,
                                    height: 1.2,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Hi! I’m Coki, your friendly AI companion\n'
                                  'here to chat about all things swimming.\n'
                                  "Whether you're a beginner, a seasoned\n"
                                  'swimmer, or just love the water, I’m here to\n'
                                  'explore techniques, share tips, and keep\n'
                                  'the conversation inspiring and fun. Ready\n'
                                  'to dive into the world of swimming\n'
                                  'together? Let’s talk and make a splash\n'
                                  'every day!',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF100A30),
                                    fontSize: 16,
                                    height: 1.85,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 29,
                          right: 29,
                          bottom: MediaQuery.paddingOf(context).bottom + 20,
                          child: Center(
                            child: _CokiSwimmingCompanionActionButton(
                              onTap: _openDialogue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SafeArea(
                    bottom: false,
                    child: CokiSwimmingTopBar(title: ''),
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

class _CokiSwimmingCompanionActionButton extends StatelessWidget {
  const _CokiSwimmingCompanionActionButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 281,
      height: 62,
      child: CokiSwimmingTap(
        borderRadius: BorderRadius.circular(31),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(31),
            gradient: const LinearGradient(
              colors: [Color(0xFF60D0EE), Color(0xFFD43161)],
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'coki_swimming_assets/coki_swimming_vault_coin.png',
                      width: 29,
                      height: 29,
                    ),
                    const SizedBox(width: 13),
                    const Text(
                      '100',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        height: 1,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'coki_swimming_assets/coki_swimming_companion_action.png',
                width: 79,
                height: 42,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
