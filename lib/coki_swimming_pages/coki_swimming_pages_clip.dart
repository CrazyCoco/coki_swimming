part of '../main.dart';

class CokiSwimmingClipScreen extends StatelessWidget {
  const CokiSwimmingClipScreen({super.key, required this.isVisitor});

  final bool isVisitor;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingMediaScreen(
      isVisitor: isVisitor,
      image: 'coki_swimming_assets/coki_swimming_water_portrait.png',
      trailing: CokiSwimmingFloatTool(
        icon: Icons.videocam_outlined,
        label: '100',
        onTap: () => CokiSwimmingAccessGate.run(
          context,
          isVisitor: isVisitor,
          action: () =>
              Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.call),
        ),
      ),
    );
  }
}
