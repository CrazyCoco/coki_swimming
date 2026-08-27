part of '../main.dart';

class CokiSwimmingComposeScreen extends StatefulWidget {
  const CokiSwimmingComposeScreen({super.key});

  @override
  State<CokiSwimmingComposeScreen> createState() =>
      _CokiSwimmingComposeScreenState();
}

class _CokiSwimmingComposeScreenState extends State<CokiSwimmingComposeScreen> {
  static const Color _ink = Color(0xFF100A30);
  static const Color _muted = Color(0xFF3A3558);
  static const List<String> _themes = ['Training', 'Lifestyle', 'Community'];

  final TextEditingController _textController = TextEditingController();
  int _selectedTheme = 0;
  String? _selectedImagePath;
  bool _isPickingImage = false;

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  Future<void> _chooseImage() async {
    if (_isPickingImage) return;
    final source = await CokiSwimmingPhotoSourceSheet.show(context);
    if (source == null || !mounted) return;

    setState(() => _isPickingImage = true);
    final result = await CokiSwimmingAvatarService.instance.pick(source);
    if (!mounted) return;
    setState(() => _isPickingImage = false);

    switch (result.status) {
      case CokiSwimmingAvatarPickStatus.selected:
        if (result.path != null) {
          setState(() => _selectedImagePath = result.path);
        }
        break;
      case CokiSwimmingAvatarPickStatus.canceled:
        break;
      case CokiSwimmingAvatarPickStatus.denied:
        CokiSwimmingToast.show(
          context,
          source == CokiSwimmingPhotoSource.camera
              ? 'Camera permission is required to take a photo'
              : 'Photo Library permission is required to choose a photo',
        );
        break;
      case CokiSwimmingAvatarPickStatus.settingsRequired:
        CokiSwimmingPermissionPrompt.show(
          context,
          permissionName: source == CokiSwimmingPhotoSource.camera
              ? 'Camera'
              : 'Photo Library',
        );
        break;
      case CokiSwimmingAvatarPickStatus.invalidFile:
        CokiSwimmingToast.show(context, 'The selected photo is unavailable');
        break;
      case CokiSwimmingAvatarPickStatus.failed:
        CokiSwimmingToast.show(context, 'Unable to select photo');
        break;
    }
  }

  void _release() {
    FocusScope.of(context).unfocus();
    CokiSwimmingToast.show(context, 'Released');
    Navigator.of(context).maybePop();
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
              _buildHeader(context),
              Expanded(
                child: CustomScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SliverPadding(
                      padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                      sliver: SliverList.list(
                        children: [
                          _buildTextBox(),
                          const SizedBox(height: 26),
                          const Text('Theme', style: _sectionTitleStyle),
                          const SizedBox(height: 14),
                          _buildThemeSelector(),
                          const SizedBox(height: 27),
                          const Text(
                            'Upload  (Pic)',
                            style: _sectionTitleStyle,
                          ),
                          const SizedBox(height: 20),
                          _buildUploadTile(),
                        ],
                      ),
                    ),
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Column(
                        children: [
                          const Spacer(),
                          SizedBox(
                            width: 230,
                            height: 53,
                            child: CokiSwimmingGradientButton(
                              label: 'Release',
                              height: 53,
                              fontSize: 20,
                              onTap: _release,
                            ),
                          ),
                          const SizedBox(height: 21),
                        ],
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

  Widget _buildHeader(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: CokiSwimmingBackButton(
            onTap: () => Navigator.of(context).maybePop(),
          ),
        ),
      ),
    );
  }

  Widget _buildTextBox() {
    return Container(
      height: 176,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: TextField(
              controller: _textController,
              maxLength: 150,
              minLines: null,
              maxLines: null,
              expands: true,
              textAlignVertical: TextAlignVertical.top,
              onChanged: (_) => setState(() {}),
              style: const TextStyle(
                color: _ink,
                fontSize: 16,
                height: 1.4,
                letterSpacing: 0,
                fontWeight: FontWeight.w400,
              ),
              decoration: const InputDecoration(
                hintText: 'Please enter',
                hintStyle: TextStyle(
                  color: Color(0xFFA6A6A6),
                  fontSize: 16,
                  height: 1.4,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
                counterText: '',
                border: InputBorder.none,
                contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 38),
              ),
            ),
          ),
          Positioned(
            right: 13,
            bottom: 13,
            child: IgnorePointer(
              child: Text(
                '${_textController.text.characters.length}/150',
                style: const TextStyle(
                  color: Color(0xFFA6A6A6),
                  fontSize: 14,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildThemeSelector() {
    const widths = [95.0, 95.0, 114.0];
    return LayoutBuilder(
      builder: (context, constraints) {
        final scale = math.min(1.0, constraints.maxWidth / 324);
        return Row(
          children: [
            for (var index = 0; index < _themes.length; index++) ...[
              if (index > 0) SizedBox(width: 10 * scale),
              SizedBox(
                width: widths[index] * scale,
                child: CokiSwimmingTap(
                  borderRadius: BorderRadius.circular(19),
                  onTap: () => setState(() => _selectedTheme = index),
                  child: Container(
                    height: 38,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: _selectedTheme == index ? null : _muted,
                      gradient: _selectedTheme == index
                          ? const LinearGradient(
                              colors: [Color(0xFF60D0EE), Color(0xFFD43161)],
                            )
                          : null,
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9),
                        child: Text(
                          _themes[index],
                          maxLines: 1,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            height: 1.1,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ],
        );
      },
    );
  }

  Widget _buildUploadTile() {
    final imagePath = _selectedImagePath;
    return Align(
      alignment: Alignment.centerLeft,
      child: CokiSwimmingTap(
        borderRadius: BorderRadius.circular(20),
        onTap: () => unawaited(_chooseImage()),
        child: Container(
          width: 108,
          height: 108,
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: _isPickingImage
              ? const CupertinoActivityIndicator(color: Color(0xFF5BCBEA))
              : imagePath == null
              ? Image.asset(
                  'coki_swimming_assets/coki_swimming_compose_upload.png',
                  width: 24,
                  height: 23,
                )
              : Image.file(
                  File(imagePath),
                  width: 108,
                  height: 108,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Image.asset(
                    'coki_swimming_assets/coki_swimming_compose_upload.png',
                    width: 24,
                    height: 23,
                  ),
                ),
        ),
      ),
    );
  }

  static const TextStyle _sectionTitleStyle = TextStyle(
    color: Colors.white,
    fontSize: 20,
    height: 1.3,
    letterSpacing: 0,
    fontWeight: FontWeight.w900,
  );
}
