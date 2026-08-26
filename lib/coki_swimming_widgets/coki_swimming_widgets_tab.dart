part of '../main.dart';

class CokiSwimmingTab extends StatelessWidget {
  const CokiSwimmingTab({
    super.key,
    required this.image,
    required this.active,
    required this.onTap,
  });

  final String image;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      selected: active,
      button: true,
      child: CokiSwimmingTap(
        borderRadius: BorderRadius.circular(22),
        onTap: onTap,
        child: SizedBox(
          width: 48,
          height: 44,
          child: Center(child: Image.asset(image, width: 24, height: 24)),
        ),
      ),
    );
  }
}
