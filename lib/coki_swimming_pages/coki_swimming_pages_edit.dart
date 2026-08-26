part of '../main.dart';

class CokiSwimmingEditScreen extends StatefulWidget {
  const CokiSwimmingEditScreen({
    super.key,
    required this.memberId,
    required this.registrationMode,
    required this.onSaved,
  });

  final int memberId;
  final bool registrationMode;
  final Future<void> Function() onSaved;

  @override
  State<CokiSwimmingEditScreen> createState() => _CokiSwimmingEditScreenState();
}

class _CokiSwimmingEditScreenState extends State<CokiSwimmingEditScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _biographyController = TextEditingController();
  String _avatarPath = 'coki_swimming_assets/coki_swimming_avatar_coki.png';
  bool _isLoading = true;
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    unawaited(_loadMember());
  }

  Future<void> _loadMember() async {
    try {
      final member = await CokiSwimmingDatabase.instance.memberById(
        widget.memberId,
      );
      if (!mounted) return;
      if (member == null) {
        CokiSwimmingToast.show(context, 'Account no longer exists');
        Navigator.of(context).pushNamedAndRemoveUntil(
          CokiSwimmingRoutesPaths.welcome,
          (route) => false,
        );
        return;
      }
      _nameController.text = member.displayName ?? '';
      _biographyController.text = member.biography ?? '';
      setState(() {
        _avatarPath = member.avatarPath ?? _avatarPath;
        _isLoading = false;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() => _isLoading = false);
      CokiSwimmingToast.show(context, 'Unable to load profile');
    }
  }

  Future<void> _save() async {
    if (_isSaving || _isLoading) return;
    if (_nameController.text.trim().isEmpty) {
      CokiSwimmingToast.show(context, 'Please enter your name');
      return;
    }
    setState(() => _isSaving = true);
    try {
      await CokiSwimmingDatabase.instance.completeProfile(
        memberId: widget.memberId,
        displayName: _nameController.text,
        avatarPath: _avatarPath,
        biography: _biographyController.text,
      );
      await widget.onSaved();
      if (!mounted) return;
      CokiSwimmingToast.show(context, 'Saved');
      if (widget.registrationMode) {
        Navigator.of(context).pushNamedAndRemoveUntil(
          CokiSwimmingRoutesPaths.hub,
          (route) => false,
        );
      } else {
        Navigator.of(context).maybePop();
      }
    } on CokiSwimmingStorageException catch (error) {
      if (mounted) CokiSwimmingToast.show(context, error.message);
    } catch (_) {
      if (mounted) CokiSwimmingToast.show(context, 'Unable to save profile');
    } finally {
      if (mounted) setState(() => _isSaving = false);
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _biographyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: !widget.registrationMode,
      child: CokiSwimmingBackground(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: true,
          body: SafeArea(
            child: Column(
              children: [
                CokiSwimmingTopBar(
                  title: widget.registrationMode ? 'Complete profile' : 'Edit',
                  onReturn: widget.registrationMode
                      ? null
                      : () => Navigator.of(context).maybePop(),
                ),
                Expanded(
                  child: _isLoading
                      ? const Center(
                          child: CupertinoActivityIndicator(
                            color: Colors.white,
                          ),
                        )
                      : ListView(
                          keyboardDismissBehavior:
                              ScrollViewKeyboardDismissBehavior.onDrag,
                          padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
                          children: [
                            Center(
                              child: CokiSwimmingTap(
                                borderRadius: BorderRadius.circular(45),
                                onTap: () => setState(() {
                                  _avatarPath =
                                      _avatarPath.endsWith(
                                        'coki_swimming_avatar_coki.png',
                                      )
                                      ? 'coki_swimming_assets/coki_swimming_avatar_apien.png'
                                      : 'coki_swimming_assets/coki_swimming_avatar_coki.png';
                                }),
                                child: Stack(
                                  children: [
                                    CokiSwimmingAvatar(
                                      image: _avatarPath,
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
                            ),
                            const SizedBox(height: 32),
                            CokiSwimmingNamedField(
                              label: 'Name',
                              maxLines: 1,
                              controller: _nameController,
                              hintText: 'Enter your name',
                            ),
                            const SizedBox(height: 20),
                            CokiSwimmingNamedField(
                              label: 'About me',
                              maxLines: 4,
                              controller: _biographyController,
                            ),
                            const SizedBox(height: 96),
                            Center(
                              child: SizedBox(
                                width: 190,
                                child: CokiSwimmingGradientButton(
                                  label: _isSaving ? 'Saving...' : 'Save',
                                  onTap: _isSaving ? () {} : _save,
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
      ),
    );
  }
}
