part of '../main.dart';

class CokiSwimmingRecoverScreen extends StatelessWidget {
  const CokiSwimmingRecoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingFormScreen(
      fields: const [
        ('Email:', 'Enter email address'),
        ('Password:', 'Enter password'),
        ('Password:', 'Please enter the password again'),
      ],
      buttonLabel: 'Save',
      onSubmit: () {
        CokiSwimmingToast.show(context, 'Saved');
        Navigator.of(context).maybePop();
      },
    );
  }
}
