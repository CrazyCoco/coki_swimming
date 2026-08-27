part of '../main.dart';

class CokiSwimmingGuideDialogueScreen extends StatefulWidget {
  const CokiSwimmingGuideDialogueScreen({super.key, required this.memberId});

  final int memberId;

  @override
  State<CokiSwimmingGuideDialogueScreen> createState() =>
      _CokiSwimmingGuideDialogueScreenState();
}

class _CokiSwimmingGuideDialogueScreenState
    extends State<CokiSwimmingGuideDialogueScreen>
    with WidgetsBindingObserver {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final FocusNode _focusNode = FocusNode();
  final DateTime _openedAt = DateTime.now();
  bool _waiting = false;
  int _visibleLineCount = -1;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _focusNode.removeListener(_handleFocusChange);
    _controller.dispose();
    _scrollController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    _scrollToLatest();
  }

  void _handleFocusChange() {
    if (_focusNode.hasFocus) _scrollToLatest();
  }

  Future<void> _send() async {
    final question = _controller.text.trim();
    if (question.isEmpty || _waiting) return;
    setState(() {
      _waiting = true;
      _controller.clear();
    });
    try {
      await CokiSwimmingDatabase.instance.addGuideLine(
        memberId: widget.memberId,
        content: question,
        fromGuide: false,
      );
      final history = await CokiSwimmingDatabase.instance.recentGuideLines(
        widget.memberId,
      );
      final reply = await CokiSwimmingGuideService.instance.requestReply(
        history
            .map(
              (line) => CokiSwimmingGuideTurn(
                content: line.content,
                isFromGuide: line.fromGuide,
              ),
            )
            .toList(growable: false),
      );
      await CokiSwimmingDatabase.instance.addGuideLine(
        memberId: widget.memberId,
        content: reply,
        fromGuide: true,
      );
    } on CokiSwimmingGuideRequestException catch (error) {
      if (mounted) CokiSwimmingToast.show(context, error.description);
    } on CokiSwimmingGuideConfigurationException catch (error) {
      if (mounted) CokiSwimmingToast.show(context, error.description);
    } on CokiSwimmingStorageException catch (error) {
      if (mounted) CokiSwimmingToast.show(context, error.message);
    } catch (_) {
      if (mounted) {
        CokiSwimmingToast.show(
          context,
          'Unable to complete the Coki AI request. Please try again.',
        );
      }
    } finally {
      if (mounted) setState(() => _waiting = false);
    }
  }

  void _scrollToLatest() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !_scrollController.hasClients) return;
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 260),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (context, constraints) {
            final designScale = constraints.maxWidth / 375;
            final panelTop = 352 * designScale;
            final keyboardInset = MediaQuery.viewInsetsOf(context).bottom;

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
                  bottom: keyboardInset,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(36),
                      ),
                    ),
                    child: StreamBuilder<CokiSwimmingMember?>(
                      stream: CokiSwimmingDatabase.instance.watchMemberById(
                        widget.memberId,
                      ),
                      builder: (context, memberSnapshot) {
                        final avatarPath =
                            memberSnapshot.data?.avatarPath ??
                            'coki_swimming_assets/coki_swimming_avatar_placeholder.png';
                        return Stack(
                          children: [
                            Positioned.fill(
                              child: StreamBuilder<List<CokiSwimmingGuideLine>>(
                                stream: CokiSwimmingDatabase.instance
                                    .watchGuideLines(widget.memberId),
                                builder: (context, snapshot) {
                                  final lines = snapshot.data ?? const [];
                                  final displayedCount =
                                      lines.length + 1 + (_waiting ? 1 : 0);
                                  if (_visibleLineCount != displayedCount) {
                                    _visibleLineCount = displayedCount;
                                    _scrollToLatest();
                                  }
                                  return ListView.builder(
                                    controller: _scrollController,
                                    keyboardDismissBehavior:
                                        ScrollViewKeyboardDismissBehavior
                                            .onDrag,
                                    physics: const BouncingScrollPhysics(),
                                    padding: const EdgeInsets.fromLTRB(
                                      20,
                                      26,
                                      20,
                                      114,
                                    ),
                                    itemCount: displayedCount,
                                    itemBuilder: (context, index) {
                                      if (index == 0) {
                                        return _CokiSwimmingGuideBubble(
                                          content:
                                              'Hi there! I’m Coki, your AI buddy for all things swimming.',
                                          fromGuide: true,
                                          createdAt: _openedAt,
                                          avatarPath: avatarPath,
                                        );
                                      }
                                      final lineIndex = index - 1;
                                      if (lineIndex == lines.length) {
                                        return _CokiSwimmingGuideWaitingBubble(
                                          createdAt: DateTime.now(),
                                        );
                                      }
                                      final line = lines[lineIndex];
                                      return _CokiSwimmingGuideBubble(
                                        content: line.content,
                                        fromGuide: line.fromGuide,
                                        createdAt: line.createdAt,
                                        avatarPath: avatarPath,
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            Positioned(
                              left: 20,
                              right: 20,
                              bottom: 22,
                              child: _CokiSwimmingGuideComposer(
                                controller: _controller,
                                focusNode: _focusNode,
                                waiting: _waiting,
                                onSend: _send,
                                onFocus: _scrollToLatest,
                              ),
                            ),
                          ],
                        );
                      },
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

class _CokiSwimmingGuideBubble extends StatelessWidget {
  const _CokiSwimmingGuideBubble({
    required this.content,
    required this.fromGuide,
    required this.createdAt,
    required this.avatarPath,
  });

  final String content;
  final bool fromGuide;
  final DateTime createdAt;
  final String avatarPath;

  @override
  Widget build(BuildContext context) {
    final bubble = Container(
      constraints: BoxConstraints(maxWidth: fromGuide ? 265 : 192),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: fromGuide ? const Color(0xFFD43161) : const Color(0xFF60D0EE),
        borderRadius: BorderRadius.circular(10),
      ),
      child: fromGuide
          ? SelectableText(
              content,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.35,
                letterSpacing: 0,
                fontWeight: FontWeight.w400,
              ),
            )
          : Text(
              content,
              style: const TextStyle(
                color: Color(0xFF100A30),
                fontSize: 14,
                height: 1.35,
                letterSpacing: 0,
                fontWeight: FontWeight.w400,
              ),
            ),
    );

    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        children: [
          Text(
            _cokiSwimmingGuideTime(createdAt),
            style: const TextStyle(
              color: Color(0xFF100A30),
              fontSize: 16,
              height: 1.2,
              letterSpacing: 0,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: fromGuide
                ? MainAxisAlignment.start
                : MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: fromGuide
                ? [
                    Image.asset(
                      'coki_swimming_assets/coki_swimming_guide_portrait.png',
                      width: 44,
                      height: 44,
                    ),
                    const SizedBox(width: 12),
                    Flexible(child: bubble),
                  ]
                : [
                    Flexible(child: bubble),
                    const SizedBox(width: 14),
                    _CokiSwimmingGuideMemberPortrait(avatarPath: avatarPath),
                  ],
          ),
        ],
      ),
    );
  }
}

class _CokiSwimmingGuideMemberPortrait extends StatelessWidget {
  const _CokiSwimmingGuideMemberPortrait({required this.avatarPath});

  final String avatarPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      padding: const EdgeInsets.all(1.5),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [Color(0xFF60D0EE), Color(0xFFAD99C2), Color(0xFFD43161)],
          stops: [0, 0.4704, 1],
        ),
      ),
      child: ClipOval(
        child: CokiSwimmingAvatarImage(path: avatarPath, width: 41, height: 41),
      ),
    );
  }
}

