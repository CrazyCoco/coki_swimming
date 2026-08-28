part of '../main.dart';

class CokiSwimmingWp4tal6t3ttd0x5n8hyskxxc extends StatelessWidget {
  const CokiSwimmingWp4tal6t3ttd0x5n8hyskxxc({
    super.key,
    required this.mz6rsqm6blfn,
  });

  final VoidCallback mz6rsqm6blfn;

  @override
  Widget build(BuildContext context) {
    final lj79uwdjiua0l0jrbyu = [
      (
        'Privacy Policy',
        () => Navigator.of(
          context,
        ).pushNamed(CokiSwimmingXu1hfvhsqfkovamr518kcwz.xj2ddkvmttnkcmpro9up),
      ),
      (
        'User Agreement',
        () => Navigator.of(
          context,
        ).pushNamed(CokiSwimmingXu1hfvhsqfkovamr518kcwz.nct1qa2b32btuplvw),
      ),
      (
        'Blacklist',
        () => Navigator.of(
          context,
        ).pushNamed(CokiSwimmingXu1hfvhsqfkovamr518kcwz.dnhe3um9q0wn),
      ),
      (
        'Wallet',
        () => Navigator.of(context).pushNamed(
          CokiSwimmingXu1hfvhsqfkovamr518kcwz.tsux9v3xzdp79n2vwllqrjd9,
        ),
      ),
      (
        'Edit personal information',
        () => Navigator.of(
          context,
        ).pushNamed(CokiSwimmingXu1hfvhsqfkovamr518kcwz.khkp9t4idd81ybveh),
      ),
    ];
    return CokiSwimmingAgdqi717f62hphbv7l95r8v(
      o1wq5mwul0ckiwligeu: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 4, 20, 20),
            child: LayoutBuilder(
              builder: (zxhdtsvoweqjm2t69d, ofhio8qp25gh5hr) =>
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: ofhio8qp25gh5hr.maxHeight,
                      ),
                      child: IntrinsicHeight(
                        child: Column(
                          children: [
                            const CokiSwimmingMerb0wr4ijwluplbh(
                              s0dnsxzte0kvc8: 'Setting',
                              qmcu1oqyli7x1: 0,
                            ),
                            const SizedBox(height: 18),
                            for (final mz5zsfwm209dlhox
                                in lj79uwdjiua0l0jrbyu) ...[
                              CokiSwimmingGl0rn92qtin2qm6g6te4(
                                kw9moqrvxq88: mz5zsfwm209dlhox.$1,
                                onkvziyr3i43q796tpn1nzlo: mz5zsfwm209dlhox.$2,
                              ),
                              const SizedBox(height: 16),
                            ],
                            const Spacer(),
                            SizedBox(
                              width: 229,
                              child: CokiSwimmingRawwst0gui2o378c66i5elvz(
                                e67hqwb9qy10z9k5z: 'Delete account',
                                sush03fe1pypmha0j3: const Color(0xFFD43161),
                                k3zkoijb7liuuyx: 62,
                                ltf8zb1u2ml8zx4t9gh70ih: 22,
                                kcbdmyug43tkjpe: () =>
                                    Navigator.of(zxhdtsvoweqjm2t69d).pushNamed(
                                      CokiSwimmingXu1hfvhsqfkovamr518kcwz
                                          .q7vyp4j1oh4v60z,
                                    ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: 229,
                              child: CokiSwimmingRawwst0gui2o378c66i5elvz(
                                e67hqwb9qy10z9k5z: 'Log out',
                                sush03fe1pypmha0j3: const Color(0xFF60D0EE),
                                y0bkn83p183sy8a1x9z7w: const Color(0xFF100A30),
                                k3zkoijb7liuuyx: 62,
                                ltf8zb1u2ml8zx4t9gh70ih: 22,
                                kcbdmyug43tkjpe: () {
                                  mz6rsqm6blfn();
                                  Navigator.of(
                                    zxhdtsvoweqjm2t69d,
                                  ).pushNamedAndRemoveUntil(
                                    CokiSwimmingXu1hfvhsqfkovamr518kcwz
                                        .kbjrfu57dlohydfrf39b,
                                    (x6l8j2xz2053i) => false,
                                  );
                                },
                              ),
                            ),
                            const SizedBox(height: 29),
                          ],
                        ),
                      ),
                    ),
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
