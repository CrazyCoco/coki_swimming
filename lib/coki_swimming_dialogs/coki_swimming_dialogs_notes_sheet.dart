part of '../main.dart';

class CokiSwimmingNotesSheet {
  const CokiSwimmingNotesSheet._();

  static void showForClip(BuildContext context) {
    showGeneralDialog<void>(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.transparent,
      transitionDuration: const Duration(milliseconds: 220),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position:
                Tween<Offset>(
                  begin: const Offset(0, 0.04),
                  end: Offset.zero,
                ).animate(
                  CurvedAnimation(
                    parent: animation,
                    curve: Curves.easeOutCubic,
                  ),
                ),
            child: child,
          ),
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) =>
          const _CokiSwimmingClipNotesLayer(),
    );
  }

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

class _CokiSwimmingClipNotesLayer extends StatefulWidget {
  const _CokiSwimmingClipNotesLayer();

  @override
  State<_CokiSwimmingClipNotesLayer> createState() =>
      _CokiSwimmingClipNotesLayerState();
}

class _CokiSwimmingClipNotesLayerState
    extends State<_CokiSwimmingClipNotesLayer> {
  final TextEditingController _entryController = TextEditingController();

  @override
  void dispose() {
    _entryController.dispose();
    super.dispose();
  }

  void _submitEntry() {
    if (_entryController.text.trim().isEmpty) return;
    _entryController.clear();
    FocusManager.instance.primaryFocus?.unfocus();
    CokiSwimmingToast.show(context, 'Sent');
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: Color(0xFF100A30),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Material(
        color: Colors.transparent,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'coki_swimming_assets/coki_swimming_notes_backdrop.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
              filterQuality: FilterQuality.high,
            ),
            AnimatedPadding(
              duration: const Duration(milliseconds: 180),
              curve: Curves.easeOut,
              padding: EdgeInsets.only(bottom: mediaQuery.viewInsets.bottom),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: mediaQuery.size.height * 0.625,
                  decoration: const BoxDecoration(
                    color: Color(0xFF100A30),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 44,
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 0,
                                top: 2,
                                child: Text(
                                  'Comments',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    height: 1.2,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 119,
                                top: 0,
                                child: Image.asset(
                                  'coki_swimming_assets/coki_swimming_community_sparkles.png',
                                  width: 18,
                                  height: 14,
                                ),
                              ),
                              Positioned(
                                left: 0,
                                bottom: 0,
                                child: Image.asset(
                                  'coki_swimming_assets/coki_swimming_community_underline.png',
                                  width: 54,
                                  height: 4,
                                ),
                              ),
                              Positioned(
                                right: -10,
                                top: -8,
                                child: CokiSwimmingTap(
                                  borderRadius: BorderRadius.circular(22),
                                  onTap: () => Navigator.of(context).pop(),
                                  child: const SizedBox(
                                    width: 44,
                                    height: 44,
                                    child: Icon(
                                      Icons.close_rounded,
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 3),
                        Expanded(
                          child: ListView.separated(
                            keyboardDismissBehavior:
                                ScrollViewKeyboardDismissBehavior.onDrag,
                            physics: const BouncingScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemCount: 4,
                            separatorBuilder: (_, _) =>
                                const SizedBox(height: 10),
                            itemBuilder: (context, index) =>
                                const _CokiSwimmingClipNoteEntry(),
                          ),
                        ),
                        _CokiSwimmingClipNoteInput(
                          controller: _entryController,
                          onSubmit: _submitEntry,
                        ),
                        const SizedBox(height: 27),
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

class _CokiSwimmingClipNoteEntry extends StatelessWidget {
  const _CokiSwimmingClipNoteEntry();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 82,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(0xFF3A3558),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 16,
              top: 14,
              child: Image.asset(
                'coki_swimming_assets/coki_swimming_stella_portrait.png',
                width: 34,
                height: 34,
                filterQuality: FilterQuality.high,
              ),
            ),
            const Positioned(
              left: 60,
              top: 20,
              right: 52,
              child: Text(
                'Stella',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.1,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const Positioned(
              left: 16,
              right: 16,
              bottom: 15,
              child: Text(
                'I love it!',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              right: 8,
              top: 8,
              child: CokiSwimmingTap(
                borderRadius: BorderRadius.circular(20),
                onTap: () => CokiSwimmingToast.show(context, 'Options'),
                child: const SizedBox(
                  width: 40,
                  height: 40,
                  child: Icon(Icons.more_horiz, color: Colors.white, size: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CokiSwimmingClipNoteInput extends StatelessWidget {
  const _CokiSwimmingClipNoteInput({
    required this.controller,
    required this.onSubmit,
  });

  final TextEditingController controller;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                textInputAction: TextInputAction.send,
                onSubmitted: (_) => onSubmit(),
                style: const TextStyle(
                  color: Color(0xFF100A30),
                  fontSize: 16,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  hintText: 'Say something',
                  hintStyle: TextStyle(
                    color: const Color(0xFF100A30).withValues(alpha: 0.42),
                    fontSize: 16,
                    height: 1.2,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.fromLTRB(16, 17, 8, 16),
                ),
              ),
            ),
            CokiSwimmingTap(
              borderRadius: BorderRadius.circular(24),
              onTap: onSubmit,
              child: const SizedBox(
                width: 52,
                height: 55,
                child: Icon(
                  Icons.send_rounded,
                  color: Color(0xFFD92E60),
                  size: 26,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
