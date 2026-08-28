import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../coki_swimming_2p516f7iqdhmkbrbmv8v/coki_swimming_ujou31nrqkzpfrnn0w.dart';

part 'coki_swimming_kapytjs8qqm40i.g.dart';

class CokiSwimmingMembers extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get email => text().unique()();
  TextColumn get passwordDigest => text()();
  TextColumn get passwordSalt => text()();
  TextColumn get displayName => text().nullable()();
  TextColumn get avatarPath => text().nullable()();
  TextColumn get biography => text().nullable()();
  IntColumn get coinBalance => integer().withDefault(const Constant(0))();
  BoolColumn get profileCompleted =>
      boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}

class CokiSwimmingGuideLines extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get memberId => integer()();
  TextColumn get content => text()();
  BoolColumn get fromGuide => boolean()();
  DateTimeColumn get createdAt => dateTime()();
}

class CokiSwimmingStoreReceipts extends Table {
  TextColumn get transactionKey => text()();
  IntColumn get memberId => integer()();
  TextColumn get productId => text()();
  IntColumn get quantity => integer()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {transactionKey};
}

class CokiSwimmingVgf5z8lwah8pc429uyoylrwv implements Exception {
  const CokiSwimmingVgf5z8lwah8pc429uyoylrwv(this.c4iyezrax5jry9k38j7kkbr);

  final String c4iyezrax5jry9k38j7kkbr;

  @override
  String toString() => c4iyezrax5jry9k38j7kkbr;
}

@DriftDatabase(
  tables: [
    CokiSwimmingMembers,
    CokiSwimmingGuideLines,
    CokiSwimmingStoreReceipts,
  ],
)
class CokiSwimmingDatabase extends _$CokiSwimmingDatabase {
  CokiSwimmingDatabase._ewgz5mlhoc0z8()
    : super(driftDatabase(name: 'coki_swimming_members'));

  static final CokiSwimmingDatabase hxjpjp7w6ojq86l4ddyhf =
      CokiSwimmingDatabase._ewgz5mlhoc0z8();

