part of '../main.dart';

class CokiSwimmingReleaseSheet {
  const CokiSwimmingReleaseSheet._();

  static void show(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 18),
          child: Container(
            padding: const EdgeInsets.fromLTRB(18, 22, 18, 18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CokiSwimmingSmallPill(
                  label: 'Photo',
                  color: const Color(0xFF60D0EE),
                  onTap: () {
                    Navigator.of(sheetContext).pop();
                    Navigator.of(
                      context,
                    ).pushNamed(CokiSwimmingRoutesPaths.compose);
                  },
                ),
                const SizedBox(height: 12),
                CokiSwimmingSmallPill(
                  label: 'Video',
                  color: const Color(0xFFD43161),
                  onTap: () {
                    Navigator.of(sheetContext).pop();
                    Navigator.of(
                      context,
                    ).pushNamed(CokiSwimmingRoutesPaths.motionCompose);
                  },
                ),
                const SizedBox(height: 12),
                CokiSwimmingSmallPill(
                  label: 'Cancel',
                  color: const Color(0xFF100A30),
                  onTap: () => Navigator.of(sheetContext).pop(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
