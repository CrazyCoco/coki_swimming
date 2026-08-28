part of '../main.dart';

class CokiSwimmingHn7mc0efk8mqig1ezch extends StatelessWidget {
  const CokiSwimmingHn7mc0efk8mqig1ezch({
    super.key,
    required this.rja948ou6qv722c1e,
  });

  final Future<void> Function(CokiSwimmingMember ms9qazi6yvqqcehay6q)
  rja948ou6qv722c1e;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingY0xjkmeiuq6voxj(
      jx274n7jr0p2wegi: const [
        ('Email:', 'Enter email address'),
        ('Password:', 'Enter password'),
      ],
      y2n8ygz4vgxfeobjo9c: 'Sign in',
      gcp6y024togfbxt6h8jx: Align(
        alignment: Alignment.centerRight,
        child: CokiSwimmingKtoozpjuob7rods(
          gwrsyzojtp84oco1ldhaaw90: () => Navigator.of(context).pushNamed(
            CokiSwimmingXu1hfvhsqfkovamr518kcwz.f83ahojpce0htvndgvp3fq3r,
          ),
          v6j3bxo2dz4aevlmr: const Text(
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
      kcen2xc7mh38: (unlyrifp6ib8haq29kg9gro) async {
        final hxr74l491ntzb386 = await CokiSwimmingDatabase
            .hxjpjp7w6ojq86l4ddyhf
            .ubrqrdru7tdyfqwym2p7cli(
              kzifl44be3821: unlyrifp6ib8haq29kg9gro[0],
              m3vri4713ew781xcrvp8scu: unlyrifp6ib8haq29kg9gro[1],
            );
        if (hxr74l491ntzb386 == null) {
          throw const CokiSwimmingVgf5z8lwah8pc429uyoylrwv(
            'Incorrect email or password',
          );
        }
        await rja948ou6qv722c1e(hxr74l491ntzb386);
        if (!context.mounted) return;
        Navigator.of(context).pushReplacementNamed(
          hxr74l491ntzb386.profileCompleted
              ? CokiSwimmingXu1hfvhsqfkovamr518kcwz.j5gyhamjcuq9pbexd6
              : CokiSwimmingXu1hfvhsqfkovamr518kcwz.khkp9t4idd81ybveh,
        );
      },
    );
  }
}
