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

class CokiSwimming73e845eb8995e10d78699 extends Table {
  IntColumn get cokiSwimmingCe270c0c89ce45814c97b26d =>
      integer().autoIncrement()();
  IntColumn get cokiSwimming374c2d33d71555c => integer()();
  TextColumn get cokiSwimming7b6a39bc7b3edf2290dcea74 => text()();
  TextColumn get cokiSwimming9af26f21c2b33 => text()();
  TextColumn get cokiSwimmingE070b66af5a82465 => text()();
  DateTimeColumn get cokiSwimming514b073dd6131a57e6977ba2 => dateTime()();
  DateTimeColumn get cokiSwimming33d2f31d45bcd84135 => dateTime()();

  @override
  List<Set<Column<Object>>> get uniqueKeys => [
    {
      cokiSwimming374c2d33d71555c,
      cokiSwimming7b6a39bc7b3edf2290dcea74,
      cokiSwimming9af26f21c2b33,
    },
  ];
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
    CokiSwimming73e845eb8995e10d78699,
  ],
)
class CokiSwimmingDatabase extends _$CokiSwimmingDatabase {
  CokiSwimmingDatabase._ewgz5mlhoc0z8()
    : super(driftDatabase(name: 'coki_swimming_members'));

  static final CokiSwimmingDatabase hxjpjp7w6ojq86l4ddyhf =
      CokiSwimmingDatabase._ewgz5mlhoc0z8();

