part of '../main.dart';

enum CokiSwimmingStoreLoadState { idle, loading, ready, unavailable, failed }

enum CokiSwimmingStoreTransactionState {
  idle,
  pending,
  purchased,
  canceled,
  failed,
}

class CokiSwimmingStoreEvent {
  const CokiSwimmingStoreEvent({required this.sequence, required this.message});

  final int sequence;
  final String message;
}

class CokiSwimmingStoreService extends ChangeNotifier {
  CokiSwimmingStoreService._();

  static final CokiSwimmingStoreService instance = CokiSwimmingStoreService._();

  Future<void>? _initialization;
  Future<void> _processing = Future<void>.value();
  bool _storeKit1Configured = false;
  bool _listenerRegistered = false;
  Map<String, ProductDetails> _products = const {};
  Set<String> _missingProductIds = const {};
  final Set<String> _purchasingProductIds = {};
  CokiSwimmingStoreLoadState _loadState = CokiSwimmingStoreLoadState.idle;
  CokiSwimmingStoreTransactionState _transactionState =
      CokiSwimmingStoreTransactionState.idle;
  CokiSwimmingStoreEvent? _event;
  int _eventSequence = 0;

  CokiSwimmingStoreLoadState get loadState => _loadState;
  CokiSwimmingStoreTransactionState get transactionState => _transactionState;
  CokiSwimmingStoreEvent? get event => _event;
  Set<String> get missingProductIds => Set.unmodifiable(_missingProductIds);

  bool isProductAvailable(String productId) => _products.containsKey(productId);
  bool isPurchasing(String productId) =>
      _purchasingProductIds.contains(productId);

