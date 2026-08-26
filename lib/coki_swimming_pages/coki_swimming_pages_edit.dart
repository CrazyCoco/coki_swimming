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
  String _avatarPath =
      'coki_swimming_assets/coki_swimming_avatar_placeholder.png';
  String? _pendingAvatarPath;
  bool _isLoading = true;
  bool _isSaving = false;
  bool _isPickingAvatar = false;

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
    String? persistedAvatarPath;
    var profileUpdated = false;
    try {
      final pendingAvatarPath = _pendingAvatarPath;
      if (pendingAvatarPath != null) {
        persistedAvatarPath = await CokiSwimmingAvatarService.instance.persist(
          temporaryPath: pendingAvatarPath,
          memberId: widget.memberId,
        );
      }
      final savedAvatarPath = persistedAvatarPath ?? _avatarPath;
      await CokiSwimmingDatabase.instance.completeProfile(
        memberId: widget.memberId,
        displayName: _nameController.text,
        avatarPath: savedAvatarPath,
        biography: _biographyController.text,
      );
      profileUpdated = true;
      if (persistedAvatarPath != null) {
        await CokiSwimmingAvatarService.instance.deleteOwnedAvatar(
          _avatarPath,
          widget.memberId,
        );
        _avatarPath = persistedAvatarPath;
        _pendingAvatarPath = null;
      }
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
      if (!profileUpdated) {
        await CokiSwimmingAvatarService.instance.deleteOwnedAvatar(
          persistedAvatarPath,
          widget.memberId,
        );
      }
      if (mounted) CokiSwimmingToast.show(context, error.message);
    } catch (_) {
      if (!profileUpdated) {
        await CokiSwimmingAvatarService.instance.deleteOwnedAvatar(
          persistedAvatarPath,
          widget.memberId,
        );
      }
      if (mounted) CokiSwimmingToast.show(context, 'Unable to save profile');
    } finally {
      if (mounted) setState(() => _isSaving = false);
    }
  }

  Future<void> _chooseAvatar() async {
    if (_isPickingAvatar || _isSaving) return;
    final source = await CokiSwimmingPhotoSourceSheet.show(context);
    if (source == null || !mounted) return;

    setState(() => _isPickingAvatar = true);
    final result = await CokiSwimmingAvatarService.instance.pick(source);
    if (!mounted) return;
    setState(() => _isPickingAvatar = false);

    switch (result.status) {
      case CokiSwimmingAvatarPickStatus.selected:
        if (result.path != null) {
          setState(() => _pendingAvatarPath = result.path);
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
                  showReturnButton: !widget.registrationMode,
                  centerTitle: widget.registrationMode,
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
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
                          children: [
                            Center(
                              child: CokiSwimmingTap(
                                borderRadius: BorderRadius.circular(45),
                                onTap: () => unawaited(_chooseAvatar()),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    CokiSwimmingAvatar(
                                      image: _pendingAvatarPath ?? _avatarPath,
                                      size: 82,
                                    ),
                                    Positioned(
                                      right: -1,
                                      top: -1,
                                      child: Image.asset(
                                        'coki_swimming_assets/coki_swimming_camera_round.png',
                                        width: 28,
                                        height: 28,
                                      ),
                                    ),
                                    if (_isPickingAvatar)
                                      const Positioned.fill(
                                        child: Center(
                                          child: CupertinoActivityIndicator(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 42),
                            CokiSwimmingNamedField(
                              label: 'Name',
                              maxLines: 1,
                              controller: _nameController,
                              hintText: 'Enter your name',
                            ),
                            const SizedBox(height: 25),
                            CokiSwimmingNamedField(
                              label: 'About me',
                              maxLines: 4,
                              controller: _biographyController,
                            ),
                            const SizedBox(height: 138),
                            Center(
                              child: SizedBox(
                                width: 229,
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
