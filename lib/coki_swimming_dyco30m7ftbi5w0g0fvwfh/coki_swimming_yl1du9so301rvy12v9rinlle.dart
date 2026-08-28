part of '../main.dart';

class CokiSwimmingQx2adsjpnyi8kfrtra8bofin extends StatelessWidget {
  const CokiSwimmingQx2adsjpnyi8kfrtra8bofin({
    super.key,
    required this.ji0c4cwkzwdqju0dtttyvlz1,
  });

  final Future<void> Function(int crv3il88cibrq72ymry) ji0c4cwkzwdqju0dtttyvlz1;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingY0xjkmeiuq6voxj(
      jx274n7jr0p2wegi: const [
        ('Email:', 'Enter email address'),
        ('Password:', 'Enter password'),
        ('Password:', 'Please enter the password again'),
      ],
      y2n8ygz4vgxfeobjo9c: 'Sign up',
      kcen2xc7mh38: (zm6tk24f6qnh5o6w1xd) async {
        if (zm6tk24f6qnh5o6w1xd[1] != zm6tk24f6qnh5o6w1xd[2]) {
          throw const CokiSwimmingVgf5z8lwah8pc429uyoylrwv(
            'The passwords do not match',
          );
        }
        final h8bwsi2etx4a = await CokiSwimmingDatabase.hxjpjp7w6ojq86l4ddyhf
            .fk6lg5nat3c258suvmb(
              m46hrhc6pv06315etmp5: zm6tk24f6qnh5o6w1xd[0],
              m4mleyfxoz41v9qh: zm6tk24f6qnh5o6w1xd[1],
            );
        await ji0c4cwkzwdqju0dtttyvlz1(h8bwsi2etx4a);
        if (!context.mounted) return;
        Navigator.of(context).pushReplacementNamed(
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.khkp9t4idd81ybveh,
        );
      },
    );
  }
}