class _CokiSwimmingGuideWaitingBubble extends StatelessWidget {
  const _CokiSwimmingGuideWaitingBubble({required this.createdAt});

  final DateTime createdAt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        children: [
          Text(
            _cokiSwimmingGuideTime(createdAt),
            style: const TextStyle(
              color: Color(0xFF100A30),
              fontSize: 16,
              height: 1.2,
              letterSpacing: 0,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'coki_swimming_assets/coki_swimming_guide_portrait.png',
                width: 44,
                height: 44,
              ),
              const SizedBox(width: 12),
              Container(
                width: 58,
                height: 44,
                decoration: BoxDecoration(
                  color: const Color(0xFFD43161),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: CupertinoActivityIndicator(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CokiSwimmingGuideComposer extends StatelessWidget {
  const _CokiSwimmingGuideComposer({
    required this.controller,
    required this.focusNode,
    required this.waiting,
    required this.onSend,
    required this.onFocus,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final bool waiting;
  final VoidCallback onSend;
  final VoidCallback onFocus;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.fromLTRB(14, 0, 6, 0),
      decoration: BoxDecoration(
        color: const Color(0xFF60D0EE),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              focusNode: focusNode,
              enabled: !waiting,
              onTap: onFocus,
              onSubmitted: (_) => onSend(),
              textInputAction: TextInputAction.send,
              maxLines: 1,
              cursorColor: Colors.white,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                height: 1.25,
                letterSpacing: 0,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                hintText: waiting ? 'Coki is thinking...' : 'Say something',
                hintStyle: TextStyle(
                  color: Colors.white.withValues(alpha: 0.96),
                  fontSize: 16,
                  height: 1.25,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
                border: InputBorder.none,
                isCollapsed: true,
              ),
            ),
          ),
          CokiSwimmingTap(
            borderRadius: BorderRadius.circular(22),
            onTap: waiting ? () {} : onSend,
            child: SizedBox(
              width: 44,
              height: 44,
              child: Center(
                child: waiting
                    ? const CupertinoActivityIndicator(color: Colors.white)
                    : Image.asset(
                        'coki_swimming_assets/coki_swimming_guide_submit.png',
                        width: 24,
                        height: 24,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String _cokiSwimmingGuideTime(DateTime value) {
  final hour = value.hour.toString().padLeft(2, '0');
  final minute = value.minute.toString().padLeft(2, '0');
  return '$hour:$minute';
}