  @override
  int get schemaVersion => 5;

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
          if (cu1jslbenb8nsg3w5oov < 5) {
            await sbz8mjrvceqqwhu70h5.createTable(
              cokiSwimming73e845eb8995e10d78699,
            );
          }
        },
  );

  Future<String?> cokiSwimming08fc79df5890845d({
    required int cokiSwimmingFfdff4098f67dc2a39b,
    required String cokiSwimming9ca085a1e9464611db57745,
    required String cokiSwimming756b8fe9fc667a,
  }) async {
    final cokiSwimming3c65da8108cd178e5abb90 =
        await (select(cokiSwimming73e845eb8995e10d78699)..where(
              (cokiSwimmingCe3de262b28deb0bff0) =>
                  cokiSwimmingCe3de262b28deb0bff0.cokiSwimming374c2d33d71555c
                      .equals(cokiSwimmingFfdff4098f67dc2a39b) &
                  cokiSwimmingCe3de262b28deb0bff0
                      .cokiSwimming7b6a39bc7b3edf2290dcea74
                      .equals(cokiSwimming9ca085a1e9464611db57745) &
                  cokiSwimmingCe3de262b28deb0bff0.cokiSwimming9af26f21c2b33
                      .equals(cokiSwimming756b8fe9fc667a),
            ))
            .getSingleOrNull();
    return cokiSwimming3c65da8108cd178e5abb90?.cokiSwimmingE070b66af5a82465;
  }

  Future<void> cokiSwimming74e8b2f70fa2f5b({
    required int cokiSwimming0a44fb28163763bb6ec69,
    required String cokiSwimming47e760ec313f586105,
    required String cokiSwimmingDb6b0273792c060,
    required String cokiSwimmingC91a15fc4d8a49ccb,
  }) async {
    final cokiSwimmingBd3e1c8338c6 = DateTime.now();
    await into(cokiSwimming73e845eb8995e10d78699).insert(
      CokiSwimming73e845eb8995e10d78699Companion.insert(
        cokiSwimming374c2d33d71555c: cokiSwimming0a44fb28163763bb6ec69,
        cokiSwimming7b6a39bc7b3edf2290dcea74: cokiSwimming47e760ec313f586105,
        cokiSwimming9af26f21c2b33: cokiSwimmingDb6b0273792c060,
        cokiSwimmingE070b66af5a82465: cokiSwimmingC91a15fc4d8a49ccb,
        cokiSwimming514b073dd6131a57e6977ba2: cokiSwimmingBd3e1c8338c6,
        cokiSwimming33d2f31d45bcd84135: cokiSwimmingBd3e1c8338c6,
      ),
      mode: InsertMode.insertOrReplace,
    );
  }

  Future<void> cokiSwimmingD9140901ed7086({
    required int cokiSwimmingE0064399a5ff3e4735ca7,
    required String cokiSwimmingCf073cd0054339a92b8,
    required String cokiSwimming73d832bca2a52a71d0da79bb,
  }) {
    return (delete(cokiSwimming73e845eb8995e10d78699)..where(
          (cokiSwimming80031596729d0f601e80) =>
              cokiSwimming80031596729d0f601e80.cokiSwimming374c2d33d71555c
                  .equals(cokiSwimmingE0064399a5ff3e4735ca7) &
              cokiSwimming80031596729d0f601e80
                  .cokiSwimming7b6a39bc7b3edf2290dcea74
                  .equals(cokiSwimmingCf073cd0054339a92b8) &
              cokiSwimming80031596729d0f601e80.cokiSwimming9af26f21c2b33.equals(
                cokiSwimming73d832bca2a52a71d0da79bb,
              ),
        ))
        .go();
  }

  Stream<List<MapEntry<int, String>>> cokiSwimming0b68ec29b8b211b689a6(
    String cokiSwimming30ee5c09746b3902e836,
  ) {
    return (select(cokiSwimming73e845eb8995e10d78699)
          ..where(
            (cokiSwimming3017dc7f9db088fe92f4) =>
                cokiSwimming3017dc7f9db088fe92f4
                    .cokiSwimming7b6a39bc7b3edf2290dcea74
                    .equals(cokiSwimming30ee5c09746b3902e836),
          )
          ..orderBy([
            (cokiSwimmingF97b7fb084ac48c309b9) => OrderingTerm.desc(
              cokiSwimmingF97b7fb084ac48c309b9.cokiSwimming33d2f31d45bcd84135,
            ),
          ]))
        .watch()
        .map(
          (cokiSwimmingA1152e21221753ced0a4) => cokiSwimmingA1152e21221753ced0a4
              .map(
                (cokiSwimming601d1327323ffd99fab1) => MapEntry(
                  cokiSwimming601d1327323ffd99fab1.cokiSwimming374c2d33d71555c,
                  cokiSwimming601d1327323ffd99fab1.cokiSwimmingE070b66af5a82465,
                ),
              )
              .toList(growable: false),
        );
  }

  Stream<String?> cokiSwimming5a0c9ec6e99b9db2({
    required int cokiSwimming437bcbd34e2d30e6,
    required String cokiSwimmingA066704a66c5b817,
    required String cokiSwimming04e6aeb1f334b2eb,
  }) {
    return (select(cokiSwimming73e845eb8995e10d78699)..where(
          (cokiSwimming7b00554c333342d9) =>
              cokiSwimming7b00554c333342d9.cokiSwimming374c2d33d71555c.equals(
                cokiSwimming437bcbd34e2d30e6,
              ) &
              cokiSwimming7b00554c333342d9.cokiSwimming7b6a39bc7b3edf2290dcea74
                  .equals(cokiSwimmingA066704a66c5b817) &
              cokiSwimming7b00554c333342d9.cokiSwimming9af26f21c2b33.equals(
                cokiSwimming04e6aeb1f334b2eb,
              ),
        ))
        .watchSingleOrNull()
        .map(
          (cokiSwimmingE19eaf3b5d760191) =>
              cokiSwimmingE19eaf3b5d760191?.cokiSwimmingE070b66af5a82465,
        );
  }

  Stream<List<MapEntry<String, String>>> cokiSwimming4b20f2e655a8a5a8({
    required int cokiSwimming3e27f09983ab3565,
    required String cokiSwimming5950383ed83f1f5a,
  }) {
    return (select(cokiSwimming73e845eb8995e10d78699)
          ..where(
            (cokiSwimmingCb428abcb4ac6b4e) =>
                cokiSwimmingCb428abcb4ac6b4e.cokiSwimming374c2d33d71555c.equals(
                  cokiSwimming3e27f09983ab3565,
                ) &
                cokiSwimmingCb428abcb4ac6b4e
                    .cokiSwimming7b6a39bc7b3edf2290dcea74
                    .equals(cokiSwimming5950383ed83f1f5a),
          )
          ..orderBy([
            (cokiSwimming2962f6a0faddcd099585c07c) => OrderingTerm.desc(
              cokiSwimming2962f6a0faddcd099585c07c
                  .cokiSwimming33d2f31d45bcd84135,
            ),
          ]))
        .watch()
        .map(
          (cokiSwimmingB87adb36991318d1) => cokiSwimmingB87adb36991318d1
              .map(
                (cokiSwimming8cca92052af32eb5) => MapEntry(
                  cokiSwimming8cca92052af32eb5.cokiSwimming9af26f21c2b33,
                  cokiSwimming8cca92052af32eb5.cokiSwimmingE070b66af5a82465,
                ),
              )
              .toList(growable: false),
        );
  }

  Future<void> cokiSwimming5888d9ff47b1dda1fa87() async {
    Future<void> cokiSwimming7a34ed6b018a756475bf(
      String? cokiSwimming1cd1f61894dad9e5a59c,
      String cokiSwimminge0202533c98cf5f17ee6,
      String cokiSwimming3e230d44c21bf91beb51,
      Iterable<CokiSwimmingOla0gu1u5h0t2dqk0sy77kg>
      cokiSwimming74de7461361eb869551c,
    ) async {
      const cokiSwimming8d88a4d49f10934b17ab = <String>[
        'Training',
        'Lifestyle',
        'Community',
      ];
      final cokiSwimmingd042aae602d4afaaab56 = Random.secure();
      late List<dynamic> cokiSwimming1efd7f5ded299f4be18f;
      var cokiSwimming2bad49d8fb2b26566714 =
          cokiSwimming1cd1f61894dad9e5a59c == null;
      if (cokiSwimming1cd1f61894dad9e5a59c == null) {
        cokiSwimming1efd7f5ded299f4be18f = cokiSwimming74de7461361eb869551c
            .map(
              (cokiSwimming155e13692884c47c9282) =>
                  cokiSwimming155e13692884c47c9282
                      .cokiSwimming4e5227e43dc4c3fab6e2(),
            )
            .toList(growable: false);
      } else {
        try {
          final cokiSwimmingb765830d4f94359701ad = jsonDecode(
            cokiSwimming1cd1f61894dad9e5a59c,
          );
          if (cokiSwimmingb765830d4f94359701ad is List) {
            cokiSwimming1efd7f5ded299f4be18f = List<dynamic>.from(
              cokiSwimmingb765830d4f94359701ad,
            );
          } else {
            cokiSwimming1efd7f5ded299f4be18f = cokiSwimming74de7461361eb869551c
                .map(
                  (cokiSwimmingae25ed800d8a3e0c95db) =>
                      cokiSwimmingae25ed800d8a3e0c95db
                          .cokiSwimming4e5227e43dc4c3fab6e2(),
                )
                .toList(growable: false);
            cokiSwimming2bad49d8fb2b26566714 = true;
          }
        } on Object {
          cokiSwimming1efd7f5ded299f4be18f = cokiSwimming74de7461361eb869551c
              .map(
                (cokiSwimmingee67bb5718ca92b975a9) =>
                    cokiSwimmingee67bb5718ca92b975a9
                        .cokiSwimming4e5227e43dc4c3fab6e2(),
              )
              .toList(growable: false);
          cokiSwimming2bad49d8fb2b26566714 = true;
        }
      }
      for (
        var cokiSwimminga8c1a95d13baad76c670 = 0;
        cokiSwimminga8c1a95d13baad76c670 <
            cokiSwimming1efd7f5ded299f4be18f.length;
        cokiSwimminga8c1a95d13baad76c670++
      ) {
        final cokiSwimming30b1e2b46b84b46145a6 =
            cokiSwimming1efd7f5ded299f4be18f[cokiSwimminga8c1a95d13baad76c670];
        if (cokiSwimming30b1e2b46b84b46145a6 is! Map) continue;
        final cokiSwimming91590ad83a5a4eea2db3 = Map<String, dynamic>.from(
          cokiSwimming30b1e2b46b84b46145a6,
        );
        final cokiSwimming4a2efa6329afb081ff1806 =
            cokiSwimming91590ad83a5a4eea2db3.containsKey('media') &&
                !cokiSwimming91590ad83a5a4eea2db3.containsKey(
                  'coki_swimming_bba9677e3e7adf3b3317',
                )
            ? 'theme'
            : 'coki_swimming_aba5f578c6b93e759b60';
        if (cokiSwimming8d88a4d49f10934b17ab.contains(
          cokiSwimming91590ad83a5a4eea2db3[cokiSwimming4a2efa6329afb081ff1806]
              ?.toString()
              .trim(),
        )) {
          continue;
        }
        cokiSwimming91590ad83a5a4eea2db3[cokiSwimming4a2efa6329afb081ff1806] =
            cokiSwimming8d88a4d49f10934b17ab[cokiSwimmingd042aae602d4afaaab56
                .nextInt(cokiSwimming8d88a4d49f10934b17ab.length)];
        cokiSwimming1efd7f5ded299f4be18f[cokiSwimminga8c1a95d13baad76c670] =
            cokiSwimming91590ad83a5a4eea2db3;
        cokiSwimming2bad49d8fb2b26566714 = true;
      }
      if (!cokiSwimming2bad49d8fb2b26566714) return;
      await cokiSwimming74e8b2f70fa2f5b(
        cokiSwimming0a44fb28163763bb6ec69: 0,
        cokiSwimming47e760ec313f586105: cokiSwimminge0202533c98cf5f17ee6,
        cokiSwimmingDb6b0273792c060: cokiSwimming3e230d44c21bf91beb51,
        cokiSwimmingC91a15fc4d8a49ccb: jsonEncode(
          cokiSwimming1efd7f5ded299f4be18f,
        ),
      );
    }

    await (update(cokiSwimming73e845eb8995e10d78699)..where(
          (cokiSwimmingE22081833d02d655) => cokiSwimmingE22081833d02d655
              .cokiSwimming7b6a39bc7b3edf2290dcea74
              .equals('coki_swimming_3b87beaf298701f'),
        ))
        .write(
          CokiSwimming73e845eb8995e10d78699Companion(
            cokiSwimming7b6a39bc7b3edf2290dcea74: Value(
              cokiSwimming4ca26a05eb1ecb7acb47,
            ),
          ),
        );
    await (update(cokiSwimming73e845eb8995e10d78699)..where(
          (cokiSwimmingE3381b5a30f5e758) => cokiSwimmingE3381b5a30f5e758
              .cokiSwimming7b6a39bc7b3edf2290dcea74
              .equals('coki_swimming_09f0ac088be177d6e083'),
        ))
        .write(
          CokiSwimming73e845eb8995e10d78699Companion(
            cokiSwimming7b6a39bc7b3edf2290dcea74: Value(
              cokiSwimmingEe949f348e3201ebf685,
            ),
          ),
        );
    final cokiSwimmingE8afa7ee6f5323ffa6bd = await cokiSwimming08fc79df5890845d(
      cokiSwimmingFfdff4098f67dc2a39b: 0,
      cokiSwimming9ca085a1e9464611db57745: cokiSwimming4ca26a05eb1ecb7acb47,
      cokiSwimming756b8fe9fc667a: 'coki_swimming_e721a81e925db028d6ac',
    );
    await cokiSwimming7a34ed6b018a756475bf(
      cokiSwimmingE8afa7ee6f5323ffa6bd,
      cokiSwimming4ca26a05eb1ecb7acb47,
      'coki_swimming_e721a81e925db028d6ac',
      cokiSwimmingno1co2tb6p01cbgq6w3sj9k,
    );
    final cokiSwimmingF5eac54117c64a4e = await cokiSwimming08fc79df5890845d(
      cokiSwimmingFfdff4098f67dc2a39b: 0,
      cokiSwimming9ca085a1e9464611db57745: cokiSwimmingEe949f348e3201ebf685,
      cokiSwimming756b8fe9fc667a: 'coki_swimming_36acec4984e2d325',
    );
    await cokiSwimming7a34ed6b018a756475bf(
      cokiSwimmingF5eac54117c64a4e,
      cokiSwimmingEe949f348e3201ebf685,
      'coki_swimming_36acec4984e2d325',
      cokiSwimmingno1co2tb6p01cbgq6w3sj9k.where(
        (cokiSwimming435ec1fd6cf223fb) =>
            cokiSwimming435ec1fd6cf223fb.zagjx458al86vlep0we1whdx,
      ),
    );
  }

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

  Future<void> cokiSwimming190054447e1b046a21() async {
    const cokiSwimming2dd62f0b0042a80207b9 =
        'coki_swimming_2e6b97747dbb592bffd1';
    final cokiSwimmingfaef699760422f44aff279 =
        await cokiSwimming08fc79df5890845d(
          cokiSwimmingFfdff4098f67dc2a39b: 0,
          cokiSwimming9ca085a1e9464611db57745: cokiSwimming2dd62f0b0042a80207b9,
          cokiSwimming756b8fe9fc667a: cokiSwimming2dd62f0b0042a80207b9,
        );
    if (cokiSwimmingfaef699760422f44aff279 == '1') return;

    final cokiSwimming84c99542f320e523cfe4c14b = await b3ly3h8x1viikh();
    await cokiSwimming9ff8647a8db795593352c07f(
      cokiSwimming95497b3b1627bdb0b8: cokiSwimming84c99542f320e523cfe4c14b.id,
    );
    await cokiSwimming74e8b2f70fa2f5b(
      cokiSwimming0a44fb28163763bb6ec69: 0,
      cokiSwimming47e760ec313f586105: cokiSwimming2dd62f0b0042a80207b9,
      cokiSwimmingDb6b0273792c060: cokiSwimming2dd62f0b0042a80207b9,
      cokiSwimmingC91a15fc4d8a49ccb: '1',
    );
  }

  Future<void> cokiSwimming9ff8647a8db795593352c07f({
    required int cokiSwimming95497b3b1627bdb0b8,
  }) async {
    const cokiSwimmingFbbfe81ec459a04a =
        'coki_swimming_e4e063e1a6c8832013dc0b6e';
    final cokiSwimmingA152b0412fb5f475d94e = await cokiSwimming08fc79df5890845d(
      cokiSwimmingFfdff4098f67dc2a39b: cokiSwimming95497b3b1627bdb0b8,
      cokiSwimming9ca085a1e9464611db57745: cokiSwimmingFbbfe81ec459a04a,
      cokiSwimming756b8fe9fc667a: cokiSwimmingFbbfe81ec459a04a,
    );
    if (cokiSwimmingA152b0412fb5f475d94e == '1') return;

    final cokiSwimming8286fcc3f3fa97 = cokiSwimmingno1co2tb6p01cbgq6w3sj9k
        .skip(1)
        .take(6)
        .toList();
    final cokiSwimming83f4050104c8a79e = cokiSwimming8286fcc3f3fa97
        .take(5)
        .toList();
    final cokiSwimming901bf5c63143 = [
      ...cokiSwimming8286fcc3f3fa97.take(4),
      cokiSwimming8286fcc3f3fa97.last,
    ];
    final cokiSwimming4ab07a34ddfdb52616a6 = <List<String>>[
      [
        'coki_swimming_2f81c4d760ea93b:Hi Iris, are you swimming this evening?',
        'Yes, I am heading to the pool after work.',
        'coki_swimming_2f81c4d760ea93b:Nice. I am working on my freestyle breathing today.',
        'That is on my list too. Let us compare notes later.',
        'coki_swimming_2f81c4d760ea93b:Deal. Have a strong session!',
      ],
      [
        'coki_swimming_2f81c4d760ea93b:Your endurance set looked solid yesterday.',
        'Thanks! The final 200 meters were tough.',
        'coki_swimming_2f81c4d760ea93b:You kept a steady pace all the way through.',
        'I am trying to stay relaxed through each turn.',
        'coki_swimming_2f81c4d760ea93b:That is helping. Want to train together Saturday?',
        'Saturday morning works for me.',
      ],
      [
        'coki_swimming_2f81c4d760ea93b:Do you have a recovery session planned today?',
        'Just an easy 800 meters and some drills.',
        'coki_swimming_2f81c4d760ea93b:Perfect. I may copy that plan.',
        'Keep the effort light and focus on technique.',
        'coki_swimming_2f81c4d760ea93b:Good call. See you at the pool.',
      ],
    ];

    await transaction(() async {
      await (update(cokiSwimmingMembers)..where(
            (cokiSwimming51528e7059816c) => cokiSwimming51528e7059816c.id
                .equals(cokiSwimming95497b3b1627bdb0b8),
          ))
          .write(
            CokiSwimmingMembersCompanion(
              coinBalance: const Value(200),
              updatedAt: Value(DateTime.now()),
            ),
          );

      Future<void> cokiSwimmingEa093b2c65d5e6(
        String cokiSwimming4cb23c5602bf813c89,
        String cokiSwimming91b5d54be66589a3094fde,
      ) async {
        await into(cokiSwimming73e845eb8995e10d78699).insert(
          CokiSwimming73e845eb8995e10d78699Companion.insert(
            cokiSwimming374c2d33d71555c: cokiSwimming95497b3b1627bdb0b8,
            cokiSwimming7b6a39bc7b3edf2290dcea74:
                cokiSwimming4cb23c5602bf813c89,
            cokiSwimming9af26f21c2b33: cokiSwimming91b5d54be66589a3094fde,
            cokiSwimmingE070b66af5a82465: 'true',
            cokiSwimming514b073dd6131a57e6977ba2: DateTime.now(),
            cokiSwimming33d2f31d45bcd84135: DateTime.now(),
          ),
          mode: InsertMode.insertOrReplace,
        );
      }

      for (final cokiSwimmingC69bc28c8ad908f415
          in cokiSwimming83f4050104c8a79e) {
        await cokiSwimmingEa093b2c65d5e6(
          'coki_swimming_7d2435be94a018ea',
          cokiSwimmingC69bc28c8ad908f415.y2bm5rqs3zbbqyxivjft35,
        );
      }
      for (final cokiSwimming04fcfc85db23 in cokiSwimming901bf5c63143) {
        await cokiSwimmingEa093b2c65d5e6(
          'coki_swimming_f3660e7a3f607207',
          cokiSwimming04fcfc85db23.y2bm5rqs3zbbqyxivjft35,
        );
      }

      final cokiSwimmingA1957ff471bb =
          cokiSwimming901bf5c63143
              .expand(
                (cokiSwimmingCd00dc18fb41ea809b24) => [
                  'coki_swimming_f53255a434bccdd2e6:${cokiSwimmingCd00dc18fb41ea809b24.pgj8geudv74awjznrves.first}',
                  if (cokiSwimmingCd00dc18fb41ea809b24.dpz5ewc9dhgqc != null)
                    'coki_swimming_cd8fd5c2ba4b10eaa0:${cokiSwimmingCd00dc18fb41ea809b24.dpz5ewc9dhgqc}',
                ],
              )
              .toSet()
              .toList()
            ..sort();
      await cokiSwimming74e8b2f70fa2f5b(
        cokiSwimming0a44fb28163763bb6ec69: cokiSwimming95497b3b1627bdb0b8,
        cokiSwimming47e760ec313f586105: 'coki_swimming_2f8e262d9e92b8b3d1',
        cokiSwimmingDb6b0273792c060: 'coki_swimming_2f8e262d9e92b8b3d1',
        cokiSwimmingC91a15fc4d8a49ccb: jsonEncode(cokiSwimmingA1957ff471bb),
      );

      await cokiSwimmingD9140901ed7086(
        cokiSwimmingE0064399a5ff3e4735ca7: cokiSwimming95497b3b1627bdb0b8,
        cokiSwimmingCf073cd0054339a92b8: 'coki_swimming_0b07453e76830afdf',
        cokiSwimming73d832bca2a52a71d0da79bb: 'coki_swimming_0b07453e76830afdf',
      );
      for (
        var cokiSwimming2be6de6a80e7 = 0;
        cokiSwimming2be6de6a80e7 < 3;
        cokiSwimming2be6de6a80e7++
      ) {
        final cokiSwimming7b6708ae894348145c1252 =
            cokiSwimming8286fcc3f3fa97[cokiSwimming2be6de6a80e7];
        await cokiSwimming74e8b2f70fa2f5b(
          cokiSwimming0a44fb28163763bb6ec69: cokiSwimming95497b3b1627bdb0b8,
          cokiSwimming47e760ec313f586105: 'coki_swimming_0b07453e76830afdf',
          cokiSwimmingDb6b0273792c060:
              cokiSwimming7b6708ae894348145c1252.y2bm5rqs3zbbqyxivjft35,
          cokiSwimmingC91a15fc4d8a49ccb: jsonEncode({
            'coki_swimming_91f58a5ff4ad8b': cokiSwimming7b6708ae894348145c1252
                .cokiSwimming4e5227e43dc4c3fab6e2(),
            'coki_swimming_6298354aa4e11480ad95':
                cokiSwimming4ab07a34ddfdb52616a6[cokiSwimming2be6de6a80e7],
          }),
        );
      }
      await cokiSwimming74e8b2f70fa2f5b(
        cokiSwimming0a44fb28163763bb6ec69: cokiSwimming95497b3b1627bdb0b8,
        cokiSwimming47e760ec313f586105: cokiSwimmingFbbfe81ec459a04a,
        cokiSwimmingDb6b0273792c060: cokiSwimmingFbbfe81ec459a04a,
        cokiSwimmingC91a15fc4d8a49ccb: '1',
      );
    });
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

    final cokiSwimming425oq4zhie81 = DateTime.now();
    await transaction(() async {
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
              updatedAt: Value(cokiSwimming425oq4zhie81),
            ),
          );

      final cokiSwimming5j62sfrlad41od =
          await (select(cokiSwimming73e845eb8995e10d78699)..where(
                (cokiSwimming9iprscsm0hw72strqufaysqr) =>
                    cokiSwimming9iprscsm0hw72strqufaysqr
                        .cokiSwimming374c2d33d71555c
                        .equals(jteguej9591hg1ho8) &
                    cokiSwimming9iprscsm0hw72strqufaysqr
                        .cokiSwimming7b6a39bc7b3edf2290dcea74
                        .isIn([
                          cokiSwimming4ca26a05eb1ecb7acb47,
                          cokiSwimmingEe949f348e3201ebf685,
                        ]),
              ))
              .get();
      for (final cokiSwimming5nvdp7hskc707fo68 in cokiSwimming5j62sfrlad41od) {
        final cokiSwimming0olh1r7ir68ep = jsonDecode(
          cokiSwimming5nvdp7hskc707fo68.cokiSwimmingE070b66af5a82465,
        );
        if (cokiSwimming0olh1r7ir68ep is! List) continue;
        final cokiSwimmingqyz81o42wm6xuwxsm = cokiSwimming0olh1r7ir68ep
            .map((cokiSwimming5m5sbtkelobgy7oejx8) {
              if (cokiSwimming5m5sbtkelobgy7oejx8 is! Map) {
                return cokiSwimming5m5sbtkelobgy7oejx8;
              }
              return Map<String, dynamic>.from(cokiSwimming5m5sbtkelobgy7oejx8)
                ..['coki_swimming_a33aa39e2af0e9856dfa'] = ta928s7d0ibkf4vqmrp
                ..['coki_swimming_f6643ddc1cc353551724'] = e2ekh1w5yvd5fahr4orkd
                ..['coki_swimming_c9d8da9a66b15cf669aa'] = _s0zt2ufvo8dphe4l(
                  yd7sho6kfa08mm5dz4nrsrk,
                );
            })
            .toList(growable: false);
        await (update(cokiSwimming73e845eb8995e10d78699)..where(
              (cokiSwimmingc86aukfeag5hlph601ponolm) =>
                  cokiSwimmingc86aukfeag5hlph601ponolm
                      .cokiSwimmingCe270c0c89ce45814c97b26d
                      .equals(
                        cokiSwimming5nvdp7hskc707fo68
                            .cokiSwimmingCe270c0c89ce45814c97b26d,
                      ),
            ))
            .write(
              CokiSwimming73e845eb8995e10d78699Companion(
                cokiSwimmingE070b66af5a82465: Value(
                  jsonEncode(cokiSwimmingqyz81o42wm6xuwxsm),
                ),
                cokiSwimming33d2f31d45bcd84135: Value(cokiSwimming425oq4zhie81),
              ),
            );
      }

      final cokiSwimmingfdw4mjyk1dti4jvttv =
          await (select(cokiSwimming73e845eb8995e10d78699)..where(
                (cokiSwimming4ig66hqyvgeu) => cokiSwimming4ig66hqyvgeu
                    .cokiSwimming7b6a39bc7b3edf2290dcea74
                    .equals('coki_swimming_775c5d91cc33a9c'),
              ))
              .get();
      for (final cokiSwimmingegplionnc8s6f08qf5ge
          in cokiSwimmingfdw4mjyk1dti4jvttv) {
        final cokiSwimmingqa1sfk9p4quc4xc41vdjni = jsonDecode(
          cokiSwimmingegplionnc8s6f08qf5ge.cokiSwimmingE070b66af5a82465,
        );
        if (cokiSwimmingqa1sfk9p4quc4xc41vdjni is! List) continue;
        var cokiSwimmingktgsjdqm07grx = false;
        for (final cokiSwimmingsnoygwim0row4
            in cokiSwimmingqa1sfk9p4quc4xc41vdjni) {
          if (cokiSwimmingsnoygwim0row4 is! Map ||
              cokiSwimmingsnoygwim0row4['coki_swimming_bf1bc5ec56281f1916']
                      ?.toString() !=
                  '$jteguej9591hg1ho8') {
            continue;
          }
          cokiSwimmingsnoygwim0row4['coki_swimming_3f12826e074f3a95c4'] =
              ta928s7d0ibkf4vqmrp;
          cokiSwimmingsnoygwim0row4['coki_swimming_43b50310d0d2'] =
              e2ekh1w5yvd5fahr4orkd;
          cokiSwimmingktgsjdqm07grx = true;
        }
        if (!cokiSwimmingktgsjdqm07grx) continue;
        await (update(cokiSwimming73e845eb8995e10d78699)..where(
              (cokiSwimmingp4t2u6tkfwk6jzpn33qeejy) =>
                  cokiSwimmingp4t2u6tkfwk6jzpn33qeejy
                      .cokiSwimmingCe270c0c89ce45814c97b26d
                      .equals(
                        cokiSwimmingegplionnc8s6f08qf5ge
                            .cokiSwimmingCe270c0c89ce45814c97b26d,
                      ),
            ))
            .write(
              CokiSwimming73e845eb8995e10d78699Companion(
                cokiSwimmingE070b66af5a82465: Value(
                  jsonEncode(cokiSwimmingqa1sfk9p4quc4xc41vdjni),
                ),
                cokiSwimming33d2f31d45bcd84135: Value(cokiSwimming425oq4zhie81),
              ),
            );
      }
    });
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
      await (delete(cokiSwimming73e845eb8995e10d78699)..where(
            (cokiSwimmingdd248266276187cc1133) =>
                cokiSwimmingdd248266276187cc1133.cokiSwimming374c2d33d71555c
                    .equals(0) &
                (cokiSwimmingdd248266276187cc1133
                        .cokiSwimming7b6a39bc7b3edf2290dcea74
                        .equals('coki_swimming_daily_swim_log_v1') |
                    cokiSwimmingdd248266276187cc1133
                        .cokiSwimming7b6a39bc7b3edf2290dcea74
                        .equals('coki_swimming_training_plan_v1')),
          ))
          .go();
      await (delete(cokiSwimming73e845eb8995e10d78699)..where(
            (cokiSwimming822c4ade78fb01ac) => cokiSwimming822c4ade78fb01ac
                .cokiSwimming374c2d33d71555c
                .equals(afx9lp9m1mr8u3yp4qi4),
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

  static Future<void> cokiSwimmingb60bfd971ff9478faa2d() async {
    final cokiSwimmingb87e761b0fe50095 = SharedPreferencesAsync();
    await Future.wait([
      cokiSwimmingb87e761b0fe50095.remove('coki_swimming_0316f133ed7a8a3be1'),
      cokiSwimmingb87e761b0fe50095.remove('coki_swimming_2f8e262d9e92b8b3d1'),
      cokiSwimmingb87e761b0fe50095.remove('coki_swimming_daily_swim_log_v1'),
      cokiSwimmingb87e761b0fe50095.remove('coki_swimming_training_plan_v1'),
    ]);
  }
}
