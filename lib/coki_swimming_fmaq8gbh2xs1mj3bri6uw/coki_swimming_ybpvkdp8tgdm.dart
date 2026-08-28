import 'dart:io';
import 'dart:math';

import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

enum CokiSwimmingGcnt0jewcf1egxi3 { xqv2yjmj3yqx4dg, ax8icszvu1lgzkxup4rc9e }

enum CokiSwimmingAgu703r90i4rdun9b8a07eu1 {
  zbp3eniyd720ii,
  i6phxpwdk2a3a6kl3hcrj,
  hhjze8rpndgpsp3t8nfyaia,
  xfylbv3f69742tgubgsh,
  ml7v6nhg8apanpou1b92nq,
  lbqeawmbjqjbyellb,
}

class CokiSwimmingMaz1fx7oaujsthbrmbk {
  const CokiSwimmingMaz1fx7oaujsthbrmbk(
    this.s8ino37cgs5urhavq3k, {
    this.cl6shvp4miod1vh,
  });

  final CokiSwimmingAgu703r90i4rdun9b8a07eu1 s8ino37cgs5urhavq3k;
  final String? cl6shvp4miod1vh;
}

class CokiSwimmingMoqf2x4lzqna5nuxmxu1rah5 {
  CokiSwimmingMoqf2x4lzqna5nuxmxu1rah5._nr67i1ju22hsf77solna();

  static final CokiSwimmingMoqf2x4lzqna5nuxmxu1rah5 j0gecuushzrwcqffsejytl =
      CokiSwimmingMoqf2x4lzqna5nuxmxu1rah5._nr67i1ju22hsf77solna();

  final ImagePicker _ifvmprel3lqbot = ImagePicker();

  Future<String> cokiSwimming4f02cccd10f0e6f51e({
    required String cokiSwimming0201c617085ad8e2,
    required int cokiSwimmingF829cc4fef9408bb,
  }) async {
    final cokiSwimming5814eb7930558229 = File(cokiSwimming0201c617085ad8e2);
    if (!await cokiSwimming5814eb7930558229.exists() ||
        await cokiSwimming5814eb7930558229.length() == 0) {
      throw const FileSystemException('Selected media is unavailable');
    }
    final cokiSwimming1b32af7d29e46765 =
        await getApplicationDocumentsDirectory();
    final cokiSwimming5f440029ce35a63a = Directory(
      p.join(
        cokiSwimming1b32af7d29e46765.path,
        'coki_swimming_77710f789718d228',
        '$cokiSwimmingF829cc4fef9408bb',
      ),
    );
    await cokiSwimming5f440029ce35a63a.create(recursive: true);
    final cokiSwimming590563549aa16199 = Random.secure();
    const cokiSwimming09cebe001f8b81a9 = 'abcdefghijklmnopqrstuvwxyz0123456789';
    final cokiSwimming68cc3455fc228832 = List.generate(
      20,
      (_) =>
          cokiSwimming09cebe001f8b81a9[cokiSwimming590563549aa16199.nextInt(
            cokiSwimming09cebe001f8b81a9.length,
          )],
    ).join();
    final cokiSwimming9a2d53fb8a52ba87 = p
        .extension(cokiSwimming0201c617085ad8e2)
        .toLowerCase();
    final cokiSwimmingB4175776200eec3a = p.join(
      cokiSwimming5f440029ce35a63a.path,
      'coki_swimming_$cokiSwimming68cc3455fc228832${cokiSwimming9a2d53fb8a52ba87.isEmpty ? '.bin' : cokiSwimming9a2d53fb8a52ba87}',
    );
    final cokiSwimming8d6e021b23c135a6 = await cokiSwimming5814eb7930558229
        .copy(cokiSwimmingB4175776200eec3a);
    if (await cokiSwimming8d6e021b23c135a6.length() == 0) {
      throw const FileSystemException('Unable to save selected media');
    }
    return cokiSwimming8d6e021b23c135a6.path;
  }

