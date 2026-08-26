part of '../main.dart';

class CokiSwimmingPhotoSourceSheet {
  const CokiSwimmingPhotoSourceSheet._();

  static Future<CokiSwimmingPhotoSource?> show(BuildContext context) {
    return showModalBottomSheet<CokiSwimmingPhotoSource>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => const _CokiSwimmingPhotoSourceContent(),
    );
  }
}

class _CokiSwimmingPhotoSourceContent extends StatelessWidget {
  const _CokiSwimmingPhotoSourceContent();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
      decoration: const BoxDecoration(
        color: Color(0xFF100A30),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 38,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.45),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 18),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Profile photo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(height: 14),
            _CokiSwimmingPhotoSourceAction(
              icon: CupertinoIcons.camera_fill,
              label: 'Take Photo',
              onTap: () =>
                  Navigator.of(context).pop(CokiSwimmingPhotoSource.camera),
            ),
            const SizedBox(height: 10),
            _CokiSwimmingPhotoSourceAction(
              icon: CupertinoIcons.photo_fill,
              label: 'Choose from Photo Library',
              onTap: () =>
                  Navigator.of(context).pop(CokiSwimmingPhotoSource.library),
            ),
            const SizedBox(height: 10),
            CokiSwimmingPlainButton(
              label: 'Cancel',
              color: Colors.white,
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}

class _CokiSwimmingPhotoSourceAction extends StatelessWidget {
  const _CokiSwimmingPhotoSourceAction({
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
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Container(
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 23),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const Icon(
              CupertinoIcons.chevron_right,
              color: Colors.white70,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
