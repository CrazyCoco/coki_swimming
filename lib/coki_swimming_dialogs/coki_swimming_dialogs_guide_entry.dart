part of '../main.dart';

class CokiSwimmingGuideEntryPrompt {
  const CokiSwimmingGuideEntryPrompt._();

  static Future<bool> confirm(BuildContext context, int currentBalance) async {
    final accepted = await showGeneralDialog<bool>(
      context: context,
      barrierDismissible: false,
      barrierLabel: 'Enter Coki AI',
      barrierColor: Colors.black.withValues(alpha: 0.55),
      pageBuilder: (context, _, _) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Center(
          child: _CokiSwimmingDialogPanel(
            title: 'Enter Coki AI?',
            detail:
                'This entry costs 100 coins. Your current balance is $currentBalance.',
            actionLabel: 'Enter',
            onAction: () => Navigator.of(context).pop(true),
          ),
        ),
      ),
    );
    return accepted ?? false;
  }

  static Future<void> showInsufficient(
    BuildContext context,
    int currentBalance,
  ) {
    final navigator = Navigator.of(context);
    return showGeneralDialog<void>(
      context: context,
      barrierDismissible: false,
      barrierLabel: 'Insufficient balance',
      barrierColor: Colors.black.withValues(alpha: 0.55),
      pageBuilder: (context, _, _) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Center(
          child: _CokiSwimmingInsufficientGuidePanel(
            currentBalance: currentBalance,
            onAction: () {
              navigator.pop();
              navigator.pushNamed(CokiSwimmingRoutesPaths.vault);
            },
          ),
        ),
      ),
    );
  }
}

class _CokiSwimmingInsufficientGuidePanel extends StatelessWidget {
  const _CokiSwimmingInsufficientGuidePanel({
    required this.currentBalance,
    required this.onAction,
  });

  final int currentBalance;
  final VoidCallback onAction;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final panelWidth = math.min(329.0, screenWidth - 24);
    final panelHeight = panelWidth * 1149 / 987;
    final scale = panelWidth / 329;

    return Semantics(
      label:
          'Sorry, your current balance is insufficient. Current balance is $currentBalance.',
      child: Material(
        color: Colors.transparent,
        child: SizedBox(
          width: panelWidth,
          height: panelHeight,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned.fill(
                child: Image.asset(
                  'coki_swimming_assets/coki_swimming_water_portrait.png',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'coki_swimming_assets/coki_swimming_vault_coin.png',
                        width: 66 * scale,
                        height: 64 * scale,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 11 * scale),
                      SizedBox(
                        width: 233 * scale,
                        child: Text(
                          'Sorry',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25 * scale,
                            height: 1.12,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(height: 15 * scale),
                      SizedBox(
                        width: 225 * scale,
                        child: Text(
                          'your current balance\nis insufficient',
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16 * scale,
                            height: 1.45,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 20 * scale),
                      SizedBox(
                        width: 166 * scale,
                        height: 57 * scale,
                        child: CokiSwimmingTap(
                          borderRadius: BorderRadius.circular(29 * scale),
                          onTap: onAction,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xFF100A30),
                              borderRadius: BorderRadius.circular(29 * scale),
                            ),
                            child: Text(
                              'Recharge',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22 * scale,
                                height: 1,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w900,
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
        ),
      ),
    );
  }
}
