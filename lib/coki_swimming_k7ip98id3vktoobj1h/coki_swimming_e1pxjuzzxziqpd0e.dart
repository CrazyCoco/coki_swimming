part of '../main.dart';

enum CokiSwimmingQ6afq3rch1hyu {
  pd1kv8l54f88qv30mi,
  e9g14p6vk34uuut6xsipl,
  cm27rwj6nc34394cb3,
  fuj1j8l53c7da,
  k0x41tapgtq6s,
}

enum CokiSwimmingIofrw9mhudy6j198ei {
  mb445jypw176hczxarkr,
  qflbhfdrnr28sfeqiweg,
  dl4ouyl0l7g5hsgn,
  xysq4y2x8kyazjg,
  o30onc6ugl21sla0ivz,
}

class CokiSwimmingG5ojv4plar1o9 {
  const CokiSwimmingG5ojv4plar1o9({
    required this.vextpkj2kaug2,
    required this.x2sgt6ypykglya9y,
  });

  final int vextpkj2kaug2;
  final String x2sgt6ypykglya9y;
}

class CokiSwimmingYvskltre1b3n2c extends ChangeNotifier {
  CokiSwimmingYvskltre1b3n2c._doahtp7j0zgwpic6l4o();

  static final CokiSwimmingYvskltre1b3n2c aqmgi7an071diai55 =
      CokiSwimmingYvskltre1b3n2c._doahtp7j0zgwpic6l4o();

  Future<void>? _baiuo03wi5nrbx1d4ien78k;
  Future<void> _c2b1ml51yixfnb10j = Future<void>.value();
  bool _iyt8h9qod7ltwih10pggzcft = false;
  bool _pvsia34coqfiyul9 = false;
  Map<String, ProductDetails> _t6xyhjnc9e2bvfrhahz = const {};
  Set<String> _zzdxev1rv0r2q0f = const {};
  final Set<String> _p5pep2ao8azaw3cb5ydd = {};
  CokiSwimmingQ6afq3rch1hyu _mb76ewp0177lh8j5y6phmh =
      CokiSwimmingQ6afq3rch1hyu.pd1kv8l54f88qv30mi;
  CokiSwimmingIofrw9mhudy6j198ei _rrcy4usosp2cufad =
      CokiSwimmingIofrw9mhudy6j198ei.mb445jypw176hczxarkr;
  CokiSwimmingG5ojv4plar1o9? _fncnytm2rpvy0bid2ttdh;
  int _mou52fwdzouhdsop15d = 0;

  CokiSwimmingQ6afq3rch1hyu get kw7o5kf0tp0f1o8c3fo82vj =>
      _mb76ewp0177lh8j5y6phmh;
  CokiSwimmingIofrw9mhudy6j198ei get jm6mifcvrquvri => _rrcy4usosp2cufad;
  CokiSwimmingG5ojv4plar1o9? get yhhwyg0v13wjs => _fncnytm2rpvy0bid2ttdh;
  Set<String> get ki5pof3wh3xj9xv1m => Set.unmodifiable(_zzdxev1rv0r2q0f);

  bool g10bc66c9d1o6ep6t11s(String ehvmvq3lqpyh8xkof7na5x2) =>
      _t6xyhjnc9e2bvfrhahz.containsKey(ehvmvq3lqpyh8xkof7na5x2);
  bool mjpxqty1eu7jaqde(String wbkmoi51uqm1rfqewv3s) =>
      _p5pep2ao8azaw3cb5ydd.contains(wbkmoi51uqm1rfqewv3s);

  Future<void> nrlk51iq4ebm64odwcptzz0j({bool jez22tnxv27dacnfxhg = false}) {
    final e6h6cfxgs02vemjv = _baiuo03wi5nrbx1d4ien78k;
    if (e6h6cfxgs02vemjv != null && !jez22tnxv27dacnfxhg) {
      return e6h6cfxgs02vemjv;
    }
    final fsqi112mfqd5x0lrc1wx = _ooafjsn8k6r4rtykcu60();
    _baiuo03wi5nrbx1d4ien78k = fsqi112mfqd5x0lrc1wx;
    return fsqi112mfqd5x0lrc1wx;
  }

