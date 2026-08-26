part of '../main.dart';

enum CokiSwimmingStoreLoadState { idle, loading, ready, unavailable, failed }

enum CokiSwimmingStoreTransactionState {
  idle,
  pending,
  awaitingVerification,
  canceled,
  failed,
}

class CokiSwimmingStoreService extends ChangeNotifier {
  CokiSwimmingStoreService._();

  static final CokiSwimmingStoreService instance = CokiSwimmingStoreService._();

  StreamSubscription<List<PurchaseDetails>>? _transactionSubscription;
  Future<void>? _initialization;
  bool _storeKit1Configured = false;
  Map<String, ProductDetails> _products = const {};
  Set<String> _missingProductIds = const {};
  CokiSwimmingStoreLoadState _loadState = CokiSwimmingStoreLoadState.idle;
  CokiSwimmingStoreTransactionState _transactionState =
      CokiSwimmingStoreTransactionState.idle;

  CokiSwimmingStoreLoadState get loadState => _loadState;
  CokiSwimmingStoreTransactionState get transactionState => _transactionState;
  Set<String> get missingProductIds => Set.unmodifiable(_missingProductIds);

  bool isProductAvailable(String productId) => _products.containsKey(productId);

  Future<void> initialize({bool retry = false}) {
    final runningInitialization = _initialization;
    if (runningInitialization != null &&
        (_loadState == CokiSwimmingStoreLoadState.loading || !retry)) {
      return runningInitialization;
    }

    final initialization = _initialize();
    _initialization = initialization;
    return initialization;
  }

  Future<void> _initialize() async {
    if (kIsWeb || defaultTargetPlatform != TargetPlatform.iOS) {
      _setLoadState(CokiSwimmingStoreLoadState.unavailable);
      return;
    }

    _setLoadState(CokiSwimmingStoreLoadState.loading);
    try {
      await _configureStoreKit1();
    } catch (_) {
      _setLoadState(CokiSwimmingStoreLoadState.failed);
      return;
    }

    final store = InAppPurchase.instance;
    _transactionSubscription ??= store.purchaseStream.listen(
      _handleTransactionUpdates,
      onError: _handleTransactionStreamError,
    );

    try {
      final storeAvailable = await store.isAvailable();
      if (!storeAvailable) {
        _products = const {};
        _missingProductIds = CokiSwimmingStoreCatalog.productIds;
        _setLoadState(CokiSwimmingStoreLoadState.unavailable);
        return;
      }

      final response = await store.queryProductDetails(
        CokiSwimmingStoreCatalog.productIds,
      );
      _products = {
        for (final product in response.productDetails) product.id: product,
      };
      _missingProductIds = response.notFoundIDs.toSet();
      _setLoadState(
        response.error != null && _products.isEmpty
            ? CokiSwimmingStoreLoadState.failed
            : CokiSwimmingStoreLoadState.ready,
      );
    } catch (_) {
      _products = const {};
      _missingProductIds = CokiSwimmingStoreCatalog.productIds;
      _setLoadState(CokiSwimmingStoreLoadState.failed);
    }
  }

  Future<void> _configureStoreKit1() async {
    if (_storeKit1Configured) return;

    // StoreKit 2 is the plugin default; Coki explicitly uses SKPaymentQueue.
    // ignore: deprecated_member_use
    await InAppPurchaseStoreKitPlatform.enableStoreKit1();
    InAppPurchaseStoreKitPlatform.registerPlatform();
    if (InAppPurchaseStoreKitPlatform.isStoreKit2Enabled) {
      throw StateError('StoreKit 1 is unavailable');
    }
    _storeKit1Configured = true;
  }

  void _handleTransactionUpdates(List<PurchaseDetails> transactions) {
    for (final transaction in transactions) {
      _transactionState = switch (transaction.status) {
        PurchaseStatus.pending => CokiSwimmingStoreTransactionState.pending,
        PurchaseStatus.purchased || PurchaseStatus.restored =>
          CokiSwimmingStoreTransactionState.awaitingVerification,
        PurchaseStatus.canceled => CokiSwimmingStoreTransactionState.canceled,
        PurchaseStatus.error => CokiSwimmingStoreTransactionState.failed,
      };
    }
    notifyListeners();
  }

  void _handleTransactionStreamError(Object _) {
    _transactionState = CokiSwimmingStoreTransactionState.failed;
    notifyListeners();
  }

  void _setLoadState(CokiSwimmingStoreLoadState state) {
    _loadState = state;
    notifyListeners();
  }
}
