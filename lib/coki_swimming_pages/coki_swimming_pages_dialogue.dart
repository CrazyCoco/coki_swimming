part of '../main.dart';

class CokiSwimmingDialogueScreen extends StatefulWidget {
  const CokiSwimmingDialogueScreen({super.key});

  @override
  State<CokiSwimmingDialogueScreen> createState() =>
      _CokiSwimmingDialogueScreenState();
}

class _CokiSwimmingDialogueScreenState
    extends State<CokiSwimmingDialogueScreen> {
  static const Color _ink = Color(0xFF100A30);
  static const Color _surface = Color(0xFFF1F2F4);
  static const Color _cyan = Color(0xFF5BCBEA);
  static const Color _pink = Color(0xFFD72F63);

  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List<String> _sentLines = [];

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _appendLine() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    setState(() {
      _sentLines.add(text);
      _controller.clear();
    });
    FocusScope.of(context).unfocus();
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
  }

  void _scrollToBottom() {
    if (!_scrollController.hasClients) return;
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 260),
      curve: Curves.easeOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _ink,
      resizeToAvoidBottomInset: true,
      body: CokiSwimmingBackground(
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              _buildHeader(context),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: _surface,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(child: _buildConversation()),
                      _buildInput(context),
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

  Widget _buildHeader(BuildContext context) {
    return SizedBox(
      height: 68,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          children: [
            CokiSwimmingBackButton(onTap: () => Navigator.of(context).pop()),
            const SizedBox(width: 7),
            _buildAvatar(
              'coki_swimming_assets/coki_swimming_apien_portrait.png',
              size: 40,
              borderColor: Colors.white,
              borderWidth: 1.5,
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Text(
                'Apien',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  height: 1.1,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            _buildHeaderAction(
              tooltip: 'Photo',
              asset: 'coki_swimming_assets/coki_swimming_image_glyph.png',
              assetSize: 32,
              onTap: () => CokiSwimmingPhotoSourceSheet.show(context),
            ),
            _buildHeaderAction(
              tooltip: 'Video call',
              asset: 'coki_swimming_assets/coki_swimming_video_glyph.png',
              assetSize: 32,
              onTap: () =>
                  Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.call),
            ),
            _buildHeaderAction(
              tooltip: 'More',
              asset: 'coki_swimming_assets/coki_swimming_dialogue_more.png',
              assetSize: 40,
              onTap: () => CokiSwimmingReportSheet.show(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderAction({
    required String tooltip,
    required String asset,
    required double assetSize,
    required VoidCallback onTap,
  }) {
    return Tooltip(
      message: tooltip,
      child: CokiSwimmingTap(
        borderRadius: BorderRadius.circular(22),
        onTap: onTap,
        child: SizedBox(
          width: 44,
          height: 44,
          child: Center(
            child: Image.asset(asset, width: assetSize, height: assetSize),
          ),
        ),
      ),
    );
  }

  Widget _buildConversation() {
    return ListView(
      controller: _scrollController,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
      children: [
        _buildIncomingMessage(),
        const SizedBox(height: 12),
        _buildOutgoingMessage(
          'OK, if you have anything you\nwant to know, you can ask me',
          showAvatar: true,
        ),
        const SizedBox(height: 7),
        _buildPhotoMessage(),
        for (final line in _sentLines) ...[
          const SizedBox(height: 16),
          _buildOutgoingMessage(line),
        ],
      ],
    );
  }

  Widget _buildIncomingMessage() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildAvatar(
          'coki_swimming_assets/coki_swimming_apien_portrait.png',
          size: 44,
          borderColor: _cyan,
          borderWidth: 1,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 184),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 11),
              decoration: BoxDecoration(
                color: _cyan,
                borderRadius: BorderRadius.circular(9),
              ),
              child: const Text(
                'Hello, I am interested in\nyour stuff.',
                style: TextStyle(
                  color: _ink,
                  fontSize: 15,
                  height: 1.33,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text('12:00', style: _timeStyle),
          ],
        ),
      ],
    );
  }

  Widget _buildOutgoingMessage(String text, {bool showAvatar = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 226),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 11),
              decoration: BoxDecoration(
                color: _pink,
                borderRadius: BorderRadius.circular(9),
              ),
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  height: 1.33,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text('12:00', style: _timeStyle),
          ],
        ),
        if (showAvatar) ...[
          const SizedBox(width: 10),
          _buildAvatar(
            'coki_swimming_assets/coki_swimming_stella_portrait.png',
            size: 44,
            borderColor: _pink,
            borderWidth: 1,
          ),
        ],
      ],
    );
  }

  Widget _buildPhotoMessage() {
    return Padding(
      padding: const EdgeInsets.only(right: 54),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'coki_swimming_assets/coki_swimming_dialogue_photo.png',
                width: 154,
                height: 154,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            const Text('12:00', style: _timeStyle),
          ],
        ),
      ),
    );
  }

  Widget _buildInput(BuildContext context) {
    final keyboardVisible = MediaQuery.viewInsetsOf(context).bottom > 0;
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 8, 20, keyboardVisible ? 10 : 22),
      child: Container(
        height: 55,
        padding: const EdgeInsets.only(left: 16, right: 8),
        decoration: BoxDecoration(
          color: _cyan,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                textInputAction: TextInputAction.send,
                onSubmitted: (_) => _appendLine(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
                decoration: const InputDecoration(
                  hintText: 'Say something',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.2,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 18),
                ),
              ),
            ),
            Tooltip(
              message: 'Send',
              child: IconButton(
                onPressed: _appendLine,
                icon: const Icon(CupertinoIcons.paperplane_fill),
                color: Colors.white,
                iconSize: 24,
                splashRadius: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar(
    String asset, {
    required double size,
    required Color borderColor,
    required double borderWidth,
  }) {
    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(borderWidth),
      decoration: BoxDecoration(shape: BoxShape.circle, color: borderColor),
      child: ClipOval(child: Image.asset(asset, fit: BoxFit.cover)),
    );
  }

  static const TextStyle _timeStyle = TextStyle(
    color: Color(0xFFA6A6A6),
    fontSize: 14,
    height: 1.2,
    letterSpacing: 0,
    fontWeight: FontWeight.w400,
  );
}