  Future<void> _ooafjsn8k6r4rtykcu60() async {
    if (kIsWeb || defaultTargetPlatform != TargetPlatform.iOS) {
      _h7q5gew8kvaov3(CokiSwimmingQ6afq3rch1hyu.fuj1j8l53c7da);
      return;
    }

    _h7q5gew8kvaov3(CokiSwimmingQ6afq3rch1hyu.e9g14p6vk34uuut6xsipl);
    try {
      await _b7f0k3u0j6q6eo();
      final hrwat35vwb1rfz4pqomgwz = InAppPurchase.instance;
      if (!_pvsia34coqfiyul9) {
        _pvsia34coqfiyul9 = true;
        hrwat35vwb1rfz4pqomgwz.purchaseStream.listen(
          _arouvk7qo8b23dtewzw,
          onError: _li9y5zheeywjj,
        );
      }
      final v7ctjh41gzs1uc85 = await hrwat35vwb1rfz4pqomgwz.isAvailable();
      if (!v7ctjh41gzs1uc85) {
        _t6xyhjnc9e2bvfrhahz = const {};
        _zzdxev1rv0r2q0f = CokiSwimmingC7klfiakfgt9l7wvr.guxociyt5gyjy;
        _h7q5gew8kvaov3(CokiSwimmingQ6afq3rch1hyu.fuj1j8l53c7da);
        return;
      }

      final kpol9z0a7qkqind9bh40 = await hrwat35vwb1rfz4pqomgwz
          .queryProductDetails(CokiSwimmingC7klfiakfgt9l7wvr.guxociyt5gyjy);
      _t6xyhjnc9e2bvfrhahz = {
        for (final fxm6hka1u5twy696 in kpol9z0a7qkqind9bh40.productDetails)
          fxm6hka1u5twy696.id: fxm6hka1u5twy696,
      };
      _zzdxev1rv0r2q0f = kpol9z0a7qkqind9bh40.notFoundIDs.toSet();
      _h7q5gew8kvaov3(
        kpol9z0a7qkqind9bh40.error != null && _t6xyhjnc9e2bvfrhahz.isEmpty
            ? CokiSwimmingQ6afq3rch1hyu.k0x41tapgtq6s
            : CokiSwimmingQ6afq3rch1hyu.cm27rwj6nc34394cb3,
      );
    } catch (_) {
      _t6xyhjnc9e2bvfrhahz = const {};
      _zzdxev1rv0r2q0f = CokiSwimmingC7klfiakfgt9l7wvr.guxociyt5gyjy;
      _h7q5gew8kvaov3(CokiSwimmingQ6afq3rch1hyu.k0x41tapgtq6s);
    }
  }

  Future<bool> dazoq38rv2crn8os8m({
    required CokiSwimmingSz0r1zeed32k3z5e t5mk7gqt9eudanj,
    required int czx0gl7s6hm8oj,
  }) async {
    if (_p5pep2ao8azaw3cb5ydd.contains(
      t5mk7gqt9eudanj.gf1ak32yamjjsdmdtg2olv0,
    )) {
      return false;
    }
    await nrlk51iq4ebm64odwcptzz0j();
    var dimwp417doel7u5e =
        _t6xyhjnc9e2bvfrhahz[t5mk7gqt9eudanj.gf1ak32yamjjsdmdtg2olv0];
    if (dimwp417doel7u5e == null) {
      await nrlk51iq4ebm64odwcptzz0j(jez22tnxv27dacnfxhg: true);
      dimwp417doel7u5e =
          _t6xyhjnc9e2bvfrhahz[t5mk7gqt9eudanj.gf1ak32yamjjsdmdtg2olv0];
    }
    if (dimwp417doel7u5e == null) {
      _l3xee464njgw7('This product is not available from the App Store.');
      return false;
    }

    _p5pep2ao8azaw3cb5ydd.add(t5mk7gqt9eudanj.gf1ak32yamjjsdmdtg2olv0);
    _rrcy4usosp2cufad = CokiSwimmingIofrw9mhudy6j198ei.qflbhfdrnr28sfeqiweg;
    notifyListeners();
    final tjpjvmsb4yazz7xr9qae4h9 = SharedPreferencesAsync();
    await tjpjvmsb4yazz7xr9qae4h9.setInt(
      _r6cfn15a58w66yvdz017vihb(t5mk7gqt9eudanj.gf1ak32yamjjsdmdtg2olv0),
      czx0gl7s6hm8oj,
    );
    try {
      final cnxgwtqwcjocxcp3b9ttira = await InAppPurchase.instance
          .buyConsumable(
            purchaseParam: PurchaseParam(productDetails: dimwp417doel7u5e),
            autoConsume: true,
          );
      if (!cnxgwtqwcjocxcp3b9ttira) {
        await _zs8gadblo4zvipkr5ec070(t5mk7gqt9eudanj.gf1ak32yamjjsdmdtg2olv0);
        _rrcy4usosp2cufad = CokiSwimmingIofrw9mhudy6j198ei.o30onc6ugl21sla0ivz;
        _l3xee464njgw7('The App Store could not start this purchase.');
      }
      return cnxgwtqwcjocxcp3b9ttira;
    } catch (_) {
      await _zs8gadblo4zvipkr5ec070(t5mk7gqt9eudanj.gf1ak32yamjjsdmdtg2olv0);
      _rrcy4usosp2cufad = CokiSwimmingIofrw9mhudy6j198ei.o30onc6ugl21sla0ivz;
      _l3xee464njgw7('The App Store could not start this purchase.');
      return false;
    }
  }

