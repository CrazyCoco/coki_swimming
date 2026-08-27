part of '../main.dart';

class CokiSwimmingApp extends StatefulWidget {
  const CokiSwimmingApp({
    super.key,
    required this.hasAcceptedEula,
    this.restoredMember,
  });

  static const String _eulaRevision = '1';
  static const String _eulaStorageKey = 'coki_swimming_eula_revision';

  final bool hasAcceptedEula;
  final CokiSwimmingMember? restoredMember;

  static Future<CokiSwimmingApp> create() async {
    unawaited(CokiSwimmingStoreService.instance.initialize());

    try {
      await CokiSwimmingDatabase.instance.ensureSeedAccount();
    } catch (_) {
      // The app remains usable if local seed initialization is unavailable.
    }

    var hasAcceptedEula = false;
    try {
      final storedRevision = await SharedPreferencesAsync().getString(
        _eulaStorageKey,
      );
      hasAcceptedEula = storedRevision == _eulaRevision;
    } catch (_) {
      hasAcceptedEula = false;
    }

    CokiSwimmingMember? restoredMember;
    try {
      final memberId = await CokiSwimmingSessionStore.readMemberId();
      if (memberId != null) {
        restoredMember = await CokiSwimmingDatabase.instance.memberById(
          memberId,
        );
        if (restoredMember == null) {
          await CokiSwimmingSessionStore.clear();
        }
      }
    } catch (_) {
      await CokiSwimmingSessionStore.clear();
    }

    return CokiSwimmingApp(
      hasAcceptedEula: hasAcceptedEula,
      restoredMember: restoredMember,
    );
  }

  @override
  State<CokiSwimmingApp> createState() => _CokiSwimmingAppState();
}

class _CokiSwimmingAppState extends State<CokiSwimmingApp> {
  late bool _hasAcceptedEula = widget.hasAcceptedEula;
  late CokiSwimmingMember? _currentMember = widget.restoredMember;
  bool _isVisitor = false;

  Future<void> _acceptEula() async {
    await SharedPreferencesAsync().setString(
      CokiSwimmingApp._eulaStorageKey,
      CokiSwimmingApp._eulaRevision,
    );
    if (!mounted) return;
    setState(() => _hasAcceptedEula = true);
  }

  Future<void> _authenticate(CokiSwimmingMember member) async {
    await CokiSwimmingSessionStore.writeMemberId(member.id);
    if (!mounted) return;
    setState(() {
      _currentMember = member;
      _isVisitor = false;
    });
  }

  Future<void> _startRegistration(int memberId) async {
    await CokiSwimmingSessionStore.writeMemberId(memberId);
    final member = await CokiSwimmingDatabase.instance.memberById(memberId);
    if (!mounted) return;
    setState(() {
      _currentMember = member;
      _isVisitor = false;
    });
  }

  Future<void> _profileSaved() async {
    final memberId = _currentMember?.id;
    if (memberId == null) return;
    final member = await CokiSwimmingDatabase.instance.memberById(memberId);
    if (member == null) {
      throw const CokiSwimmingStorageException('Account no longer exists');
    }
    await CokiSwimmingSessionStore.writeMemberId(member.id);
    if (!mounted) return;
    setState(() {
      _currentMember = member;
      _isVisitor = false;
    });
  }

  void _enterVisitor() {
    unawaited(CokiSwimmingSessionStore.clear());
    setState(() {
      _currentMember = null;
      _isVisitor = true;
    });
  }

  void _exitAccount() {
    unawaited(CokiSwimmingSessionStore.clear());
    setState(() {
      _currentMember = null;
      _isVisitor = false;
    });
  }

  Future<void> _deleteAccount() async {
    final member = _currentMember;
    if (member != null) {
      await CokiSwimmingDatabase.instance.deleteMember(member.id);
      try {
        await CokiSwimmingAvatarService.instance.deleteOwnedAvatar(
          member.avatarPath,
          member.id,
        );
      } on Object {
        // The account is already removed; a stale local file must not restore it.
      }
    }
    await CokiSwimmingSessionStore.clear();
    if (!mounted) return;
    setState(() {
      _currentMember = null;
      _isVisitor = false;
    });
  }

  String get _routeAfterSplash {
    final member = _currentMember;
    if (member == null) return CokiSwimmingRoutesPaths.welcome;
    return member.profileCompleted
        ? CokiSwimmingRoutesPaths.hub
        : CokiSwimmingRoutesPaths.edit;
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
            onVisitorMode: _enterVisitor,
          ),
          CokiSwimmingRoutesPaths.eula => CokiSwimmingEulaScreen(
            onAccept: _acceptEula,
          ),
          CokiSwimmingRoutesPaths.termsOfUse =>
            const CokiSwimmingPolicyWebViewScreen(
              title: 'Agreement',
              url: CokiSwimmingNetworkConfig.userAgreementUrl,
            ),
          CokiSwimmingRoutesPaths.privacyPolicy =>
            const CokiSwimmingPolicyWebViewScreen(
              title: 'Privacy Policy',
              url: CokiSwimmingNetworkConfig.privacyPolicyUrl,
            ),
          CokiSwimmingRoutesPaths.access => CokiSwimmingAccessScreen(
            onAuthenticated: _authenticate,
          ),
          CokiSwimmingRoutesPaths.signup => CokiSwimmingSignupScreen(
            onRegistrationStarted: _startRegistration,
          ),
          CokiSwimmingRoutesPaths.recover => const CokiSwimmingRecoverScreen(),
          CokiSwimmingRoutesPaths.hub => CokiSwimmingHubScreen(
            isVisitor: _isVisitor,
            onExit: _exitAccount,
            member: _currentMember,
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
          CokiSwimmingRoutesPaths.vault => CokiSwimmingVaultScreen(
            memberId: _currentMember?.id,
          ),
          CokiSwimmingRoutesPaths.edit =>
            _currentMember == null
                ? CokiSwimmingWelcomeScreen(
                    hasAcceptedEula: _hasAcceptedEula,
                    onVisitorMode: _enterVisitor,
                  )
                : CokiSwimmingEditScreen(
                    memberId: _currentMember!.id,
                    registrationMode: !_currentMember!.profileCompleted,
                    onSaved: _profileSaved,
                  ),
          CokiSwimmingRoutesPaths.setting => CokiSwimmingSettingScreen(
            onExit: _exitAccount,
          ),
          CokiSwimmingRoutesPaths.deleteAccount =>
            CokiSwimmingDeleteAccountScreen(onDelete: _deleteAccount),
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
          CokiSwimmingRoutesPaths.companion => CokiSwimmingCompanionScreen(
            memberId: _currentMember?.id,
          ),
          CokiSwimmingRoutesPaths.guideDialogue =>
            _currentMember == null
                ? CokiSwimmingWelcomeScreen(
                    hasAcceptedEula: _hasAcceptedEula,
                    onVisitorMode: _enterVisitor,
                  )
                : CokiSwimmingGuideDialogueScreen(memberId: _currentMember!.id),
          CokiSwimmingRoutesPaths.dialogue =>
            const CokiSwimmingDialogueScreen(),
          CokiSwimmingRoutesPaths.call => const CokiSwimmingCallScreen(),
          _ => CokiSwimmingSplashScreen(nextRoute: _routeAfterSplash),
        };
        return CupertinoPageRoute<void>(
          builder: (_) => page,
          settings: settings,
        );
      },
    );
  }
}