  @override
  int get schemaVersion => 4;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (qkqho507ts1qothluj1) => qkqho507ts1qothluj1.createAll(),
    onUpgrade:
        (
          sbz8mjrvceqqwhu70h5,
          cu1jslbenb8nsg3w5oov,
          odw1lgw167xn25p7p3ht76,
        ) async {
          if (cu1jslbenb8nsg3w5oov < 2) {
            await sbz8mjrvceqqwhu70h5.addColumn(
              cokiSwimmingMembers,
              cokiSwimmingMembers.coinBalance,
            );
          }
          if (cu1jslbenb8nsg3w5oov < 3) {
            await sbz8mjrvceqqwhu70h5.createTable(cokiSwimmingGuideLines);
          }
          if (cu1jslbenb8nsg3w5oov < 4) {
            await sbz8mjrvceqqwhu70h5.createTable(cokiSwimmingStoreReceipts);
          }
        },
  );

  Future<CokiSwimmingMember?> j44e71jhd7xqhl10ryivo(int q7k2ulwp3kcf2eicacch1) {
    return (select(cokiSwimmingMembers)..where(
          (dqh0tx5cuad28qdwith) =>
              dqh0tx5cuad28qdwith.id.equals(q7k2ulwp3kcf2eicacch1),
        ))
        .getSingleOrNull();
  }

  Stream<CokiSwimmingMember?> qegrc7kcffpv0i(int e27w569htxbu7db4rlas4) {
    return (select(cokiSwimmingMembers)..where(
          (tj0i82i6w300o0z) => tj0i82i6w300o0z.id.equals(e27w569htxbu7db4rlas4),
        ))
        .watchSingleOrNull();
  }

  Future<CokiSwimmingMember> b3ly3h8x1viikh() async {
    final obuj04ifn5lld = cokiSwimmingno1co2tb6p01cbgq6w3sj9k.first;
    final c9d99ev17zlryt8ec8i = _ebh5tzxmg89wqie5ogl(
      cokiSwimmingw0k49uzxp20rme687o,
    );
    final h37vkeh5wprgtekd = await _lanzdjttp7mw(c9d99ev17zlryt8ec8i);
    final k74vpngtwb6xjohegx4uu75q = DateTime.now();
    final arpah6ggbzp42gxzqlx7xf8 = _thtdsd31gtl2magsuxq1u();
    final r6p4svulsf4p1gaabkgi = CokiSwimmingMembersCompanion(
      passwordDigest: Value(
        _ixw9blxwa1fzj2w14jj73i(
          cokiSwimmingf8gv23j6xwjt30n,
          arpah6ggbzp42gxzqlx7xf8,
        ),
      ),
      passwordSalt: Value(arpah6ggbzp42gxzqlx7xf8),
      displayName: Value(obuj04ifn5lld.y2bm5rqs3zbbqyxivjft35),
      avatarPath: Value(obuj04ifn5lld.xkczithyrycvg26pfjjmm9),
      biography: Value(obuj04ifn5lld.lrh0ljlgkvjv13o),
      profileCompleted: const Value(true),
      updatedAt: Value(k74vpngtwb6xjohegx4uu75q),
    );

    if (h37vkeh5wprgtekd == null) {
      final t4p8bth8spw66wn24 = await into(cokiSwimmingMembers).insert(
        CokiSwimmingMembersCompanion.insert(
          email: c9d99ev17zlryt8ec8i,
          passwordDigest: r6p4svulsf4p1gaabkgi.passwordDigest.value,
          passwordSalt: r6p4svulsf4p1gaabkgi.passwordSalt.value,
          displayName: r6p4svulsf4p1gaabkgi.displayName,
          avatarPath: r6p4svulsf4p1gaabkgi.avatarPath,
          biography: r6p4svulsf4p1gaabkgi.biography,
          profileCompleted: r6p4svulsf4p1gaabkgi.profileCompleted,
          createdAt: k74vpngtwb6xjohegx4uu75q,
          updatedAt: k74vpngtwb6xjohegx4uu75q,
        ),
      );
      return (await j44e71jhd7xqhl10ryivo(t4p8bth8spw66wn24))!;
    }

    await (update(cokiSwimmingMembers)..where(
          (mo0uq1thp00p03a7ct3) =>
              mo0uq1thp00p03a7ct3.id.equals(h37vkeh5wprgtekd.id),
        ))
        .write(r6p4svulsf4p1gaabkgi);
    return (await j44e71jhd7xqhl10ryivo(h37vkeh5wprgtekd.id))!;
  }

  Future<int> fk6lg5nat3c258suvmb({
    required String m46hrhc6pv06315etmp5,
    required String m4mleyfxoz41v9qh,
  }) async {
    final xxck8o2ch7akdwvzi = _ebh5tzxmg89wqie5ogl(m46hrhc6pv06315etmp5);
    _h42guryydm0h0t(xxck8o2ch7akdwvzi);
    _n03oupj35dgfmsidj7(m4mleyfxoz41v9qh);

    final yfubuurpktzbrpl = await _lanzdjttp7mw(xxck8o2ch7akdwvzi);
    if (yfubuurpktzbrpl != null) {
      throw const CokiSwimmingVgf5z8lwah8pc429uyoylrwv(
        'This email is already registered',
      );
    }

    final jj9unz4zwx24kt6wx3 = _thtdsd31gtl2magsuxq1u();
    final lazeon5v3t554f = DateTime.now();
    return into(cokiSwimmingMembers).insert(
      CokiSwimmingMembersCompanion.insert(
        email: xxck8o2ch7akdwvzi,
        passwordDigest: _ixw9blxwa1fzj2w14jj73i(
          m4mleyfxoz41v9qh,
          jj9unz4zwx24kt6wx3,
        ),
        passwordSalt: jj9unz4zwx24kt6wx3,
        createdAt: lazeon5v3t554f,
        updatedAt: lazeon5v3t554f,
      ),
    );
  }

  Future<CokiSwimmingMember?> ubrqrdru7tdyfqwym2p7cli({
    required String kzifl44be3821,
    required String m3vri4713ew781xcrvp8scu,
  }) async {
    final eupehje6i892ayfmw = _ebh5tzxmg89wqie5ogl(kzifl44be3821);
    _h42guryydm0h0t(eupehje6i892ayfmw);
    _n03oupj35dgfmsidj7(m3vri4713ew781xcrvp8scu);
    final xavsogm45uldf2feg3u844o = await _lanzdjttp7mw(eupehje6i892ayfmw);
    if (xavsogm45uldf2feg3u844o == null) return null;
    final amtx391b4w864f = _ixw9blxwa1fzj2w14jj73i(
      m3vri4713ew781xcrvp8scu,
      xavsogm45uldf2feg3u844o.passwordSalt,
    );
    return amtx391b4w864f == xavsogm45uldf2feg3u844o.passwordDigest
        ? xavsogm45uldf2feg3u844o
        : null;
  }

  Future<void> do0wibd17d529z8of0({
    required int jteguej9591hg1ho8,
    required String moou6scfkswil77im7un4,
    required String eaa480o34fnf,
    String? yd7sho6kfa08mm5dz4nrsrk,
  }) async {
    final ta928s7d0ibkf4vqmrp = moou6scfkswil77im7un4.trim();
    final e2ekh1w5yvd5fahr4orkd = eaa480o34fnf.trim();
    if (ta928s7d0ibkf4vqmrp.isEmpty) {
      throw const CokiSwimmingVgf5z8lwah8pc429uyoylrwv(
        'Please enter your name',
      );
    }
    if (e2ekh1w5yvd5fahr4orkd.isEmpty) {
      throw const CokiSwimmingVgf5z8lwah8pc429uyoylrwv(
        'Please choose an avatar',
      );
    }
    if (await j44e71jhd7xqhl10ryivo(jteguej9591hg1ho8) == null) {
      throw const CokiSwimmingVgf5z8lwah8pc429uyoylrwv(
        'Account no longer exists',
      );
    }

    await (update(cokiSwimmingMembers)..where(
          (p5o02d9e94hby0y4jd3llkrg) =>
              p5o02d9e94hby0y4jd3llkrg.id.equals(jteguej9591hg1ho8),
        ))
        .write(
          CokiSwimmingMembersCompanion(
            displayName: Value(ta928s7d0ibkf4vqmrp),
            avatarPath: Value(e2ekh1w5yvd5fahr4orkd),
            biography: Value(_s0zt2ufvo8dphe4l(yd7sho6kfa08mm5dz4nrsrk)),
            profileCompleted: const Value(true),
            updatedAt: Value(DateTime.now()),
          ),
        );
  }

  Future<void> cmbqg0f1hkrr0xp5hm0im({
    required String zrmmuyt730j1giw9v7p8co,
    required String qknutdyjrtyx,
  }) async {
    final tdumtm7cqeter54696sp6a = _ebh5tzxmg89wqie5ogl(zrmmuyt730j1giw9v7p8co);
    _h42guryydm0h0t(tdumtm7cqeter54696sp6a);
    _n03oupj35dgfmsidj7(qknutdyjrtyx);
    final t68i3rz4s0m6quot52dz = await _lanzdjttp7mw(tdumtm7cqeter54696sp6a);
    if (t68i3rz4s0m6quot52dz == null) {
      throw const CokiSwimmingVgf5z8lwah8pc429uyoylrwv('Account not found');
    }

    final bzk2b6djncbchhjd = _thtdsd31gtl2magsuxq1u();
    await (update(cokiSwimmingMembers)..where(
          (n6mbyakqdc6ec9) => n6mbyakqdc6ec9.id.equals(t68i3rz4s0m6quot52dz.id),
        ))
        .write(
          CokiSwimmingMembersCompanion(
            passwordDigest: Value(
              _ixw9blxwa1fzj2w14jj73i(qknutdyjrtyx, bzk2b6djncbchhjd),
            ),
            passwordSalt: Value(bzk2b6djncbchhjd),
            updatedAt: Value(DateTime.now()),
          ),
        );
  }

  Future<void> ueewyuceyrubr4ohibgt(int afx9lp9m1mr8u3yp4qi4) async {
    await transaction(() async {
      await (delete(cokiSwimmingGuideLines)..where(
            (u3fzmovqsjepwn52h47w) =>
                u3fzmovqsjepwn52h47w.memberId.equals(afx9lp9m1mr8u3yp4qi4),
          ))
          .go();
      await (delete(cokiSwimmingStoreReceipts)..where(
            (i3ccbh26s2kn) =>
                i3ccbh26s2kn.memberId.equals(afx9lp9m1mr8u3yp4qi4),
          ))
          .go();
      await (delete(cokiSwimmingMembers)..where(
            (z4ampopej7go2tpxu7e2j19h) =>
                z4ampopej7go2tpxu7e2j19h.id.equals(afx9lp9m1mr8u3yp4qi4),
          ))
          .go();
    });
  }

  Stream<List<CokiSwimmingGuideLine>> fhhdah5e3lpc0l8(int mjfviypzwkytkh7crv) {
    return (select(cokiSwimmingGuideLines)
          ..where(
            (f9pjy54qdin7yck) =>
                f9pjy54qdin7yck.memberId.equals(mjfviypzwkytkh7crv),
          )
          ..orderBy([
            (n11wg6b71fwfvs) => OrderingTerm.asc(n11wg6b71fwfvs.createdAt),
            (dhbdnugzel76xfqm7n8jm) =>
                OrderingTerm.asc(dhbdnugzel76xfqm7n8jm.id),
          ]))
        .watch();
  }

  Future<List<CokiSwimmingGuideLine>> zl2ufclpn4x07aeqviowxz(
    int k10wm7wey5uycjnbkg, {
    int c4ed3fxqb92swmi0tyk8a8vw = 24,
  }) async {
    final ncp2tsvvy7x1fdcnzz =
        await (select(cokiSwimmingGuideLines)
              ..where(
                (qqqmtmi7i2ghrdy2k7ly) =>
                    qqqmtmi7i2ghrdy2k7ly.memberId.equals(k10wm7wey5uycjnbkg),
              )
              ..orderBy([
                (p9npngmmcj2kbm) => OrderingTerm.desc(p9npngmmcj2kbm.createdAt),
                (z4oesv28pln8g6449u8) =>
                    OrderingTerm.desc(z4oesv28pln8g6449u8.id),
              ])
              ..limit(c4ed3fxqb92swmi0tyk8a8vw))
            .get();
    return ncp2tsvvy7x1fdcnzz.reversed.toList(growable: false);
  }

  Future<void> nnts9uxx2f55dwpt7j({
    required int deh9493eov3x17lviad9n3,
    required String k0tnti39j3lm3p94bdpy6,
    required bool yf0ek4jzhsdg,
  }) async {
    final k6kr31lgapggi = k0tnti39j3lm3p94bdpy6.trim();
    if (k6kr31lgapggi.isEmpty) return;
    if (await j44e71jhd7xqhl10ryivo(deh9493eov3x17lviad9n3) == null) {
      throw const CokiSwimmingVgf5z8lwah8pc429uyoylrwv(
        'Account no longer exists',
      );
    }
    await into(cokiSwimmingGuideLines).insert(
      CokiSwimmingGuideLinesCompanion.insert(
        memberId: deh9493eov3x17lviad9n3,
        content: k6kr31lgapggi,
        fromGuide: yf0ek4jzhsdg,
        createdAt: DateTime.now(),
      ),
    );
  }

  Future<void> p5dmetpffj6yp64zvkwo(int f3lwih2nzvl2crlwl8) {
    return (delete(cokiSwimmingGuideLines)..where(
          (l20ow296n10z0174fhe9) =>
              l20ow296n10z0174fhe9.memberId.equals(f3lwih2nzvl2crlwl8),
        ))
        .go();
  }

  Future<bool> qbiohcrp0nlif({
    required int tj0xgu8fnq291anz,
    required int auu9q8n5irmdhsfei1nu,
  }) {
    if (auu9q8n5irmdhsfei1nu <= 0) {
      throw const CokiSwimmingVgf5z8lwah8pc429uyoylrwv(
        'The Coki AI access quantity is invalid',
      );
    }
    return transaction(() async {
      final pnmdnw10e08ubs4d = await j44e71jhd7xqhl10ryivo(tj0xgu8fnq291anz);
      if (pnmdnw10e08ubs4d == null) {
        throw const CokiSwimmingVgf5z8lwah8pc429uyoylrwv(
          'Account no longer exists',
        );
      }
      if (pnmdnw10e08ubs4d.coinBalance < auu9q8n5irmdhsfei1nu) return false;
      await (update(cokiSwimmingMembers)..where(
            (s40evfya12kq67gfbbvop5q3) =>
                s40evfya12kq67gfbbvop5q3.id.equals(tj0xgu8fnq291anz),
          ))
          .write(
            CokiSwimmingMembersCompanion(
              coinBalance: Value(
                pnmdnw10e08ubs4d.coinBalance - auu9q8n5irmdhsfei1nu,
              ),
              updatedAt: Value(DateTime.now()),
            ),
          );
      return true;
    });
  }

  Future<bool> khle54jdwyb24tmd3({
    required int ko0d6ennf9o9l7si2,
    required String ileayy6584htnbzrl,
    required String sejcsnlfhvaht,
    required int u6jns4fvo2saoxqjfwk5q8qd,
  }) async {
    if (ileayy6584htnbzrl.isEmpty || u6jns4fvo2saoxqjfwk5q8qd <= 0) {
      throw const CokiSwimmingVgf5z8lwah8pc429uyoylrwv(
        'The App Store transaction is invalid',
      );
    }
    return transaction(() async {
      final t19qjace6uhm9a = await j44e71jhd7xqhl10ryivo(ko0d6ennf9o9l7si2);
      if (t19qjace6uhm9a == null) {
        throw const CokiSwimmingVgf5z8lwah8pc429uyoylrwv(
          'Sign in before completing this purchase',
        );
      }
      final eo5o83ibun1j2p = await into(cokiSwimmingStoreReceipts).insert(
        CokiSwimmingStoreReceiptsCompanion.insert(
          transactionKey: ileayy6584htnbzrl,
          memberId: ko0d6ennf9o9l7si2,
          productId: sejcsnlfhvaht,
          quantity: u6jns4fvo2saoxqjfwk5q8qd,
          createdAt: DateTime.now(),
        ),
        mode: InsertMode.insertOrIgnore,
      );
      if (eo5o83ibun1j2p == 0) return false;
      await (update(cokiSwimmingMembers)..where(
            (mh36knwlusdzt36s) => mh36knwlusdzt36s.id.equals(ko0d6ennf9o9l7si2),
          ))
          .write(
            CokiSwimmingMembersCompanion(
              coinBalance: Value(
                t19qjace6uhm9a.coinBalance + u6jns4fvo2saoxqjfwk5q8qd,
              ),
              updatedAt: Value(DateTime.now()),
            ),
          );
      return true;
    });
  }

  Future<CokiSwimmingMember?> _lanzdjttp7mw(String tmz3365zuvyf253odo773) {
    return (select(cokiSwimmingMembers)..where(
          (dnk6fmpzskksrurbcyp0ev) =>
              dnk6fmpzskksrurbcyp0ev.email.equals(tmz3365zuvyf253odo773),
        ))
        .getSingleOrNull();
  }

  static String _ebh5tzxmg89wqie5ogl(String cq4tvgz12hkbkk) =>
      cq4tvgz12hkbkk.trim().toLowerCase();

  static void _h42guryydm0h0t(String htas8zgdd95h) {
    final mcenooypfqg8ehm3me3zw13w = RegExp(
      r'^[^\s@]+@[^\s@]+\.[^\s@]+$',
    ).hasMatch(htas8zgdd95h);
    if (!mcenooypfqg8ehm3me3zw13w) {
      throw const CokiSwimmingVgf5z8lwah8pc429uyoylrwv(
        'Please enter a valid email address',
      );
    }
  }

  static void _n03oupj35dgfmsidj7(String cvlyholcgwkr1g211liuofq) {
    if (cvlyholcgwkr1g211liuofq.length < 6) {
      throw const CokiSwimmingVgf5z8lwah8pc429uyoylrwv(
        'Password must be at least 6 characters',
      );
    }
  }

  static String _thtdsd31gtl2magsuxq1u() {
    final zccaaeoao4892 = Random.secure();
    return base64UrlEncode(
      List<int>.generate(16, (_) => zccaaeoao4892.nextInt(256)),
    );
  }

  static String _ixw9blxwa1fzj2w14jj73i(
    String oa7byhtw0v1pv56jxuj,
    String gg5stc2qi0vk,
  ) {
    List<int> u36ifao9w13v = utf8.encode(
      '$gg5stc2qi0vk:$oa7byhtw0v1pv56jxuj:coki_swimming_auth_v1',
    );
    for (var fspxeaxxn1fcn = 0; fspxeaxxn1fcn < 12000; fspxeaxxn1fcn++) {
      u36ifao9w13v = sha256.convert(u36ifao9w13v).bytes;
    }
    return base64UrlEncode(u36ifao9w13v);
  }

  static String? _s0zt2ufvo8dphe4l(String? cr110k7t2g9f6g692hm) {
    final w3xn4v6019ipzb7ho8 = cr110k7t2g9f6g692hm?.trim();
    return w3xn4v6019ipzb7ho8 == null || w3xn4v6019ipzb7ho8.isEmpty
        ? null
        : w3xn4v6019ipzb7ho8;
  }
}

class CokiSwimmingCxpnto70zseiuixud78r {
  const CokiSwimmingCxpnto70zseiuixud78r._slrfllgpu6oz1r1();

  static const String _zaduvos1caw8fkow7 = 'coki_swimming_current_member_id';

  static Future<int?> o6irsuz6o8tm5() {
    return SharedPreferencesAsync().getInt(_zaduvos1caw8fkow7);
  }

  static Future<void> vv7lf9ga9wde(int q18gzlywq3xh) {
    return SharedPreferencesAsync().setInt(_zaduvos1caw8fkow7, q18gzlywq3xh);
  }

  static Future<void> ynqw22nyqb3a2c() {
    return SharedPreferencesAsync().remove(_zaduvos1caw8fkow7);
  }
}
