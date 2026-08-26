part of '../main.dart';

class CokiSwimmingReportSheet {
  const CokiSwimmingReportSheet._();

  static void show(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => Padding(
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
                  Navigator.of(sheetContext).pop();
                  Navigator.of(
                    context,
                  ).pushNamed(CokiSwimmingRoutesPaths.concern);
                },
              ),
              const SizedBox(height: 12),
              CokiSwimmingSmallPill(
                label: 'Shield',
                color: const Color(0xFFF4F5F7),
                textColor: const Color(0xFF100A30),
                onTap: () {
                  Navigator.of(sheetContext).pop();
                  CokiSwimmingToast.show(context, 'Shielded');
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
    );
  }
}