  Future<void> _b7f0k3u0j6q6eo() async {
    if (_iyt8h9qod7ltwih10pggzcft) return;
    // ignore: deprecated_member_use
    await InAppPurchaseStoreKitPlatform.enableStoreKit1();
    InAppPurchaseStoreKitPlatform.registerPlatform();
    if (InAppPurchaseStoreKitPlatform.isStoreKit2Enabled) {
      throw StateError('StoreKit 1 is unavailable');
    }
    _iyt8h9qod7ltwih10pggzcft = true;
  }

  void _arouvk7qo8b23dtewzw(List<PurchaseDetails> z0qz0lizxmxx6n9) {
    _c2b1ml51yixfnb10j = _c2b1ml51yixfnb10j
        .then((_) => _mu0rsdsqko9gbsvc5bp(z0qz0lizxmxx6n9))
        .catchError((Object _) {
          _p5pep2ao8azaw3cb5ydd.clear();
          _rrcy4usosp2cufad =
              CokiSwimmingIofrw9mhudy6j198ei.o30onc6ugl21sla0ivz;
          _l3xee464njgw7('Unable to process the App Store transaction.');
        });
  }

  Future<void> _mu0rsdsqko9gbsvc5bp(
    List<PurchaseDetails> auspdn79upe83o8zv6d,
  ) async {
    for (final jyveha8a1i5rwocl7ykj804o in auspdn79upe83o8zv6d) {
      var jbsbw3wid605z = false;
      switch (jyveha8a1i5rwocl7ykj804o.status) {
        case PurchaseStatus.pending:
          _p5pep2ao8azaw3cb5ydd.add(jyveha8a1i5rwocl7ykj804o.productID);
          _rrcy4usosp2cufad =
              CokiSwimmingIofrw9mhudy6j198ei.qflbhfdrnr28sfeqiweg;
          notifyListeners();
          continue;
        case PurchaseStatus.purchased:
          jbsbw3wid605z = await _nbfn58sx3zccma(jyveha8a1i5rwocl7ykj804o);
          if (jbsbw3wid605z) {
            _rrcy4usosp2cufad = CokiSwimmingIofrw9mhudy6j198ei.dl4ouyl0l7g5hsgn;
          } else {
            _p5pep2ao8azaw3cb5ydd.remove(jyveha8a1i5rwocl7ykj804o.productID);
            notifyListeners();
          }
          break;
        case PurchaseStatus.restored:
          jbsbw3wid605z = true;
          _rrcy4usosp2cufad =
              CokiSwimmingIofrw9mhudy6j198ei.o30onc6ugl21sla0ivz;
          _l3xee464njgw7('Consumable purchases cannot be restored.');
          break;
        case PurchaseStatus.canceled:
          jbsbw3wid605z = true;
          _rrcy4usosp2cufad = CokiSwimmingIofrw9mhudy6j198ei.xysq4y2x8kyazjg;
          _l3xee464njgw7('Purchase canceled.');
          break;
        case PurchaseStatus.error:
          jbsbw3wid605z = true;
          _rrcy4usosp2cufad =
              CokiSwimmingIofrw9mhudy6j198ei.o30onc6ugl21sla0ivz;
          _l3xee464njgw7(
            jyveha8a1i5rwocl7ykj804o.error?.message ?? 'Purchase failed.',
          );
          break;
      }
      if (jbsbw3wid605z) {
        try {
          if (jyveha8a1i5rwocl7ykj804o.pendingCompletePurchase) {
            await InAppPurchase.instance.completePurchase(
              jyveha8a1i5rwocl7ykj804o,
            );
          }
        } finally {
          await _zs8gadblo4zvipkr5ec070(jyveha8a1i5rwocl7ykj804o.productID);
        }
      }
    }
  }

