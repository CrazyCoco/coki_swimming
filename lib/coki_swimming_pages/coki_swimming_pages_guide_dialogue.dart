part of '../main.dart';

class CokiSwimmingGuideDialogueScreen extends StatefulWidget {
  const CokiSwimmingGuideDialogueScreen({super.key, required this.memberId});

  final int memberId;

  @override
  State<CokiSwimmingGuideDialogueScreen> createState() =>
      _CokiSwimmingGuideDialogueScreenState();
}

class _CokiSwimmingGuideDialogueScreenState
    extends State<CokiSwimmingGuideDialogueScreen> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final FocusNode _focusNode = FocusNode();
  bool _waiting = false;
  int _visibleLineCount = -1;

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    _focusNode.dispose();
    super.dispose();
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
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: [
              const CokiSwimmingTopBar(title: 'Coki AI', centerTitle: true),
              Expanded(
                child: StreamBuilder<List<CokiSwimmingGuideLine>>(
                  stream: CokiSwimmingDatabase.instance.watchGuideLines(
                    widget.memberId,
                  ),
                  builder: (context, snapshot) {
                    final lines = snapshot.data ?? const [];
                    final displayedCount = lines.length + (_waiting ? 1 : 0);
                    if (_visibleLineCount != displayedCount) {
                      _visibleLineCount = displayedCount;
                      _scrollToLatest();
                    }
                    if (snapshot.connectionState == ConnectionState.waiting &&
                        lines.isEmpty) {
                      return const Center(
                        child: CupertinoActivityIndicator(color: Colors.white),
                      );
                    }
                    if (lines.isEmpty && !_waiting) {
                      return _CokiSwimmingGuideEmptyState(
                        onSuggestion: (suggestion) {
                          _controller.text = suggestion;
                          _controller.selection = TextSelection.collapsed(
                            offset: suggestion.length,
                          );
                          _focusNode.requestFocus();
                        },
                      );
                    }
                    return ListView.builder(
                      controller: _scrollController,
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                      itemCount: displayedCount,
                      itemBuilder: (context, index) {
                        if (index == lines.length) {
                          return const _CokiSwimmingGuideWaitingBubble();
                        }
                        return _CokiSwimmingGuideBubble(line: lines[index]);
                      },
                    );
                  },
                ),
              ),
              _CokiSwimmingGuideComposer(
                controller: _controller,
                focusNode: _focusNode,
                waiting: _waiting,
                onSend: _send,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CokiSwimmingGuideEmptyState extends StatelessWidget {
  const _CokiSwimmingGuideEmptyState({required this.onSuggestion});

  final ValueChanged<String> onSuggestion;

  @override
  Widget build(BuildContext context) {
    const suggestions = [
      'How can I improve my freestyle breathing?',
      'Build a 30-minute swim workout for me.',
    ];
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(28, 48, 28, 24),
      child: Column(
        children: [
          Image.asset(
            'coki_swimming_assets/coki_swimming_landing_companion.png',
            width: 132,
            height: 132,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 18),
          const Text(
            'Ask Coki about swimming',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              height: 1.25,
              letterSpacing: 0,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Techniques, training plans and swim questions are all welcome.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.7),
              fontSize: 14,
              height: 1.45,
              letterSpacing: 0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 28),
          for (final suggestion in suggestions) ...[
            CokiSwimmingTap(
              borderRadius: BorderRadius.circular(16),
              onTap: () => onSuggestion(suggestion),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.18),
                  ),
                ),
                child: Text(
                  suggestion,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    height: 1.35,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ],
      ),
    );
  }
}

class _CokiSwimmingGuideBubble extends StatelessWidget {
  const _CokiSwimmingGuideBubble({required this.line});

  final CokiSwimmingGuideLine line;

  @override
  Widget build(BuildContext context) {
    final fromGuide = line.fromGuide;
    return Align(
      alignment: fromGuide ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 285),
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 11),
        decoration: BoxDecoration(
          color: fromGuide ? const Color(0xFF60D0EE) : const Color(0xFFD43161),
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(16),
            topRight: const Radius.circular(16),
            bottomLeft: Radius.circular(fromGuide ? 4 : 16),
            bottomRight: Radius.circular(fromGuide ? 16 : 4),
          ),
        ),
        child: fromGuide
            ? SelectableText(
                line.content,
                style: const TextStyle(
                  color: Color(0xFF100A30),
                  fontSize: 14,
                  height: 1.45,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w600,
                ),
              )
            : Text(
                line.content,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  height: 1.45,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
    );
  }
}

class _CokiSwimmingGuideWaitingBubble extends StatelessWidget {
  const _CokiSwimmingGuideWaitingBubble();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 58,
        height: 42,
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: const Color(0xFF60D0EE),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(4),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: const Center(
          child: CupertinoActivityIndicator(color: Color(0xFF100A30)),
        ),
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
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final bool waiting;
  final VoidCallback onSend;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(14, 10, 14, 12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.16),
            blurRadius: 18,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              focusNode: focusNode,
              enabled: !waiting,
              minLines: 1,
              maxLines: 4,
              textInputAction: TextInputAction.newline,
              style: const TextStyle(
                color: Color(0xFF100A30),
                fontSize: 14,
                height: 1.35,
                letterSpacing: 0,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                hintText: waiting ? 'Coki is thinking...' : 'Ask Coki',
                hintStyle: TextStyle(
                  color: const Color(0xFF100A30).withValues(alpha: 0.42),
                  fontSize: 14,
                  height: 1.35,
                  letterSpacing: 0,
                ),
                filled: true,
                fillColor: const Color(0xFFF1F2F5),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
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
            borderRadius: BorderRadius.circular(21),
            onTap: waiting ? () {} : onSend,
            child: SizedBox(
              width: 42,
              height: 42,
              child: waiting
                  ? const CupertinoActivityIndicator(color: Color(0xFFD43161))
                  : Image.asset(
                      'coki_swimming_assets/coki_swimming_check_disc.png',
                      fit: BoxFit.contain,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
