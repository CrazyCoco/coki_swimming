part of '../main.dart';

class CokiSwimmingAccessScreen extends StatelessWidget {
  const CokiSwimmingAccessScreen({super.key, required this.onAuthenticated});

  final Future<void> Function(CokiSwimmingMember member) onAuthenticated;

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
      onSubmit: (values) async {
        final member = await CokiSwimmingDatabase.instance.authenticate(
          email: values[0],
          password: values[1],
        );
        if (member == null) {
          throw const CokiSwimmingStorageException(
            'Incorrect email or password',
          );
        }
        await onAuthenticated(member);
        if (!context.mounted) return;
        Navigator.of(context).pushReplacementNamed(
          member.profileCompleted
              ? CokiSwimmingRoutesPaths.hub
              : CokiSwimmingRoutesPaths.edit,
        );
      },
    );
  }
}