  Future<bool> _nbfn58sx3zccma(PurchaseDetails vlnmr2qepqqzup7c1bu) async {
    final lwjxgq1z60w76wci9fany6y9 =
        CokiSwimmingC7klfiakfgt9l7wvr.g832zdgdlz1fmqyc9(
          vlnmr2qepqqzup7c1bu.productID,
        );
    final rzdmk0h0fmlr818bxx8qh =
        vlnmr2qepqqzup7c1bu.verificationData.serverVerificationData;
    if (lwjxgq1z60w76wci9fany6y9 == null || rzdmk0h0fmlr818bxx8qh.isEmpty) {
      _rrcy4usosp2cufad = CokiSwimmingIofrw9mhudy6j198ei.o30onc6ugl21sla0ivz;
      _l3xee464njgw7('The App Store transaction could not be verified.');
      return false;
    }
    final sb0ez00dvb4qsq8zczp3 = SharedPreferencesAsync();
    final rnzfma105r8k18ph7vy2gw5 =
        await sb0ez00dvb4qsq8zczp3.getInt(
          _r6cfn15a58w66yvdz017vihb(vlnmr2qepqqzup7c1bu.productID),
        ) ??
        await CokiSwimmingCxpnto70zseiuixud78r.o6irsuz6o8tm5();
    if (rnzfma105r8k18ph7vy2gw5 == null) {
      _rrcy4usosp2cufad = CokiSwimmingIofrw9mhudy6j198ei.o30onc6ugl21sla0ivz;
      _l3xee464njgw7('Sign in before completing this purchase.');
      return false;
    }
    final v3ndnexm2yq7m5j = vlnmr2qepqqzup7c1bu.purchaseID?.isNotEmpty == true
        ? vlnmr2qepqqzup7c1bu.purchaseID!
        : '${vlnmr2qepqqzup7c1bu.productID}:${vlnmr2qepqqzup7c1bu.transactionDate}:$rzdmk0h0fmlr818bxx8qh';
    final w6p0fiipvtnbj6 = sha256
        .convert(utf8.encode(v3ndnexm2yq7m5j))
        .toString();
    try {
      final bs2agv3l1c56arwru9xu = await CokiSwimmingDatabase
          .hxjpjp7w6ojq86l4ddyhf
          .khle54jdwyb24tmd3(
            ko0d6ennf9o9l7si2: rnzfma105r8k18ph7vy2gw5,
            ileayy6584htnbzrl: w6p0fiipvtnbj6,
            sejcsnlfhvaht: lwjxgq1z60w76wci9fany6y9.gf1ak32yamjjsdmdtg2olv0,
            u6jns4fvo2saoxqjfwk5q8qd: lwjxgq1z60w76wci9fany6y9.q5pk0r3dfv23dc1q,
          );
      _l3xee464njgw7(
        bs2agv3l1c56arwru9xu
            ? '${lwjxgq1z60w76wci9fany6y9.q5pk0r3dfv23dc1q} diamonds added.'
            : 'This App Store transaction was already processed.',
      );
      return true;
    } on CokiSwimmingVgf5z8lwah8pc429uyoylrwv catch (error) {
      _rrcy4usosp2cufad = CokiSwimmingIofrw9mhudy6j198ei.o30onc6ugl21sla0ivz;
      _l3xee464njgw7(error.c4iyezrax5jry9k38j7kkbr);
      return false;
    }
  }

  Future<void> _zs8gadblo4zvipkr5ec070(String cysf10iuaqay0gz) async {
    _p5pep2ao8azaw3cb5ydd.remove(cysf10iuaqay0gz);
    await SharedPreferencesAsync().remove(
      _r6cfn15a58w66yvdz017vihb(cysf10iuaqay0gz),
    );
    notifyListeners();
  }

  void _li9y5zheeywjj(Object _) {
    _rrcy4usosp2cufad = CokiSwimmingIofrw9mhudy6j198ei.o30onc6ugl21sla0ivz;
    _l3xee464njgw7('Unable to read App Store updates.');
  }

  void _h7q5gew8kvaov3(CokiSwimmingQ6afq3rch1hyu oety5mrf0khmyk) {
    _mb76ewp0177lh8j5y6phmh = oety5mrf0khmyk;
    notifyListeners();
  }

  void _l3xee464njgw7(String usnq9qzyg5eakz31) {
    _mou52fwdzouhdsop15d += 1;
    _fncnytm2rpvy0bid2ttdh = CokiSwimmingG5ojv4plar1o9(
      vextpkj2kaug2: _mou52fwdzouhdsop15d,
      x2sgt6ypykglya9y: usnq9qzyg5eakz31,
    );
    notifyListeners();
  }

  String _r6cfn15a58w66yvdz017vihb(String yz5sraptjfbweuu0) =>
      'coki_swimming_store_member_$yz5sraptjfbweuu0';
}
