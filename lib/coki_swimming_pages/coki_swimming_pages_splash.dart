part of '../main.dart';

class CokiSwimmingSplashScreen extends StatefulWidget {
  const CokiSwimmingSplashScreen({super.key});

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
      Navigator.of(
        context,
      ).pushReplacementNamed(CokiSwimmingRoutesPaths.welcome);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 56),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image(
                    image: AssetImage(
                      'coki_swimming_assets/coki_swimming_brand_mark.png',
                    ),
                    width: 78,
                    height: 78,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'Coki',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    height: 1.1,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w900,
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
