part of '../main.dart';

class CokiSwimmingAccessScreen extends StatelessWidget {
  const CokiSwimmingAccessScreen({super.key, required this.onAuthorized});

  final VoidCallback onAuthorized;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingFormScreen(
      fields: const [
        ('Email:', 'Enter email address'),
        ('Password:', 'Enter password'),
      ],
      buttonLabel: 'Sign in',
      lower: Align(
        alignment: Alignment.centerRight,
        child: CokiSwimmingTap(
          onTap: () =>
              Navigator.of(context).pushNamed(CokiSwimmingRoutesPaths.recover),
          child: const Text(
            'Forgot ?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              height: 1.4,
              letterSpacing: 0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
      onSubmit: () {
        onAuthorized();
        Navigator.of(context).pushReplacementNamed(CokiSwimmingRoutesPaths.hub);
      },
    );
  }
}