  Future<void> initialize({bool retry = false}) {
    final runningInitialization = _initialization;
    if (runningInitialization != null && !retry) return runningInitialization;
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
      final store = InAppPurchase.instance;
      if (!_listenerRegistered) {
        _listenerRegistered = true;
        store.purchaseStream.listen(
          _enqueueTransactionUpdates,
          onError: _handleTransactionStreamError,
        );
      }
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

  Future<bool> purchase({
    required CokiSwimmingStoreItem item,
    required int memberId,
  }) async {
    if (_purchasingProductIds.contains(item.productId)) return false;
    await initialize();
    var product = _products[item.productId];
    if (product == null) {
      await initialize(retry: true);
      product = _products[item.productId];
    }
    if (product == null) {
      _publish('This product is not available from the App Store.');
      return false;
    }

    _purchasingProductIds.add(item.productId);
    _transactionState = CokiSwimmingStoreTransactionState.pending;
    notifyListeners();
    final preferences = SharedPreferencesAsync();
    await preferences.setInt(_memberKey(item.productId), memberId);
    try {
      final started = await InAppPurchase.instance.buyConsumable(
        purchaseParam: PurchaseParam(productDetails: product),
        autoConsume: true,
      );
      if (!started) {
        await _finishProduct(item.productId);
        _transactionState = CokiSwimmingStoreTransactionState.failed;
        _publish('The App Store could not start this purchase.');
      }
      return started;
    } catch (_) {
      await _finishProduct(item.productId);
      _transactionState = CokiSwimmingStoreTransactionState.failed;
      _publish('The App Store could not start this purchase.');
      return false;
    }
  }

  Future<void> _configureStoreKit1() async {
    if (_storeKit1Configured) return;
    // ignore: deprecated_member_use
    await InAppPurchaseStoreKitPlatform.enableStoreKit1();
    InAppPurchaseStoreKitPlatform.registerPlatform();
    if (InAppPurchaseStoreKitPlatform.isStoreKit2Enabled) {
      throw StateError('StoreKit 1 is unavailable');
    }
    _storeKit1Configured = true;
  }

  void _enqueueTransactionUpdates(List<PurchaseDetails> transactions) {
    _processing = _processing
        .then((_) => _processTransactionUpdates(transactions))
        .catchError((Object _) {
          _purchasingProductIds.clear();
          _transactionState = CokiSwimmingStoreTransactionState.failed;
          _publish('Unable to process the App Store transaction.');
        });
  }

  Future<void> _processTransactionUpdates(
    List<PurchaseDetails> transactions,
  ) async {
    for (final transaction in transactions) {
      var shouldComplete = false;
      switch (transaction.status) {
        case PurchaseStatus.pending:
          _purchasingProductIds.add(transaction.productID);
          _transactionState = CokiSwimmingStoreTransactionState.pending;
          notifyListeners();
          continue;
        case PurchaseStatus.purchased:
          shouldComplete = await _deliver(transaction);
          if (shouldComplete) {
            _transactionState = CokiSwimmingStoreTransactionState.purchased;
          } else {
            _purchasingProductIds.remove(transaction.productID);
            notifyListeners();
          }
          break;
        case PurchaseStatus.restored:
          shouldComplete = true;
          _transactionState = CokiSwimmingStoreTransactionState.failed;
          _publish('Consumable purchases cannot be restored.');
          break;
        case PurchaseStatus.canceled:
          shouldComplete = true;
          _transactionState = CokiSwimmingStoreTransactionState.canceled;
          _publish('Purchase canceled.');
          break;
        case PurchaseStatus.error:
          shouldComplete = true;
          _transactionState = CokiSwimmingStoreTransactionState.failed;
          _publish(transaction.error?.message ?? 'Purchase failed.');
          break;
      }
      if (shouldComplete) {
        try {
          if (transaction.pendingCompletePurchase) {
            await InAppPurchase.instance.completePurchase(transaction);
          }
        } finally {
          await _finishProduct(transaction.productID);
        }
      }
    }
  }

  Future<bool> _deliver(PurchaseDetails transaction) async {
    final item = CokiSwimmingStoreCatalog.itemForProductId(
      transaction.productID,
    );
    final verification = transaction.verificationData.serverVerificationData;
    if (item == null || verification.isEmpty) {
      _transactionState = CokiSwimmingStoreTransactionState.failed;
      _publish('The App Store transaction could not be verified.');
      return false;
    }
    final preferences = SharedPreferencesAsync();
    final memberId =
        await preferences.getInt(_memberKey(transaction.productID)) ??
        await CokiSwimmingSessionStore.readMemberId();
    if (memberId == null) {
      _transactionState = CokiSwimmingStoreTransactionState.failed;
      _publish('Sign in before completing this purchase.');
      return false;
    }
    final rawTransactionKey = transaction.purchaseID?.isNotEmpty == true
        ? transaction.purchaseID!
        : '${transaction.productID}:${transaction.transactionDate}:$verification';
    final transactionKey = sha256
        .convert(utf8.encode(rawTransactionKey))
        .toString();
    try {
      final applied = await CokiSwimmingDatabase.instance.applyStoreDelivery(
        memberId: memberId,
        transactionKey: transactionKey,
        productId: item.productId,
        quantity: item.quantity,
      );
      _publish(
        applied
            ? '${item.quantity} diamonds added.'
            : 'This App Store transaction was already processed.',
      );
      return true;
    } on CokiSwimmingStorageException catch (error) {
      _transactionState = CokiSwimmingStoreTransactionState.failed;
      _publish(error.message);
      return false;
    }
  }

  Future<void> _finishProduct(String productId) async {
    _purchasingProductIds.remove(productId);
    await SharedPreferencesAsync().remove(_memberKey(productId));
    notifyListeners();
  }

  void _handleTransactionStreamError(Object _) {
    _transactionState = CokiSwimmingStoreTransactionState.failed;
    _publish('Unable to read App Store updates.');
  }

  void _setLoadState(CokiSwimmingStoreLoadState state) {
    _loadState = state;
    notifyListeners();
  }

  void _publish(String message) {
    _eventSequence += 1;
    _event = CokiSwimmingStoreEvent(sequence: _eventSequence, message: message);
    notifyListeners();
  }

  String _memberKey(String productId) =>
      'coki_swimming_store_member_$productId';
}
