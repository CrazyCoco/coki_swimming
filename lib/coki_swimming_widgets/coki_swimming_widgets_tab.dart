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
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(24),
      onTap: onTap,
      child: SizedBox(
        width: 54,
        height: 54,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, width: 24, height: 24),
            const SizedBox(height: 5),
            Container(
              width: active ? 18 : 0,
              height: 3,
              decoration: BoxDecoration(
                color: const Color(0xFFD43161),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
