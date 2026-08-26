part of '../main.dart';

class CokiSwimmingStoreItem {
  const CokiSwimmingStoreItem({
    required this.productId,
    required this.priceLabel,
    required this.quantity,
  });

  final String productId;
  final String priceLabel;
  final int quantity;
}

class CokiSwimmingStoreCatalog {
  const CokiSwimmingStoreCatalog._();

  static const bool useTestCatalog = true;

  static const List<CokiSwimmingStoreItem> items = useTestCatalog
      ? testItems
      : productionItems;

  static const List<CokiSwimmingStoreItem> testItems = [
    CokiSwimmingStoreItem(
      productId: 'lvbsvhxcgcrvesor',
      priceLabel: r'$0.99',
      quantity: 400,
    ),
    CokiSwimmingStoreItem(
      productId: 'dxismgcwewhrtezo',
      priceLabel: r'$4.99',
      quantity: 2450,
    ),
    CokiSwimmingStoreItem(
      productId: 'khtxlcejaxmqcsra',
      priceLabel: r'$9.99',
      quantity: 5150,
    ),
    CokiSwimmingStoreItem(
      productId: 'yadwwvxspgxwlndb',
      priceLabel: r'$19.99',
      quantity: 10800,
    ),
    CokiSwimmingStoreItem(
      productId: 'qnrcuelbtiuflyky',
      priceLabel: r'$49.99',
      quantity: 29400,
    ),
    CokiSwimmingStoreItem(
      productId: 'ymohxnvpkqxutvab',
      priceLabel: r'$99.99',
      quantity: 63700,
    ),
  ];

  static const List<CokiSwimmingStoreItem> productionItems = [
    CokiSwimmingStoreItem(
      productId: 'galmmdjtkcfebmhc',
      priceLabel: r'$0.99',
      quantity: 400,
    ),
    CokiSwimmingStoreItem(
      productId: 'kerjzrciojuuriug',
      priceLabel: r'$1.99',
      quantity: 800,
    ),
    CokiSwimmingStoreItem(
      productId: 'shdwlmloxmcnvmcb',
      priceLabel: r'$3.99',
      quantity: 2190,
    ),
    CokiSwimmingStoreItem(
      productId: 'rigiwinsxvguxaur',
      priceLabel: r'$4.99',
      quantity: 2450,
    ),
    CokiSwimmingStoreItem(
      productId: 'mjxfhuqwkmgsuxee',
      priceLabel: r'$8.99',
      quantity: 3950,
    ),
    CokiSwimmingStoreItem(
      productId: 'rrpxihzxojloowuj',
      priceLabel: r'$9.99',
      quantity: 5150,
    ),
    CokiSwimmingStoreItem(
      productId: 'axzfmgenseshflwu',
      priceLabel: r'$13.99',
      quantity: 5700,
    ),
    CokiSwimmingStoreItem(
      productId: 'ocsvbatxmpbzgadp',
      priceLabel: r'$19.99',
      quantity: 10800,
    ),
    CokiSwimmingStoreItem(
      productId: 'cffjgmdceyazpshf',
      priceLabel: r'$49.99',
      quantity: 29400,
    ),
    CokiSwimmingStoreItem(
      productId: 'lrzpnpshjnnkvozt',
      priceLabel: r'$99.99',
      quantity: 63700,
    ),
  ];

  static Set<String> get productIds => {
    for (final item in items) item.productId,
  };

  static CokiSwimmingStoreItem? itemForProductId(String productId) {
    for (final item in items) {
      if (item.productId == productId) return item;
    }
    return null;
  }
}
