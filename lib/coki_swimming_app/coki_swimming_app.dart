part of '../main.dart';

class CokiSwimmingApp extends StatefulWidget {
  const CokiSwimmingApp({super.key, required this.hasAcceptedEula});

  static const String _eulaRevision = '1';
  static const String _eulaStorageKey = 'coki_swimming_eula_revision';

  final bool hasAcceptedEula;

  static Future<CokiSwimmingApp> create() async {
    try {
      final storedRevision = await SharedPreferencesAsync().getString(
        _eulaStorageKey,
      );
      return CokiSwimmingApp(hasAcceptedEula: storedRevision == _eulaRevision);
    } catch (_) {
      return const CokiSwimmingApp(hasAcceptedEula: false);
    }
  }

  @override
  State<CokiSwimmingApp> createState() => _CokiSwimmingAppState();
}

class _CokiSwimmingAppState extends State<CokiSwimmingApp> {
  late bool _hasAcceptedEula = widget.hasAcceptedEula;
  bool _isVisitor = false;

  Future<void> _acceptEula() async {
    await SharedPreferencesAsync().setString(
      CokiSwimmingApp._eulaStorageKey,
      CokiSwimmingApp._eulaRevision,
    );
    if (!mounted) return;
    setState(() => _hasAcceptedEula = true);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coki',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF100A30),
        splashColor: Colors.white.withValues(alpha: 0.12),
        highlightColor: Colors.white.withValues(alpha: 0.06),
      ),
      builder: (context, child) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: FocusManager.instance.primaryFocus?.unfocus,
        child: child ?? const SizedBox.shrink(),
      ),
      onGenerateRoute: (settings) {
        final page = switch (settings.name) {
          CokiSwimmingRoutesPaths.welcome => CokiSwimmingWelcomeScreen(
            hasAcceptedEula: _hasAcceptedEula,
            onVisitorMode: () => setState(() => _isVisitor = true),
          ),
          CokiSwimmingRoutesPaths.eula => CokiSwimmingEulaScreen(
            onAccept: _acceptEula,
          ),
          CokiSwimmingRoutesPaths.access => CokiSwimmingAccessScreen(
            onAuthorized: () => setState(() => _isVisitor = false),
          ),
          CokiSwimmingRoutesPaths.signup => CokiSwimmingSignupScreen(
            onAuthorized: () => setState(() => _isVisitor = false),
          ),
          CokiSwimmingRoutesPaths.recover => const CokiSwimmingRecoverScreen(),
          CokiSwimmingRoutesPaths.hub => CokiSwimmingHubScreen(
            isVisitor: _isVisitor,
            onExit: () => setState(() => _isVisitor = false),
          ),
          CokiSwimmingRoutesPaths.detail => CokiSwimmingDetailScreen(
            isVisitor: _isVisitor,
          ),
          CokiSwimmingRoutesPaths.compose => const CokiSwimmingComposeScreen(),
          CokiSwimmingRoutesPaths.motionCompose =>
            const CokiSwimmingMotionComposeScreen(),
          CokiSwimmingRoutesPaths.clip => CokiSwimmingClipScreen(
            isVisitor: _isVisitor,
          ),
          CokiSwimmingRoutesPaths.vault => const CokiSwimmingVaultScreen(),
          CokiSwimmingRoutesPaths.edit => const CokiSwimmingEditScreen(),
          CokiSwimmingRoutesPaths.setting => CokiSwimmingSettingScreen(
            onExit: () => setState(() => _isVisitor = false),
          ),
          CokiSwimmingRoutesPaths.fans => const CokiSwimmingPeopleScreen(
            title: 'Fans',
            actionLabel: 'Follow',
          ),
          CokiSwimmingRoutesPaths.circle => const CokiSwimmingPeopleScreen(
            title: 'Follow',
            actionLabel: 'Cancel',
          ),
          CokiSwimmingRoutesPaths.shield => const CokiSwimmingPeopleScreen(
            title: 'Blacklist',
            actionLabel: 'Remove',
          ),
          CokiSwimmingRoutesPaths.swimmer => CokiSwimmingSwimmerScreen(
            isVisitor: _isVisitor,
          ),
          CokiSwimmingRoutesPaths.concern => const CokiSwimmingConcernScreen(),
          CokiSwimmingRoutesPaths.companion =>
            const CokiSwimmingCompanionScreen(),
          CokiSwimmingRoutesPaths.dialogue =>
            const CokiSwimmingDialogueScreen(),
          CokiSwimmingRoutesPaths.call => const CokiSwimmingCallScreen(),
          _ => const CokiSwimmingSplashScreen(),
        };
        return CupertinoPageRoute<void>(
          builder: (_) => page,
          settings: settings,
        );
      },
    );
  }
}
