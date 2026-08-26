part of '../main.dart';

class CokiSwimmingBackground extends StatelessWidget {
  const CokiSwimmingBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          child: Image.asset(
            'coki_swimming_assets/coki_swimming_shell_field.png',
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
        Positioned.fill(child: child),
      ],
    );
  }
}
