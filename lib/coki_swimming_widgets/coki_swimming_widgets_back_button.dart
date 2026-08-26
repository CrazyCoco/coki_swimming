part of '../main.dart';

class CokiSwimmingBackButton extends StatelessWidget {
  const CokiSwimmingBackButton({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(22),
      onTap: onTap,
      child: SizedBox(
        width: 44,
        height: 44,
        child: Center(
          child: Image.asset(
            'coki_swimming_assets/coki_swimming_nav_return.png',
            width: 40,
            height: 40,
          ),
        ),
      ),
    );
  }
}
