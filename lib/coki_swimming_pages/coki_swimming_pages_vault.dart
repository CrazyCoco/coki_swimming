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
    final bottomInset = MediaQuery.paddingOf(context).bottom;
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: Image.asset(
                'coki_swimming_assets/coki_swimming_neon_aura.png',
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            Positioned(
              right: 38,
              top: 88,
              child: IgnorePointer(
                child: Image.asset(
                  'coki_swimming_assets/coki_swimming_vault_bag.png',
                  width: 110,
                  height: 110,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SafeArea(
              bottom: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CokiSwimmingTopBar(title: 'My diamonds'),
                  const SizedBox(height: 16),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28),
                    child: Text(
                      'My diamonds',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        height: 1.2,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: _CokiSwimmingVaultBalancePill(
                      memberId: widget.memberId,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.fromLTRB(16, 0, 16, bottomInset + 98),
                      itemCount: offers.length,
                      separatorBuilder: (_, _) => const SizedBox(height: 10),
                      itemBuilder: (context, index) {
                        return _CokiSwimmingVaultOfferRow(
                          item: offers[index],
                          selected: index == _selected,
                          onTap: () => setState(() => _selected = index),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 73,
              right: 73,
              bottom: bottomInset + 22,
              child: CokiSwimmingGradientButton(
                label: 'Recharge',
                height: 56,
                fontSize: 24,
                onTap: () => CokiSwimmingToast.show(
                  context,
                  'Store purchase is unavailable',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CokiSwimmingVaultBalancePill extends StatelessWidget {
  const _CokiSwimmingVaultBalancePill({required this.memberId});

  final int? memberId;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 41,
      padding: const EdgeInsets.fromLTRB(9, 4, 12, 4),
      decoration: BoxDecoration(
        color: const Color(0xFF100A30),
        borderRadius: BorderRadius.circular(21),
        border: Border.all(color: const Color(0xFF60D0EE), width: 2),
      ),
      child: Row(
        children: [
          Image.asset(
            'coki_swimming_assets/coki_swimming_vault_coin.png',
            width: 29,
            height: 29,
          ),
          const SizedBox(width: 8),
          Expanded(child: _CokiSwimmingVaultBalance(memberId: memberId)),
        ],
      ),
    );
  }
}

class _CokiSwimmingVaultOfferRow extends StatelessWidget {
  const _CokiSwimmingVaultOfferRow({
    required this.item,
    required this.selected,
    required this.onTap,
  });

  final CokiSwimmingStoreItem item;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final foreground = selected ? Colors.white : const Color(0xFF100A30);
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: Container(
        height: 56,
        padding: const EdgeInsets.fromLTRB(18, 8, 10, 8),
        decoration: BoxDecoration(
          color: selected ? const Color(0xFF60C9E8) : Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Image.asset(
              'coki_swimming_assets/coki_swimming_vault_coin.png',
              width: 31,
              height: 31,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                item.quantity.toString(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: foreground,
                  fontSize: 20,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Text(
              item.priceLabel,
              style: TextStyle(
                color: foreground,
                fontSize: 16,
                height: 1.2,
                letterSpacing: 0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 10),
            _CokiSwimmingVaultSelectionIndicator(selected: selected),
          ],
        ),
      ),
    );
  }
}

class _CokiSwimmingVaultSelectionIndicator extends StatelessWidget {
  const _CokiSwimmingVaultSelectionIndicator({required this.selected});

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
        color: selected ? null : const Color(0xFF100A30),
        shape: BoxShape.circle,
        gradient: selected
            ? const LinearGradient(
                colors: [
                  Color(0xFF60D0EE),
                  Color(0xFFAD99C2),
                  Color(0xFFD43161),
                ],
                stops: [0, 0.4704, 1],
              )
            : null,
        border: selected ? Border.all(color: Colors.white, width: 1.2) : null,
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
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        height: 1.2,
        letterSpacing: 0,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