  Future<CokiSwimmingMaz1fx7oaujsthbrmbk> cil9vlkhbbu64x(
    CokiSwimmingGcnt0jewcf1egxi3 szpp6isbm25xgudwan353s,
  ) async {
    try {
      final avui9mpr3o4y8up =
          szpp6isbm25xgudwan353s == CokiSwimmingGcnt0jewcf1egxi3.xqv2yjmj3yqx4dg
          ? Permission.camera
          : Permission.photos;
      var q8mwlv8dizbdt = await avui9mpr3o4y8up.status;
      if (!_y7sxo3zc4jfcxigxuaypzi(szpp6isbm25xgudwan353s, q8mwlv8dizbdt)) {
        q8mwlv8dizbdt = await avui9mpr3o4y8up.request();
      }
      if (!_y7sxo3zc4jfcxigxuaypzi(szpp6isbm25xgudwan353s, q8mwlv8dizbdt)) {
        final z90fg6f20sbkf8dm =
            q8mwlv8dizbdt.isPermanentlyDenied || q8mwlv8dizbdt.isRestricted;
        return CokiSwimmingMaz1fx7oaujsthbrmbk(
          z90fg6f20sbkf8dm
              ? CokiSwimmingAgu703r90i4rdun9b8a07eu1.xfylbv3f69742tgubgsh
              : CokiSwimmingAgu703r90i4rdun9b8a07eu1.hhjze8rpndgpsp3t8nfyaia,
        );
      }

      final putzs82lo4j4abcy = await _ifvmprel3lqbot.pickImage(
        source:
            szpp6isbm25xgudwan353s ==
                CokiSwimmingGcnt0jewcf1egxi3.xqv2yjmj3yqx4dg
            ? ImageSource.camera
            : ImageSource.gallery,
        maxWidth: 2048,
        maxHeight: 2048,
        imageQuality: 90,
      );
      if (putzs82lo4j4abcy == null) {
        return const CokiSwimmingMaz1fx7oaujsthbrmbk(
          CokiSwimmingAgu703r90i4rdun9b8a07eu1.i6phxpwdk2a3a6kl3hcrj,
        );
      }

      final d9012mtavzpiqhtm5tbiiz = File(putzs82lo4j4abcy.path);
      if (!await d9012mtavzpiqhtm5tbiiz.exists() ||
          await d9012mtavzpiqhtm5tbiiz.length() == 0) {
        return const CokiSwimmingMaz1fx7oaujsthbrmbk(
          CokiSwimmingAgu703r90i4rdun9b8a07eu1.ml7v6nhg8apanpou1b92nq,
        );
      }
      return CokiSwimmingMaz1fx7oaujsthbrmbk(
        CokiSwimmingAgu703r90i4rdun9b8a07eu1.zbp3eniyd720ii,
        cl6shvp4miod1vh: putzs82lo4j4abcy.path,
      );
    } catch (_) {
      return const CokiSwimmingMaz1fx7oaujsthbrmbk(
        CokiSwimmingAgu703r90i4rdun9b8a07eu1.lbqeawmbjqjbyellb,
      );
    }
  }

  Future<CokiSwimmingMaz1fx7oaujsthbrmbk> cokiSwimming488f8713dd7e51e30aae(
    CokiSwimmingGcnt0jewcf1egxi3 cokiSwimming13ec53d7297aa6f7f26a1,
  ) async {
    try {
      final cokiSwimming4ffddfa06d88067e18 =
          cokiSwimming13ec53d7297aa6f7f26a1 ==
              CokiSwimmingGcnt0jewcf1egxi3.xqv2yjmj3yqx4dg
          ? Permission.camera
          : Permission.photos;
      var cokiSwimming3cbba5362036328885c6b =
          await cokiSwimming4ffddfa06d88067e18.status;
      if (!_y7sxo3zc4jfcxigxuaypzi(
        cokiSwimming13ec53d7297aa6f7f26a1,
        cokiSwimming3cbba5362036328885c6b,
      )) {
        cokiSwimming3cbba5362036328885c6b = await cokiSwimming4ffddfa06d88067e18
            .request();
      }
      if (!_y7sxo3zc4jfcxigxuaypzi(
        cokiSwimming13ec53d7297aa6f7f26a1,
        cokiSwimming3cbba5362036328885c6b,
      )) {
        return CokiSwimmingMaz1fx7oaujsthbrmbk(
          cokiSwimming3cbba5362036328885c6b.isPermanentlyDenied
              ? CokiSwimmingAgu703r90i4rdun9b8a07eu1.xfylbv3f69742tgubgsh
              : CokiSwimmingAgu703r90i4rdun9b8a07eu1.hhjze8rpndgpsp3t8nfyaia,
        );
      }
      if (cokiSwimming13ec53d7297aa6f7f26a1 ==
          CokiSwimmingGcnt0jewcf1egxi3.xqv2yjmj3yqx4dg) {
        var cokiSwimmingA3cdb64b55d15906cf = await Permission.microphone.status;
        if (!cokiSwimmingA3cdb64b55d15906cf.isGranted) {
          cokiSwimmingA3cdb64b55d15906cf = await Permission.microphone
              .request();
        }
        if (!cokiSwimmingA3cdb64b55d15906cf.isGranted) {
          return const CokiSwimmingMaz1fx7oaujsthbrmbk(
            CokiSwimmingAgu703r90i4rdun9b8a07eu1.hhjze8rpndgpsp3t8nfyaia,
          );
        }
      }
      final cokiSwimming8256b271359189ad391072a = await _ifvmprel3lqbot
          .pickVideo(
            source:
                cokiSwimming13ec53d7297aa6f7f26a1 ==
                    CokiSwimmingGcnt0jewcf1egxi3.xqv2yjmj3yqx4dg
                ? ImageSource.camera
                : ImageSource.gallery,
            maxDuration: const Duration(minutes: 10),
          );
      if (cokiSwimming8256b271359189ad391072a == null) {
        return const CokiSwimmingMaz1fx7oaujsthbrmbk(
          CokiSwimmingAgu703r90i4rdun9b8a07eu1.i6phxpwdk2a3a6kl3hcrj,
        );
      }
      final cokiSwimmingB0069ee413c8 = File(
        cokiSwimming8256b271359189ad391072a.path,
      );
      if (!await cokiSwimmingB0069ee413c8.exists() ||
          await cokiSwimmingB0069ee413c8.length() == 0) {
        return const CokiSwimmingMaz1fx7oaujsthbrmbk(
          CokiSwimmingAgu703r90i4rdun9b8a07eu1.ml7v6nhg8apanpou1b92nq,
        );
      }
      return CokiSwimmingMaz1fx7oaujsthbrmbk(
        CokiSwimmingAgu703r90i4rdun9b8a07eu1.zbp3eniyd720ii,
        cl6shvp4miod1vh: cokiSwimming8256b271359189ad391072a.path,
      );
    } catch (_) {
      return const CokiSwimmingMaz1fx7oaujsthbrmbk(
        CokiSwimmingAgu703r90i4rdun9b8a07eu1.lbqeawmbjqjbyellb,
      );
    }
  }

