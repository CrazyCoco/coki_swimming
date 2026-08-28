part of '../main.dart';

class CokiSwimmingH5sll4nxw04hfxx7h2wo extends StatelessWidget {
  const CokiSwimmingH5sll4nxw04hfxx7h2wo({super.key});

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingY0xjkmeiuq6voxj(
      jx274n7jr0p2wegi: const [
        ('Email:', 'Enter email address'),
        ('Password:', 'Enter password'),
        ('Password:', 'Please enter the password again'),
      ],
      y2n8ygz4vgxfeobjo9c: 'Save',
      kcen2xc7mh38: (vxlnj60azjx1b1609j6k25l) async {
        if (vxlnj60azjx1b1609j6k25l[1] != vxlnj60azjx1b1609j6k25l[2]) {
          throw const CokiSwimmingVgf5z8lwah8pc429uyoylrwv(
            'The passwords do not match',
          );
        }
        await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf.cmbqg0f1hkrr0xp5hm0im(
          zrmmuyt730j1giw9v7p8co: vxlnj60azjx1b1609j6k25l[0],
          qknutdyjrtyx: vxlnj60azjx1b1609j6k25l[1],
        );
        if (!context.mounted) return;
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(context, 'Saved');
        Navigator.of(context).maybePop();
      },
    );
  }
}
