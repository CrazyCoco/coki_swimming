import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'coki_swimming_app/coki_swimming_app_routes/coki_swimming_app_routes_paths.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Color(0xFF100A30),
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const CokiSwimmingApp());
}

class CokiSwimmingApp extends StatefulWidget {
  const CokiSwimmingApp({super.key});

  @override
  State<CokiSwimmingApp> createState() => _CokiSwimmingAppState();
}

class _CokiSwimmingAppState extends State<CokiSwimmingApp> {
  bool _hasAcceptedEula = false;
  bool _isVisitor = false;

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
            onAcceptEula: () => setState(() => _hasAcceptedEula = true),
            onVisitorMode: () => setState(() => _isVisitor = true),
          ),
          CokiSwimmingRoutesPaths.eula => CokiSwimmingEulaScreen(
            onAccept: () => setState(() => _hasAcceptedEula = true),
          ),
          CokiSwimmingRoutesPaths.access => const CokiSwimmingAccessScreen(),
          CokiSwimmingRoutesPaths.signup => const CokiSwimmingSignupScreen(),
          CokiSwimmingRoutesPaths.recover => const CokiSwimmingRecoverScreen(),
          CokiSwimmingRoutesPaths.hub => CokiSwimmingHubScreen(
            isVisitor: _isVisitor,
            onExit: () => setState(() => _isVisitor = false),
          ),
          CokiSwimmingRoutesPaths.detail => const CokiSwimmingDetailScreen(),
          CokiSwimmingRoutesPaths.compose => const CokiSwimmingComposeScreen(),
          CokiSwimmingRoutesPaths.clip => const CokiSwimmingClipScreen(),
          CokiSwimmingRoutesPaths.vault => const CokiSwimmingVaultScreen(),
          CokiSwimmingRoutesPaths.edit => const CokiSwimmingEditScreen(),
          CokiSwimmingRoutesPaths.setting => CokiSwimmingSettingScreen(
            onExit: () => setState(() => _isVisitor = false),
          ),
          CokiSwimmingRoutesPaths.fans => const CokiSwimmingPeopleScreen(
            title: 'Fans',
            actionLabel: 'Follow',
          ),
          CokiSwimmingRoutesPaths.shield => const CokiSwimmingPeopleScreen(
            title: 'Blacklist',
            actionLabel: 'Remove',
          ),
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

class CokiSwimmingSplashScreen extends StatefulWidget {
  const CokiSwimmingSplashScreen({super.key});

  @override
  State<CokiSwimmingSplashScreen> createState() =>
      _CokiSwimmingSplashScreenState();
}