  Future<String> qsb5oa0s3f6dhfjf3vqdx1ah({
    required String fjfw665hoyjpidxk94ci,
    required int huimmeu38tic,
  }) async {
    final iqxuomhtyintccarc34c1yd = File(fjfw665hoyjpidxk94ci);
    if (!await iqxuomhtyintccarc34c1yd.exists() ||
        await iqxuomhtyintccarc34c1yd.length() == 0) {
      throw const FileSystemException('Selected avatar is unavailable');
    }

    final c4azpht0c51g1 = await getApplicationDocumentsDirectory();
    final c2sfq95q2bn5w3p47v7em = Directory(
      p.join(c4azpht0c51g1.path, 'coki_swimming_profiles', '$huimmeu38tic'),
    );
    await c2sfq95q2bn5w3p47v7em.create(recursive: true);
    final avee7rayvjkxdag47053zx = p
        .extension(fjfw665hoyjpidxk94ci)
        .toLowerCase();
    final dteiuw8cybdoxrkslv = avee7rayvjkxdag47053zx.isEmpty
        ? '.jpg'
        : avee7rayvjkxdag47053zx;
    final wvauyuv6ijx66p9vsx9f2 = p.join(
      c2sfq95q2bn5w3p47v7em.path,
      'avatar_${DateTime.now().microsecondsSinceEpoch}$dteiuw8cybdoxrkslv',
    );
    final qp8qoo161235hk9lvtj3pnu2 = await iqxuomhtyintccarc34c1yd.copy(
      wvauyuv6ijx66p9vsx9f2,
    );
    if (!await qp8qoo161235hk9lvtj3pnu2.exists() ||
        await qp8qoo161235hk9lvtj3pnu2.length() == 0) {
      throw const FileSystemException('Unable to save selected avatar');
    }
    return qp8qoo161235hk9lvtj3pnu2.path;
  }

  Future<void> h8h3oh2yfwet(
    String? wtz5dl84zpaf7q87yyyob6c,
    int fltw36pxexps7s5,
  ) async {
    if (wtz5dl84zpaf7q87yyyob6c == null || wtz5dl84zpaf7q87yyyob6c.isEmpty) {
      return;
    }
    final ylqr0pmjpiexww9 = await getApplicationDocumentsDirectory();
    final vmimna3iq9r0dq = p.join(
      ylqr0pmjpiexww9.path,
      'coki_swimming_profiles',
      '$fltw36pxexps7s5',
    );
    if (!p.isWithin(vmimna3iq9r0dq, wtz5dl84zpaf7q87yyyob6c)) return;
    final jiihkbrn44p6y3fy5c725v = File(wtz5dl84zpaf7q87yyyob6c);
    if (await jiihkbrn44p6y3fy5c725v.exists()) {
      await jiihkbrn44p6y3fy5c725v.delete();
    }
  }

  Future<bool> jewkrljnyhkq() => openAppSettings();

  bool _y7sxo3zc4jfcxigxuaypzi(
    CokiSwimmingGcnt0jewcf1egxi3 knxl4ph8v97a3,
    PermissionStatus hqd1fxnd5rzi2vwr3btm,
  ) {
    return hqd1fxnd5rzi2vwr3btm.isGranted ||
        (knxl4ph8v97a3 == CokiSwimmingGcnt0jewcf1egxi3.ax8icszvu1lgzkxup4rc9e &&
            hqd1fxnd5rzi2vwr3btm.isLimited);
  }
}
