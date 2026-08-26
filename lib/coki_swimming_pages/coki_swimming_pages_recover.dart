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
      onSubmit: (values) async {
        if (values[1] != values[2]) {
          throw const CokiSwimmingStorageException(
            'The passwords do not match',
          );
        }
        await CokiSwimmingDatabase.instance.updatePassword(
          email: values[0],
          password: values[1],
        );
        if (!context.mounted) return;
        CokiSwimmingToast.show(context, 'Saved');
        Navigator.of(context).maybePop();
      },
    );
  }
}
