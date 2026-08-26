part of '../main.dart';

class CokiSwimmingSignupScreen extends StatelessWidget {
  const CokiSwimmingSignupScreen({
    super.key,
    required this.onRegistrationStarted,
  });

  final Future<void> Function(int memberId) onRegistrationStarted;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingFormScreen(
      fields: const [
        ('Email:', 'Enter email address'),
        ('Password:', 'Enter password'),
        ('Password:', 'Please enter the password again'),
      ],
      buttonLabel: 'Sign up',
      onSubmit: (values) async {
        if (values[1] != values[2]) {
          throw const CokiSwimmingStorageException(
            'The passwords do not match',
          );
        }
        final memberId = await CokiSwimmingDatabase.instance
            .createPendingMember(email: values[0], password: values[1]);
        await onRegistrationStarted(memberId);
        if (!context.mounted) return;
        Navigator.of(
          context,
        ).pushReplacementNamed(CokiSwimmingRoutesPaths.edit);
      },
    );
  }
}
