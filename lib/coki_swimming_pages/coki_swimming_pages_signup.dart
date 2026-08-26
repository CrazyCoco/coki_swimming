part of '../main.dart';

class CokiSwimmingSignupScreen extends StatelessWidget {
  const CokiSwimmingSignupScreen({super.key, required this.onAuthorized});

  final VoidCallback onAuthorized;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingFormScreen(
      fields: const [
        ('Email:', 'Enter email address'),
        ('Password:', 'Enter password'),
        ('Password:', 'Please enter the password again'),
      ],
      buttonLabel: 'Sign up',
      onSubmit: () {
        onAuthorized();
        Navigator.of(
          context,
        ).pushReplacementNamed(CokiSwimmingRoutesPaths.edit);
      },
    );
  }
}