class _CokiSwimmingSplashScreenState extends State<CokiSwimmingSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 900), () {
      if (!mounted) return;
      Navigator.of(
        context,
      ).pushReplacementNamed(CokiSwimmingRoutesPaths.welcome);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 56),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image(
                    image: AssetImage(
                      'coki_swimming_assets/coki_swimming_brand_mark.png',
                    ),
                    width: 78,
                    height: 78,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'Coki',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    height: 1.1,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w900,
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

class CokiSwimmingWelcomeScreen extends StatelessWidget {
  const CokiSwimmingWelcomeScreen({
    super.key,
    required this.hasAcceptedEula,
    required this.onAcceptEula,
    required this.onVisitorMode,
  });

  final bool hasAcceptedEula;
  final VoidCallback onAcceptEula;
  final VoidCallback onVisitorMode;

  void _enter(BuildContext context, VoidCallback action) {
    if (!hasAcceptedEula) {
      Navigator.of(
        context,
      ).pushNamed(CokiSwimmingRoutesPaths.eula).then((_) => onAcceptEula());
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
            child: Stack(
              children: [
                Positioned(
                  top: 18,
                  right: 17,
                  child: CokiSwimmingTap(
                    borderRadius: BorderRadius.circular(5),
                    onTap: () => Navigator.of(
                      context,
                    ).pushNamed(CokiSwimmingRoutesPaths.eula),
                    child: Container(
                      width: 92,
                      height: 49,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'EULA',
                        style: TextStyle(
                          color: Color(0xFFD7336E),
                          fontSize: 24,
                          height: 28.13 / 24,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 24,
                  right: 24,
                  bottom: 28,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CokiSwimmingGradientButton(
                        label: 'Login by email',
                        onTap: () => _enter(
                          context,
                          () => Navigator.of(
                            context,
                          ).pushNamed(CokiSwimmingRoutesPaths.access),
                        ),
                      ),
                      const SizedBox(height: 15),
                      CokiSwimmingPlainButton(
                        label: "I'm new",
                        color: const Color(0xFF100A30),
                        onTap: () => _enter(context, () {
                          onVisitorMode();
                          Navigator.of(
                            context,
                          ).pushReplacementNamed(CokiSwimmingRoutesPaths.hub);
                        }),
                      ),
                      const SizedBox(height: 15),
                      CokiSwimmingTap(
                        onTap: () => Navigator.of(
                          context,
                        ).pushNamed(CokiSwimmingRoutesPaths.signup),
                        child: const Text(
                          "Don't have an account? Sign up",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            height: 1.4,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      const Text(
                        'Agree with  User Agreement and Privacy Policy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          height: 1.3,
                          letterSpacing: 0,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CokiSwimmingEulaScreen extends StatelessWidget {
  const CokiSwimmingEulaScreen({super.key, required this.onAccept});

  final VoidCallback onAccept;

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
                            0xFFD7336E,
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
                                color: const Color(0xFFD7336E),
                                onTap: () => Navigator.of(context).maybePop(),
                              ),
                            ),
                            const SizedBox(width: 14),
                            Expanded(
                              child: CokiSwimmingSmallPill(
                                label: 'I agree',
                                color: const Color(0xFF61D1E8),
                                onTap: () {
                                  onAccept();
                                  Navigator.of(context).maybePop();
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

class CokiSwimmingAccessScreen extends StatelessWidget {
  const CokiSwimmingAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingFormScreen(
      fields: const [
        ('Email:', 'Enter email address'),
        ('Password:', 'Enter password'),
      ],
      buttonLabel: 'Sign in',
      lower: Align(
        alignment: Alignment.centerRight,
        child: CokiSwimmingTap(
          onTap: () =>
              Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.recover),
          child: const Text(
            'Forgot ?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              height: 1.4,
              letterSpacing: 0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
      onSubmit: () => Navigator.of(
        context,
      ).pushReplacementNamed(CokiSwimmingRoutesPaths.hub),
    );
  }
}

class CokiSwimmingSignupScreen extends StatelessWidget {
  const CokiSwimmingSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingFormScreen(
      fields: const [
        ('Email:', 'Enter email address'),
        ('Password:', 'Enter password'),
        ('Password:', 'Please enter the password again'),
      ],
      buttonLabel: 'Sign up',
      onSubmit: () => Navigator.of(
        context,
      ).pushReplacementNamed(CokiSwimmingRoutesPaths.edit),
    );
  }
}

class CokiSwimmingRecoverScreen extends StatelessWidget {
  const CokiSwimmingRecoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingFormScreen(
      fields: const [
        ('Email:', 'Enter email address'),
        ('Password:', 'Enter password'),
        ('Password:', 'Please enter the password again'),
      ],
      buttonLabel: 'Save',
      onSubmit: () {
        CokiSwimmingToast.show(context, 'Saved');
        Navigator.of(context).maybePop();
      },
    );
  }
}

class CokiSwimmingHubScreen extends StatefulWidget {
  const CokiSwimmingHubScreen({
    super.key,
    required this.isVisitor,
    required this.onExit,
  });

  final bool isVisitor;
  final VoidCallback onExit;

  @override
  State<CokiSwimmingHubScreen> createState() => _CokiSwimmingHubScreenState();
}

class _CokiSwimmingHubScreenState extends State<CokiSwimmingHubScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final panes = [
      CokiSwimmingHomePane(isVisitor: widget.isVisitor),
      const CokiSwimmingOceanPane(),
      const CokiSwimmingPulsePane(),
      const CokiSwimmingInboxPane(),
      const CokiSwimmingPersonaPane(),
    ];
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: panes[_index],
        bottomNavigationBar: SafeArea(
          top: false,
          child: Container(
            height: 62,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CokiSwimmingTab(
                  image: _index == 0
                      ? 'coki_swimming_assets/coki_swimming_tab_inbox_on.png'
                      : 'coki_swimming_assets/coki_swimming_tab_inbox_idle.png',
                  active: _index == 0,
                  onTap: () => setState(() => _index = 0),
                ),
                CokiSwimmingTab(
                  image: _index == 1
                      ? 'coki_swimming_assets/coki_swimming_tab_wave_on.png'
                      : 'coki_swimming_assets/coki_swimming_tab_wave_idle.png',
                  active: _index == 1,
                  onTap: () => setState(() => _index = 1),
                ),
                CokiSwimmingTab(
                  image: _index == 2
                      ? 'coki_swimming_assets/coki_swimming_tab_bubble_on.png'
                      : 'coki_swimming_assets/coki_swimming_tab_bubble_idle.png',
                  active: _index == 2,
                  onTap: () => setState(() => _index = 2),
                ),
                CokiSwimmingTab(
                  image: _index == 3
                      ? 'coki_swimming_assets/coki_swimming_tab_inbox_on.png'
                      : 'coki_swimming_assets/coki_swimming_tab_inbox_idle.png',
                  active: _index == 3,
                  onTap: () => setState(() => _index = 3),
                ),
                CokiSwimmingTab(
                  image: _index == 4
                      ? 'coki_swimming_assets/coki_swimming_tab_persona_on.png'
                      : 'coki_swimming_assets/coki_swimming_tab_persona_idle.png',
                  active: _index == 4,
                  onTap: () => setState(() => _index = 4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CokiSwimmingHomePane extends StatelessWidget {
  const CokiSwimmingHomePane({super.key, required this.isVisitor});

  final bool isVisitor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 18),
        children: [
          Row(
            children: [
              const CokiSwimmingChip(text: 'For you'),
              const SizedBox(width: 12),
              const Text(
                'Trending',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Spacer(),
              CokiSwimmingCircle(
                child: const Icon(Icons.add, color: Color(0xFFD7336E)),
                onTap: () => Navigator.of(
                  context,
                ).pushNamed(CokiSwimmingRoutesPaths.compose),
              ),
            ],
          ),
          const SizedBox(height: 18),
          CokiSwimmingPromoCard(isVisitor: isVisitor),
          const SizedBox(height: 16),
          const CokiSwimmingEntryCard(),
          const SizedBox(height: 16),
          const CokiSwimmingEntryCard(second: true),
        ],
      ),
    );
  }
}

class CokiSwimmingPromoCard extends StatelessWidget {
  const CokiSwimmingPromoCard({super.key, required this.isVisitor});

  final bool isVisitor;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(14),
      onTap: () {
        if (isVisitor) {
          CokiSwimmingLoginPrompt.show(context);
        } else {
          Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.companion);
        }
      },
      child: Container(
        height: 168,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          image: const DecorationImage(
            image: AssetImage(
              'coki_swimming_assets/coki_swimming_stage_panel.png',
            ),
            fit: BoxFit.cover,
          ),
          border: Border.all(color: Colors.white.withValues(alpha: 0.35)),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 12,
              top: 14,
              child: Image.asset(
                'coki_swimming_assets/coki_swimming_avatar_coki.png',
                width: 72,
                height: 72,
              ),
            ),
            const Positioned(
              left: 16,
              bottom: 18,
              child: Text(
                'Art Trade Coki\nDelphine',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Positioned(
              right: 14,
              bottom: 12,
              child: Image.asset(
                'coki_swimming_assets/coki_swimming_talk_pill.png',
                width: 119,
                height: 53,
              ),
            ),
            Center(
              child: Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.72),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.play_arrow_rounded,
                  color: Color(0xFFD7336E),
                  size: 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CokiSwimmingEntryCard extends StatefulWidget {
  const CokiSwimmingEntryCard({super.key, this.second = false});

  final bool second;

  @override
  State<CokiSwimmingEntryCard> createState() => _CokiSwimmingEntryCardState();
}

class _CokiSwimmingEntryCardState extends State<CokiSwimmingEntryCard> {
  bool _isMarked = false;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(12),
      onTap: () =>
          Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.detail),
      child: Container(
        padding: const EdgeInsets.all(9),
        decoration: BoxDecoration(
          color: const Color(0xFF2B254D),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFF61D1E8)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CokiSwimmingAvatar(
                  image: 'coki_swimming_assets/coki_swimming_avatar_apien.png',
                  size: 28,
                ),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    'Gianluca Carver',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      height: 1.2,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                CokiSwimmingCircle(
                  color: Colors.transparent,
                  onTap: () => CokiSwimmingReportSheet.show(context),
                  child: const Icon(Icons.more_horiz, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 310 / 150,
                    child: Image.asset(
                      widget.second
                          ? 'coki_swimming_assets/coki_swimming_pool_tile.png'
                          : 'coki_swimming_assets/coki_swimming_sea_frame.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 9,
                    top: 9,
                    child: CokiSwimmingTap(
                      borderRadius: BorderRadius.circular(18),
                      onTap: () => setState(() => _isMarked = !_isMarked),
                      child: Container(
                        width: 33,
                        height: 33,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.82),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          _isMarked ? Icons.favorite : Icons.favorite_border,
                          color: const Color(0xFFD7336E),
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 9,
                    bottom: 9,
                    child: Container(
                      width: 33,
                      height: 33,
                      decoration: const BoxDecoration(
                        color: Color(0xFF61D1E8),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.mode_comment_outlined,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              widget.second
                  ? 'Swim with the current, embrace the flow.'
                  : 'Life is a journey, embrace it.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                height: 1.35,
                letterSpacing: 0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 7),
            const Text(
              '#Theme   #Theme   #Theme',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 10,
                height: 1.2,
                letterSpacing: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CokiSwimmingOceanPane extends StatelessWidget {
  const CokiSwimmingOceanPane({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'coki_swimming_assets/coki_swimming_pool_muse.png',
            fit: BoxFit.cover,
          ),
          Container(color: Colors.black.withValues(alpha: 0.18)),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 15, 22),
              child: Column(
                children: [
                  Row(
                    children: [
                      CokiSwimmingBackButton(
                        onTap: () =>
                            CokiSwimmingToast.show(context, 'Already here'),
                      ),
                      const Spacer(),
                      CokiSwimmingCircle(
                        color: Colors.white.withValues(alpha: 0.84),
                        onTap: () => CokiSwimmingReportSheet.show(context),
                        child: const Icon(
                          Icons.more_horiz,
                          color: Color(0xFF100A30),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const CokiSwimmingAvatar(
                        image:
                            'coki_swimming_assets/coki_swimming_avatar_apien.png',
                        size: 42,
                      ),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: Text(
                          'Apien\nJust had the best random call tonight...',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            height: 1.35,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      CokiSwimmingFloatTool(
                        icon: Icons.mode_comment_outlined,
                        label: '100',
                        onTap: () => CokiSwimmingNotesSheet.show(context),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: CokiSwimmingTap(
              borderRadius: BorderRadius.circular(34),
              onTap: () =>
                  Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.clip),
              child: Container(
                width: 66,
                height: 66,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.7),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.play_arrow_rounded,
                  color: Color(0xFFD7336E),
                  size: 44,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CokiSwimmingPulsePane extends StatelessWidget {
  const CokiSwimmingPulsePane({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        padding: const EdgeInsets.fromLTRB(16, 13, 16, 20),
        children: const [
          Row(
            children: [
              CokiSwimmingChip(text: 'For you'),
              SizedBox(width: 12),
              Text(
                'Trending',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          SizedBox(height: 18),
          CokiSwimmingEntryCard(),
          SizedBox(height: 16),
          CokiSwimmingEntryCard(second: true),
        ],
      ),
    );
  }
}

class CokiSwimmingInboxPane extends StatelessWidget {
  const CokiSwimmingInboxPane({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 68, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Message +',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                height: 1.2,
                letterSpacing: 0,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                itemCount: 4,
                separatorBuilder: (_, _) => const SizedBox(height: 12),
                itemBuilder: (context, index) => CokiSwimmingTap(
                  borderRadius: BorderRadius.circular(18),
                  onTap: () => Navigator.of(
                    context,
                  ).pushNamed(CokiSwimmingRoutesPaths.dialogue),
                  child: Container(
                    height: 66,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2B254D),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: const Color(0xFF61D1E8),
                        width: 1.2,
                      ),
                    ),
                    child: const Row(
                      children: [
                        CokiSwimmingAvatar(
                          image:
                              'coki_swimming_assets/coki_swimming_avatar_apien.png',
                          size: 50,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'Pyrlen\nEnjoy happy today.',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              height: 1.35,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CokiSwimmingPersonaPane extends StatelessWidget {
  const CokiSwimmingPersonaPane({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        padding: EdgeInsets.zero,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 214,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFB06BFF), Color(0xFFBFBDFF)],
                  ),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                ),
              ),
              Positioned(
                right: 16,
                top: 12,
                child: CokiSwimmingCircle(
                  onTap: () => Navigator.of(
                    context,
                  ).pushNamed(CokiSwimmingRoutesPaths.setting),
                  child: const Icon(
                    Icons.settings_outlined,
                    color: Color(0xFF100A30),
                  ),
                ),
              ),
              Positioned.fill(
                top: 70,
                child: Column(
                  children: [
                    CokiSwimmingAvatar(
                      image:
                          'coki_swimming_assets/coki_swimming_avatar_coki.png',
                      size: 94,
                      onTap: () => Navigator.of(
                        context,
                      ).pushNamed(CokiSwimmingRoutesPaths.edit),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Apien',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        height: 1.2,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 3),
                    const Text(
                      'Life is a journey, embrace it.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        height: 1.4,
                        letterSpacing: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CokiSwimmingTap(
              borderRadius: BorderRadius.circular(17),
              onTap: () =>
                  Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.fans),
              child: Container(
                height: 68,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CokiSwimmingStat(label: 'Friends', value: '3.3w'),
                    SizedBox(
                      height: 38,
                      child: VerticalDivider(color: Color(0x22000000)),
                    ),
                    CokiSwimmingStat(label: 'Followers', value: '33'),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Post',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    height: 1.2,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 12),
                CokiSwimmingEntryCard(),
                SizedBox(height: 16),
                CokiSwimmingEntryCard(second: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CokiSwimmingDetailScreen extends StatelessWidget {
  const CokiSwimmingDetailScreen({super.key});

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
                trailing: CokiSwimmingCircle(
                  color: Colors.white.withValues(alpha: 0.84),
                  onTap: () => CokiSwimmingReportSheet.show(context),
                  child: const Icon(Icons.more_horiz, color: Color(0xFF100A30)),
                ),
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 20),
                  children: const [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      child: Image(
                        image: AssetImage(
                          'coki_swimming_assets/coki_swimming_sea_frame.png',
                        ),
                        height: 276,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 14),
                    Row(
                      children: [
                        CokiSwimmingAvatar(
                          image:
                              'coki_swimming_assets/coki_swimming_avatar_apien.png',
                          size: 38,
                        ),
                        SizedBox(width: 9),
                        Expanded(
                          child: Text(
                            'Apien',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              height: 1.2,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 14),
                    Text(
                      'Do not wear clothes randomly at beaches. Swim beautifully and safely with your favorite style.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        height: 1.45,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      '#Theme   #Theme   #Theme',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 11,
                        height: 1.35,
                        letterSpacing: 0,
                      ),
                    ),
                    SizedBox(height: 14),
                    Text(
                      'Comments +',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        height: 1.2,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 10),
                    CokiSwimmingNoteTile(),
                    CokiSwimmingNoteTile(),
                    CokiSwimmingNoteTile(),
                  ],
                ),
              ),
              const CokiSwimmingInputDock(),
            ],
          ),
        ),
      ),
    );
  }
}

class CokiSwimmingComposeScreen extends StatefulWidget {
  const CokiSwimmingComposeScreen({super.key});

  @override
  State<CokiSwimmingComposeScreen> createState() =>
      _CokiSwimmingComposeScreenState();
}

class _CokiSwimmingComposeScreenState extends State<CokiSwimmingComposeScreen> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: [
              const CokiSwimmingTopBar(title: ''),
              Expanded(
                child: ListView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  padding: const EdgeInsets.fromLTRB(16, 20, 16, 24),
                  children: [
                    const CokiSwimmingTextBox(),
                    const SizedBox(height: 18),
                    const Text(
                      'Theme',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        height: 1.3,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 8,
                      children: [
                        for (var i = 0; i < 3; i++)
                          ChoiceChip(
                            selected: _selected == i,
                            label: Text(
                              ['Training', 'Lifestyle', 'Community'][i],
                            ),
                            onSelected: (_) => setState(() => _selected = i),
                            labelStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              height: 1.2,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w700,
                            ),
                            selectedColor: const Color(0xFFD7336E),
                            backgroundColor: const Color(0xFF2B254D),
                            side: BorderSide.none,
                          ),
                      ],
                    ),
                    const SizedBox(height: 22),
                    const Text(
                      'Upload (Pic)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        height: 1.3,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CokiSwimmingTap(
                        borderRadius: BorderRadius.circular(12),
                        onTap: () =>
                            CokiSwimmingToast.show(context, 'Select a source'),
                        child: Container(
                          width: 66,
                          height: 66,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            'coki_swimming_assets/coki_swimming_image_glyph.png',
                            width: 32,
                            height: 32,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 96),
                    Center(
                      child: SizedBox(
                        width: 190,
                        child: CokiSwimmingGradientButton(
                          label: 'Release',
                          onTap: () {
                            CokiSwimmingToast.show(context, 'Released');
                            Navigator.of(context).maybePop();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CokiSwimmingClipScreen extends StatelessWidget {
  const CokiSwimmingClipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingMediaScreen(
      image: 'coki_swimming_assets/coki_swimming_water_portrait.png',
      trailing: CokiSwimmingFloatTool(
        icon: Icons.videocam_outlined,
        label: '100',
        onTap: () =>
            Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.call),
      ),
    );
  }
}

class CokiSwimmingCallScreen extends StatelessWidget {
  const CokiSwimmingCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingMediaScreen(
      image: 'coki_swimming_assets/coki_swimming_aqua_portrait.png',
      bottomCard: true,
      trailing: Image.asset(
        'coki_swimming_assets/coki_swimming_call_end.png',
        width: 56,
        height: 56,
      ),
    );
  }
}

class CokiSwimmingVaultScreen extends StatefulWidget {
  const CokiSwimmingVaultScreen({super.key});

  @override
  State<CokiSwimmingVaultScreen> createState() =>
      _CokiSwimmingVaultScreenState();
}

class _CokiSwimmingVaultScreenState extends State<CokiSwimmingVaultScreen> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    const offers = [
      ('400', '\$0.99'),
      ('800', '\$1.99'),
      ('2190', '\$3.99'),
      ('2450', '\$4.99'),
      ('3950', '\$8.99'),
      ('5150', '\$9.99'),
      ('5700', '\$13.99'),
      ('10800', '\$19.99'),
      ('29400', '\$49.99'),
      ('63700', '\$99.99'),
    ];
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              const CokiSwimmingTopBar(title: 'My diamonds'),
              Container(
                height: 50,
                margin: const EdgeInsets.fromLTRB(20, 12, 20, 12),
                padding: const EdgeInsets.symmetric(horizontal: 14),
                decoration: BoxDecoration(
                  color: const Color(0xFF1C1740),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: const Color(0xFF61D1E8),
                    width: 1.2,
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'coki_swimming_assets/coki_swimming_coin_disc.png',
                      width: 29,
                      height: 29,
                    ),
                    const SizedBox(width: 7),
                    const Text(
                      '99999',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        height: 1.2,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
                  itemCount: offers.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    final chosen = index == _selected;
                    return CokiSwimmingTap(
                      borderRadius: BorderRadius.circular(9),
                      onTap: () => setState(() => _selected = index),
                      child: Container(
                        height: 46,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: chosen
                              ? const Color(0xFF61D1E8)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'coki_swimming_assets/coki_swimming_coin_disc.png',
                              width: 27,
                              height: 27,
                            ),
                            const SizedBox(width: 7),
                            Text(
                              offers[index].$1,
                              style: TextStyle(
                                color: chosen
                                    ? Colors.white
                                    : const Color(0xFF100A30),
                                fontSize: 13,
                                height: 1.2,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              offers[index].$2,
                              style: TextStyle(
                                color: chosen
                                    ? Colors.white
                                    : const Color(0xFF100A30),
                                fontSize: 11,
                                height: 1.2,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 14, 20, 16),
                color: Colors.white,
                child: CokiSwimmingGradientButton(
                  label: 'Recharge',
                  onTap: () =>
                      CokiSwimmingToast.show(context, 'Recharge unavailable'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CokiSwimmingEditScreen extends StatelessWidget {
  const CokiSwimmingEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: [
              const CokiSwimmingTopBar(title: 'Edit'),
              Expanded(
                child: ListView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
                  children: [
                    Center(
                      child: Stack(
                        children: [
                          const CokiSwimmingAvatar(
                            image:
                                'coki_swimming_assets/coki_swimming_avatar_coki.png',
                            size: 78,
                          ),
                          Positioned(
                            right: 0,
                            bottom: 2,
                            child: Image.asset(
                              'coki_swimming_assets/coki_swimming_camera_round.png',
                              width: 25,
                              height: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    const CokiSwimmingNamedField(label: 'Name', maxLines: 1),
                    const SizedBox(height: 20),
                    const CokiSwimmingNamedField(
                      label: 'About me',
                      maxLines: 4,
                    ),
                    const SizedBox(height: 96),
                    Center(
                      child: SizedBox(
                        width: 190,
                        child: CokiSwimmingGradientButton(
                          label: 'Save',
                          onTap: () =>
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                CokiSwimmingRoutesPaths.hub,
                                (route) => false,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CokiSwimmingSettingScreen extends StatelessWidget {
  const CokiSwimmingSettingScreen({super.key, required this.onExit});

  final VoidCallback onExit;

  @override
  Widget build(BuildContext context) {
    final rows = [
      ('Privacy Policy', () => _text(context, 'Privacy Policy')),
      ('User Agreement', () => _text(context, 'User Agreement')),
      (
        'Blacklist',
        () => Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.shield),
      ),
      (
        'Wallet',
        () => Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.vault),
      ),
      (
        'Edit personal information',
        () => Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.edit),
      ),
    ];
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
            child: Column(
              children: [
                const CokiSwimmingTopBar(
                  title: 'Setting',
                  horizontalPadding: 0,
                ),
                const SizedBox(height: 22),
                for (final row in rows) ...[
                  CokiSwimmingSettingRow(label: row.$1, onTap: row.$2),
                  const SizedBox(height: 16),
                ],
                const Spacer(),
                SizedBox(
                  width: 190,
                  child: CokiSwimmingPlainButton(
                    label: 'Delete account',
                    color: const Color(0xFFD7336E),
                    onTap: () => CokiSwimmingConfirm.show(context, onExit),
                  ),
                ),
                const SizedBox(height: 14),
                SizedBox(
                  width: 190,
                  child: CokiSwimmingPlainButton(
                    label: 'Log out',
                    color: const Color(0xFF61D1E8),
                    textColor: const Color(0xFF100A30),
                    onTap: () {
                      onExit();
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        CokiSwimmingRoutesPaths.welcome,
                        (route) => false,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _text(BuildContext context, String title) {
    Navigator.of(context).push(
      CupertinoPageRoute<void>(
        builder: (_) => CokiSwimmingTextScreen(title: title),
      ),
    );
  }
}

class CokiSwimmingPeopleScreen extends StatelessWidget {
  const CokiSwimmingPeopleScreen({
    super.key,
    required this.title,
    required this.actionLabel,
  });

  final String title;
  final String actionLabel;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              CokiSwimmingTopBar(title: title),
              Expanded(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  padding: const EdgeInsets.fromLTRB(15, 18, 15, 20),
                  itemCount: 4,
                  separatorBuilder: (_, _) => const SizedBox(height: 9),
                  itemBuilder: (context, index) => Container(
                    height: 56,
                    padding: const EdgeInsets.fromLTRB(9, 7, 8, 7),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2B254D),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Row(
                      children: [
                        const CokiSwimmingAvatar(
                          image:
                              'coki_swimming_assets/coki_swimming_avatar_apien.png',
                          size: 39,
                        ),
                        const SizedBox(width: 9),
                        const Expanded(
                          child: Text(
                            'Apien\nNice to meet you all.',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              height: 1.35,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        CokiSwimmingSmallPill(
                          label: actionLabel,
                          color: Colors.white,
                          textColor: const Color(0xFF100A30),
                          onTap: () =>
                              CokiSwimmingToast.show(context, 'Updated'),
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

class CokiSwimmingCompanionScreen extends StatelessWidget {
  const CokiSwimmingCompanionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: [
              CokiSwimmingTopBar(title: ''),
              Positioned(
                left: 4,
                top: 54,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Text(
                    'Coki AI ++',
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.92),
                      fontSize: 34,
                      height: 1,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: -18,
                top: 34,
                child: Image.asset(
                  'coki_swimming_assets/coki_swimming_neon_aura.png',
                  width: 270,
                  height: 315,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: 24,
                right: 24,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(22, 24, 22, 24),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Coki AI',
                        style: TextStyle(
                          color: Color(0xFF100A30),
                          fontSize: 22,
                          height: 1.2,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 18),
                      const Text(
                        "Hi! I'm Coki, your friendly AI companion here to chat about all things swimming. Whether you're a beginner or a seasoned swimmer, I am here to explore techniques, share tips, and keep the conversation inspiring and fun.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF100A30),
                          fontSize: 12,
                          height: 1.55,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 22),
                      SizedBox(
                        width: 227,
                        child: CokiSwimmingGradientButton(
                          label: '100     Chat',
                          icon: Image.asset(
                            'coki_swimming_assets/coki_swimming_coin_disc.png',
                            width: 22,
                            height: 22,
                          ),
                          onTap: () => Navigator.of(
                            context,
                          ).pushNamed(CokiSwimmingRoutesPaths.dialogue),
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

class CokiSwimmingDialogueScreen extends StatefulWidget {
  const CokiSwimmingDialogueScreen({super.key});

  @override
  State<CokiSwimmingDialogueScreen> createState() =>
      _CokiSwimmingDialogueScreenState();
}

class _CokiSwimmingDialogueScreenState
    extends State<CokiSwimmingDialogueScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _lines = [
    'Hi, I am interested in your stuff.',
    'OK, if you have anything you want to know, you can ask me.',
    'That sounds awesome.',
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _appendLine() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;
    setState(() {
      _lines.add(text);
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEEF2),
      body: SafeArea(
        child: Column(
          children: [
            CokiSwimmingTopBar(
              title: 'Apien',
              dark: true,
              trailing: CokiSwimmingCircle(
                color: Colors.transparent,
                onTap: () => Navigator.of(
                  context,
                ).pushNamed(CokiSwimmingRoutesPaths.call),
                child: const Icon(
                  Icons.videocam_outlined,
                  color: Color(0xFF100A30),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                itemCount: _lines.length,
                itemBuilder: (context, index) {
                  final mine = index.isOdd;
                  return Align(
                    alignment: mine
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 14),
                      constraints: const BoxConstraints(maxWidth: 230),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 13,
                        vertical: 9,
                      ),
                      decoration: BoxDecoration(
                        color: mine
                            ? const Color(0xFFD7336E)
                            : const Color(0xFF61D1E8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        _lines[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          height: 1.35,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            CokiSwimmingInputDock(
              controller: _controller,
              onSubmit: _appendLine,
            ),
          ],
        ),
      ),
    );
  }
}

class CokiSwimmingMediaScreen extends StatelessWidget {
  const CokiSwimmingMediaScreen({
    super.key,
    required this.image,
    required this.trailing,
    this.bottomCard = false,
  });

  final String image;
  final Widget trailing;
  final bool bottomCard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(image, fit: BoxFit.cover),
          Container(color: const Color(0x33D7336E)),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 15, 22),
              child: Column(
                children: [
                  Row(
                    children: [
                      CokiSwimmingBackButton(
                        onTap: () => Navigator.of(context).maybePop(),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Apien',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          height: 1.2,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const Spacer(),
                      CokiSwimmingCircle(
                        color: Colors.white.withValues(alpha: 0.84),
                        onTap: () => CokiSwimmingReportSheet.show(context),
                        child: const Icon(
                          Icons.more_horiz,
                          color: Color(0xFF100A30),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  if (bottomCard)
                    Container(
                      padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Apien\nCalling...',
                              style: TextStyle(
                                color: Color(0xFF100A30),
                                fontSize: 15,
                                height: 1.35,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          CokiSwimmingTap(
                            borderRadius: BorderRadius.circular(28),
                            onTap: () => Navigator.of(context).maybePop(),
                            child: trailing,
                          ),
                        ],
                      ),
                    )
                  else
                    Row(
                      children: [
                        const CokiSwimmingAvatar(
                          image:
                              'coki_swimming_assets/coki_swimming_avatar_apien.png',
                          size: 42,
                        ),
                        const SizedBox(width: 8),
                        const Expanded(
                          child: Text(
                            'Just had the best random call tonight...',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              height: 1.35,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        trailing,
                      ],
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

class CokiSwimmingFormScreen extends StatelessWidget {
  const CokiSwimmingFormScreen({
    super.key,
    required this.fields,
    required this.buttonLabel,
    required this.onSubmit,
    this.lower,
  });

  final List<(String, String)> fields;
  final String buttonLabel;
  final VoidCallback onSubmit;
  final Widget? lower;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: [
              const CokiSwimmingTopBar(title: ''),
              Expanded(
                child: ListView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  padding: const EdgeInsets.fromLTRB(20, 92, 20, 24),
                  children: [
                    for (final field in fields) ...[
                      Text(
                        field.$1,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          height: 25.2 / 18,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 9),
                      TextField(
                        obscureText: field.$1.contains('Password'),
                        style: const TextStyle(
                          color: Color(0xFF100A30),
                          fontSize: 16,
                          height: 22.4 / 16,
                          letterSpacing: 0,
                        ),
                        decoration: InputDecoration(
                          hintText: field.$2,
                          hintStyle: TextStyle(
                            color: const Color(
                              0xFF100A30,
                            ).withValues(alpha: 0.42),
                            fontSize: 10,
                            height: 1.2,
                            letterSpacing: 0,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 15,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26),
                            borderSide: const BorderSide(
                              color: Color(0xFFD7336E),
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26),
                            borderSide: const BorderSide(
                              color: Color(0xFF61D1E8),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 17),
                    ],
                    ?lower,
                    const SizedBox(height: 72),
                    Center(
                      child: SizedBox(
                        width: 190,
                        child: CokiSwimmingGradientButton(
                          label: buttonLabel,
                          onTap: onSubmit,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CokiSwimmingBackground extends StatelessWidget {
  const CokiSwimmingBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          child: Image.asset(
            'coki_swimming_assets/coki_swimming_shell_field.png',
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
        Positioned.fill(child: child),
      ],
    );
  }
}

class CokiSwimmingTopBar extends StatelessWidget {
  const CokiSwimmingTopBar({
    super.key,
    required this.title,
    this.trailing,
    this.onReturn,
    this.dark = false,
    this.horizontalPadding = 15,
  });

  final String title;
  final Widget? trailing;
  final VoidCallback? onReturn;
  final bool dark;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(horizontalPadding, 8, horizontalPadding, 0),
      child: Row(
        children: [
          CokiSwimmingBackButton(
            onTap: onReturn ?? () => Navigator.of(context).maybePop(),
          ),
          if (title.isNotEmpty) ...[
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: dark ? const Color(0xFF100A30) : Colors.white,
                  fontSize: 20,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ] else
            const Spacer(),
          ?trailing,
        ],
      ),
    );
  }
}

class CokiSwimmingBackButton extends StatelessWidget {
  const CokiSwimmingBackButton({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(22),
      onTap: onTap,
      child: SizedBox(
        width: 44,
        height: 44,
        child: Center(
          child: Image.asset(
            'coki_swimming_assets/coki_swimming_nav_return.png',
            width: 32,
            height: 32,
          ),
        ),
      ),
    );
  }
}

class CokiSwimmingTap extends StatelessWidget {
  const CokiSwimmingTap({
    super.key,
    required this.child,
    required this.onTap,
    this.borderRadius,
  });

  final Widget child;
  final VoidCallback onTap;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(borderRadius: borderRadius, onTap: onTap, child: child),
    );
  }
}

class CokiSwimmingGradientButton extends StatelessWidget {
  const CokiSwimmingGradientButton({
    super.key,
    required this.label,
    required this.onTap,
    this.icon,
  });

  final String label;
  final VoidCallback onTap;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(28),
      onTap: onTap,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          gradient: const LinearGradient(
            colors: [Color(0xFF61D1E8), Color(0xFFD7336E)],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[icon!, const SizedBox(width: 8)],
            Flexible(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CokiSwimmingPlainButton extends StatelessWidget {
  const CokiSwimmingPlainButton({
    super.key,
    required this.label,
    required this.color,
    required this.onTap,
    this.textColor = Colors.white,
  });

  final String label;
  final Color color;
  final VoidCallback onTap;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(28),
      onTap: onTap,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            height: 1.2,
            letterSpacing: 0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}

class CokiSwimmingSmallPill extends StatelessWidget {
  const CokiSwimmingSmallPill({
    super.key,
    required this.label,
    required this.color,
    required this.onTap,
    this.textColor = Colors.white,
  });

  final String label;
  final Color color;
  final VoidCallback onTap;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: Container(
        height: 32,
        padding: const EdgeInsets.symmetric(horizontal: 14),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: textColor,
            fontSize: 11,
            height: 1.2,
            letterSpacing: 0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}

class CokiSwimmingCircle extends StatelessWidget {
  const CokiSwimmingCircle({
    super.key,
    required this.child,
    required this.onTap,
    this.color = Colors.white,
  });

  final Widget child;
  final VoidCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(22),
      onTap: onTap,
      child: Container(
        width: 44,
        height: 44,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: child,
      ),
    );
  }
}

class CokiSwimmingTab extends StatelessWidget {
  const CokiSwimmingTab({
    super.key,
    required this.image,
    required this.active,
    required this.onTap,
  });

  final String image;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(24),
      onTap: onTap,
      child: SizedBox(
        width: 54,
        height: 54,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, width: 24, height: 24),
            const SizedBox(height: 5),
            Container(
              width: active ? 18 : 0,
              height: 3,
              decoration: BoxDecoration(
                color: const Color(0xFFD7336E),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CokiSwimmingAvatar extends StatelessWidget {
  const CokiSwimmingAvatar({
    super.key,
    required this.image,
    required this.size,
    this.onTap,
  });

  final String image;
  final double size;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final face = ClipOval(
      child: Image.asset(image, width: size, height: size, fit: BoxFit.cover),
    );
    if (onTap == null) return face;
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(size / 2),
      onTap: onTap!,
      child: face,
    );
  }
}

class CokiSwimmingChip extends StatelessWidget {
  const CokiSwimmingChip({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF61D1E8),
          fontSize: 14,
          height: 1.2,
          letterSpacing: 0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}

class CokiSwimmingFloatTool extends StatelessWidget {
  const CokiSwimmingFloatTool({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(24),
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 44,
            height: 44,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.82),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: const Color(0xFF61D1E8), size: 24),
          ),
          const SizedBox(height: 3),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
              height: 1.2,
              letterSpacing: 0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

class CokiSwimmingStat extends StatelessWidget {
  const CokiSwimmingStat({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Color(0xFFD7336E),
            fontSize: 18,
            height: 1.2,
            letterSpacing: 0,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.black.withValues(alpha: 0.7),
            fontSize: 12,
            height: 1.4,
            letterSpacing: 0,
          ),
        ),
      ],
    );
  }
}

class CokiSwimmingNoteTile extends StatelessWidget {
  const CokiSwimmingNoteTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        color: const Color(0xFF2B254D),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Row(
        children: [
          const CokiSwimmingAvatar(
            image: 'coki_swimming_assets/coki_swimming_avatar_apien.png',
            size: 30,
          ),
          const SizedBox(width: 8),
          const Expanded(
            child: Text(
              'Stella\nI love it!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                height: 1.35,
                letterSpacing: 0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Icon(Icons.more_horiz, color: Colors.white),
        ],
      ),
    );
  }
}

class CokiSwimmingInputDock extends StatelessWidget {
  const CokiSwimmingInputDock({super.key, this.controller, this.onSubmit});

  final TextEditingController? controller;
  final VoidCallback? onSubmit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 8, 15, 10),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              style: const TextStyle(
                color: Color(0xFF100A30),
                fontSize: 14,
                height: 1.2,
                letterSpacing: 0,
              ),
              decoration: InputDecoration(
                hintText: 'Say something',
                hintStyle: TextStyle(
                  color: const Color(0xFF100A30).withValues(alpha: 0.42),
                  fontSize: 12,
                  height: 1.2,
                  letterSpacing: 0,
                ),
                filled: true,
                fillColor: const Color(0xFFF4F5F7),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 11,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          CokiSwimmingTap(
            borderRadius: BorderRadius.circular(20),
            onTap: onSubmit ?? () => CokiSwimmingNotesSheet.show(context),
            child: Image.asset(
              'coki_swimming_assets/coki_swimming_check_disc.png',
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}

class CokiSwimmingTextBox extends StatelessWidget {
  const CokiSwimmingTextBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      minLines: 5,
      maxLines: 5,
      style: const TextStyle(
        color: Color(0xFF100A30),
        fontSize: 16,
        height: 22.4 / 16,
        letterSpacing: 0,
      ),
      decoration: InputDecoration(
        hintText: 'Please enter',
        hintStyle: TextStyle(
          color: const Color(0xFF100A30).withValues(alpha: 0.42),
          fontSize: 16,
          height: 22.4 / 16,
          letterSpacing: 0,
        ),
        counterText: '0/150',
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

class CokiSwimmingNamedField extends StatelessWidget {
  const CokiSwimmingNamedField({
    super.key,
    required this.label,
    required this.maxLines,
  });

  final String label;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            height: 25.2 / 18,
            letterSpacing: 0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 9),
        TextField(
          maxLines: maxLines,
          style: const TextStyle(
            color: Color(0xFF100A30),
            fontSize: 16,
            height: 22.4 / 16,
            letterSpacing: 0,
          ),
          decoration: InputDecoration(
            hintText: 'Please enter',
            hintStyle: TextStyle(
              color: const Color(0xFF100A30).withValues(alpha: 0.42),
              fontSize: 12,
              height: 1.2,
              letterSpacing: 0,
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(maxLines > 1 ? 8 : 6),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}

class CokiSwimmingSettingRow extends StatelessWidget {
  const CokiSwimmingSettingRow({
    super.key,
    required this.label,
    required this.onTap,
  });

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Container(
        height: 46,
        padding: const EdgeInsets.symmetric(horizontal: 13),
        decoration: BoxDecoration(
          color: const Color(0xFF2B254D),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 12),
          ],
        ),
      ),
    );
  }
}

class CokiSwimmingTextScreen extends StatelessWidget {
  const CokiSwimmingTextScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              CokiSwimmingTopBar(title: title),
              const Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
                  child: Text(
                    'Coki Swimming keeps the experience respectful, clear, and safe. Content that harms others, abuses personal data, or violates platform rules is not allowed. By continuing, you agree to use the app responsibly and respect other swimmers.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      height: 1.5,
                      letterSpacing: 0,
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

class CokiSwimmingToast {
  const CokiSwimmingToast._();

  static void show(BuildContext context, String text) {
    final overlay = Overlay.of(context);
    late final OverlayEntry entry;
    entry = OverlayEntry(
      builder: (context) => Positioned.fill(
        child: IgnorePointer(
          child: Center(
            child: Material(
              color: Colors.transparent,
              child: Container(
                constraints: const BoxConstraints(maxWidth: 280),
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 22,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF100A30),
                    fontSize: 14,
                    height: 1.3,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    overlay.insert(entry);
    Timer(const Duration(milliseconds: 1200), entry.remove);
  }
}

class CokiSwimmingLoginPrompt {
  const CokiSwimmingLoginPrompt._();

  static void show(BuildContext context) {
    showGeneralDialog<void>(
      context: context,
      barrierDismissible: false,
      barrierLabel: 'Log in',
      barrierColor: Colors.black.withValues(alpha: 0.55),
      pageBuilder: (context, _, _) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Center(
          child: _CokiSwimmingDialogPanel(
            title: 'Log in',
            detail: 'Please log in to continue this action.',
            actionLabel: 'Log in',
            onAction: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamedAndRemoveUntil(
                CokiSwimmingRoutesPaths.welcome,
                (route) => false,
              );
            },
          ),
        ),
      ),
    );
  }
}

class CokiSwimmingConfirm {
  const CokiSwimmingConfirm._();

  static void show(BuildContext context, VoidCallback onConfirm) {
    showGeneralDialog<void>(
      context: context,
      barrierDismissible: false,
      barrierLabel: 'Delete account',
      barrierColor: Colors.black.withValues(alpha: 0.55),
      pageBuilder: (context, _, _) => Center(
        child: _CokiSwimmingDialogPanel(
          title: 'Delete account',
          detail:
              'This will remove your profile from this device and return to login.',
          actionLabel: 'OK',
          onAction: () {
            Navigator.of(context).pop();
            onConfirm();
            Navigator.of(context).pushNamedAndRemoveUntil(
              CokiSwimmingRoutesPaths.welcome,
              (route) => false,
            );
          },
        ),
      ),
    );
  }
}

class _CokiSwimmingDialogPanel extends StatelessWidget {
  const _CokiSwimmingDialogPanel({
    required this.title,
    required this.detail,
    required this.actionLabel,
    required this.onAction,
  });

  final String title;
  final String detail;
  final String actionLabel;
  final VoidCallback onAction;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: 315,
        padding: const EdgeInsets.fromLTRB(24, 26, 24, 24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF100A30),
                fontSize: 24,
                height: 1.2,
                letterSpacing: 0,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              detail,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF100A30),
                fontSize: 13,
                height: 1.4,
                letterSpacing: 0,
              ),
            ),
            const SizedBox(height: 22),
            CokiSwimmingGradientButton(label: actionLabel, onTap: onAction),
            const SizedBox(height: 10),
            CokiSwimmingPlainButton(
              label: 'Cancel',
              color: const Color(0xFF100A30),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}

class CokiSwimmingReportSheet {
  const CokiSwimmingReportSheet._();

  static void show(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 34),
        child: Container(
          padding: const EdgeInsets.fromLTRB(18, 22, 18, 18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CokiSwimmingSmallPill(
                label: 'Report',
                color: const Color(0xFFF4F5F7),
                textColor: const Color(0xFF100A30),
                onTap: () {
                  Navigator.of(context).pop();
                  CokiSwimmingToast.show(context, 'Submitted');
                },
              ),
              const SizedBox(height: 12),
              CokiSwimmingSmallPill(
                label: 'Shield',
                color: const Color(0xFFF4F5F7),
                textColor: const Color(0xFF100A30),
                onTap: () {
                  Navigator.of(context).pop();
                  CokiSwimmingToast.show(context, 'Shielded');
                },
              ),
              const SizedBox(height: 12),
              CokiSwimmingSmallPill(
                label: 'Cancel',
                color: const Color(0xFF100A30),
                onTap: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CokiSwimmingNotesSheet {
  const CokiSwimmingNotesSheet._();

  static void show(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.sizeOf(context).height * 0.45,
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
        decoration: const BoxDecoration(
          color: Color(0xFF100A30),
          borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
        ),
        child: const SafeArea(
          top: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Comments +',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      CokiSwimmingNoteTile(),
                      CokiSwimmingNoteTile(),
                      CokiSwimmingNoteTile(),
                    ],
                  ),
                ),
              ),
              CokiSwimmingInputDock(),
            ],
          ),
        ),
      ),
    );
  }
}
