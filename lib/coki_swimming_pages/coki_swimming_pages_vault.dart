part of '../main.dart';

class CokiSwimmingVaultScreen extends StatefulWidget {
  const CokiSwimmingVaultScreen({super.key, this.memberId});

  final int? memberId;

  @override
  State<CokiSwimmingVaultScreen> createState() =>
      _CokiSwimmingVaultScreenState();
}

class _CokiSwimmingVaultScreenState extends State<CokiSwimmingVaultScreen> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    const offers = CokiSwimmingStoreCatalog.items;
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              const CokiSwimmingTopBar(title: 'My diamonds'),
              Container(
                height: 50,
                margin: const EdgeInsets.fromLTRB(20, 12, 20, 12),
                padding: const EdgeInsets.symmetric(horizontal: 14),
                decoration: BoxDecoration(
                  color: const Color(0xFF1C1740),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: const Color(0xFF60D0EE),
                    width: 1.2,
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'coki_swimming_assets/coki_swimming_coin_disc.png',
                      width: 29,
                      height: 29,
                    ),
                    const SizedBox(width: 7),
                    _CokiSwimmingVaultBalance(memberId: widget.memberId),
                  ],
                ),
              ),
              Expanded(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
                  itemCount: offers.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    final chosen = index == _selected;
                    return CokiSwimmingTap(
                      borderRadius: BorderRadius.circular(9),
                      onTap: () => setState(() => _selected = index),
                      child: Container(
                        height: 46,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: chosen
                              ? const Color(0xFF60D0EE)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'coki_swimming_assets/coki_swimming_coin_disc.png',
                              width: 27,
                              height: 27,
                            ),
                            const SizedBox(width: 7),
                            Text(
                              offers[index].quantity.toString(),
                              style: TextStyle(
                                color: chosen
                                    ? Colors.white
                                    : const Color(0xFF100A30),
                                fontSize: 13,
                                height: 1.2,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              offers[index].priceLabel,
                              style: TextStyle(
                                color: chosen
                                    ? Colors.white
                                    : const Color(0xFF100A30),
                                fontSize: 11,
                                height: 1.2,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 14, 20, 16),
                color: Colors.white,
                child: CokiSwimmingGradientButton(
                  label: 'Recharge',
                  onTap: () =>
                      CokiSwimmingToast.show(context, 'Recharge unavailable'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CokiSwimmingVaultBalance extends StatelessWidget {
  const _CokiSwimmingVaultBalance({required this.memberId});

  final int? memberId;

  @override
  Widget build(BuildContext context) {
    final memberId = this.memberId;
    if (memberId == null) return const _CokiSwimmingBalanceValue(value: 0);
    return StreamBuilder<CokiSwimmingMember?>(
      stream: CokiSwimmingDatabase.instance.watchMemberById(memberId),
      builder: (context, snapshot) =>
          _CokiSwimmingBalanceValue(value: snapshot.data?.coinBalance ?? 0),
    );
  }
}

class _CokiSwimmingBalanceValue extends StatelessWidget {
  const _CokiSwimmingBalanceValue({required this.value});

  final int value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value.toString(),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        height: 1.2,
        letterSpacing: 0,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
