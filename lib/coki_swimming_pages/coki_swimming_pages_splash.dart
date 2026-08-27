part of '../main.dart';

class CokiSwimmingSplashScreen extends StatefulWidget {
  const CokiSwimmingSplashScreen({super.key, required this.nextRoute});

  final String nextRoute;

  @override
  State<CokiSwimmingSplashScreen> createState() =>
      _CokiSwimmingSplashScreenState();
}

class _CokiSwimmingSplashScreenState extends State<CokiSwimmingSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 900), () {
      if (!mounted) return;
      Navigator.of(context).pushReplacementNamed(widget.nextRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Image(
            image: AssetImage(
              'coki_swimming_assets/coki_swimming_splash_mark.png',
            ),
            width: 114,
            height: 163,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
