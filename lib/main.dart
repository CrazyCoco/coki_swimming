import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;
import 'dart:ui';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:encrypt/encrypt.dart' as coki_crypto;
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_player/video_player.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'coki_swimming_hqcf99szi61z/coki_swimming_udb0ns04skt7ojad20vse/coki_swimming_uwqnvf3kvta7197jepdj.dart';
import 'coki_swimming_fmaq8gbh2xs1mj3bri6uw/coki_swimming_ybpvkdp8tgdm.dart';
import 'coki_swimming_2p516f7iqdhmkbrbmv8v/coki_swimming_ujou31nrqkzpfrnn0w.dart';
import 'coki_swimming_f8hr3u0e38w0/coki_swimming_j3832fp6vg4jnrmj6.dart';
import 'coki_swimming_7nyz88vytk6kbm6/coki_swimming_kapytjs8qqm40i.dart';
import 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_sgej2lzfbc8qgbdwvde4lz3.dart';

part 'coki_swimming_hqcf99szi61z/coki_swimming_f2rtvicifju454.dart';
part 'coki_swimming_hqcf99szi61z/coki_swimming_36s3heojabtdkgbvkpvc77yn.dart';
part 'coki_swimming_v2b9wywl71rt/coki_swimming_psj00fbcz7jf8dmlspr91.dart';
part 'coki_swimming_v2b9wywl71rt/coki_swimming_a2xd5ddf1t4iwfq5om6k5sj0.dart';
part 'coki_swimming_v2b9wywl71rt/coki_swimming_exzoydpsxpcfxrzrqeczq1mf.dart';
part 'coki_swimming_k7ip98id3vktoobj1h/coki_swimming_eam8sgc7kh4y10lvfm35kz.dart';
part 'coki_swimming_k7ip98id3vktoobj1h/coki_swimming_e1pxjuzzxziqpd0e.dart';
part 'coki_swimming_zh92kl6rhtd296x8qkcv/coki_swimming_k7v2eyytj3gprl.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_hl2vt6f7kjk7sefi.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_k6b9zo8qvuuk4.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_rakgiqdi8ati68h7.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_w199mqs7ajwr9l0r24yrn42.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_h8tei1lj15nay06l.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_jor9tf0pgfz80.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_d6bknfnk4mbpzcbufdx.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_oxch87lxy52c3atlkyhtn7.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_meh2ec7d3qxl.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_5r2go5x6jwpf0vkjj.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_yg54r461mcq29.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_mtni92wio3x1czj87l2.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_z0x2jerybmqtqwd08z.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_w86fiz26pxaw614g669ao.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_z827sdolqanoebrf.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_0m0tq1bu76zh.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_bia5s9vply463l4za.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_m7x2q9v4n8z1c6p3r5t0.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_q8m2v7x4n9z1p6r3t5.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_iim7551iniq58r.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_zon6mx54nrxa8ryp5nhb.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_cqm7vmpt4mj5qetch5581wc.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_gw6ybvtpyfmoiyomna.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_viyi3xf6vb6mmx1sm93tdi.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_8u0ixyrp1glr5.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_aa2mr1eex85ch91s.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_b8hmp8xd4ycwpl18on7akf0.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_l0k8seaaahfqgrq1uo.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_yl1du9so301rvy12v9rinlle.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_tt5ioyhk8l89wziqiin.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_3g9h2wf2p3plhij2cp54i.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_ux8wre508n1n41t5l6bxkb.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_ph6yct4m9sh5jx.dart';
part 'coki_swimming_dyco30m7ftbi5w0g0fvwfh/coki_swimming_y39efgdshmaou.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_qgig74ar0dhjk02zjzber4s.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_a8vliztgh3l65ayi0kviqw0.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_4iozlhzixdfv9k9t.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_74d6lm82zqo4uzt25cer8.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_0b0ugf0csbg1j7t2.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_khoxn2n7mnmmmk6g1132.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_2wqxxdtwu8eokh07ic.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_bhaofpg8yrhgl8.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_69e94iauxnbu.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_u1z8qdxbd7ld.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_t719n5mzvp61utab1t69.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_2uafssxavjs5sid.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_jq2zzrpum98a8cuh.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_df5bdw9hnrdq5qml3y.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_nlutf0azdboh.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_b2dcpkz212foeyzm.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_fwj668ghmd1sa8.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_jibfj5wq57brtimsh6.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_udwgnvqbnp5r.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_467g0iptp7p46j0bg51j4p.dart';
part 'coki_swimming_tbhwfjfd2yc471z83yw14cg/coki_swimming_69dovrud74qf826bvh0phfrj.dart';
part 'coki_swimming_sr2kf10tt3df9gv99oy/coki_swimming_vjapuvbiq5r8pj9dd0co4.dart';
part 'coki_swimming_sr2kf10tt3df9gv99oy/coki_swimming_f52zsivf4v8k1.dart';
part 'coki_swimming_sr2kf10tt3df9gv99oy/coki_swimming_n4p54rgxgbn9j.dart';
part 'coki_swimming_sr2kf10tt3df9gv99oy/coki_swimming_hmthvh58jwegjk2qal.dart';
part 'coki_swimming_sr2kf10tt3df9gv99oy/coki_swimming_enwd9q65azra8td.dart';
part 'coki_swimming_sr2kf10tt3df9gv99oy/coki_swimming_2o7plefjvqvq0hzrn.dart';
part 'coki_swimming_sr2kf10tt3df9gv99oy/coki_swimming_yiclv01x8bmd0w51ef3.dart';
part 'coki_swimming_sr2kf10tt3df9gv99oy/coki_swimming_spkh1nv3wpkmtyg.dart';
part 'coki_swimming_sr2kf10tt3df9gv99oy/coki_swimming_u0p1ckqbi1dvi.dart';
part 'coki_swimming_sr2kf10tt3df9gv99oy/coki_swimming_b2afkuesnw19mccy81f98d.dart';
part 'coki_swimming_sr2kf10tt3df9gv99oy/coki_swimming_otmem91561ubippm6a7.dart';
part 'coki_swimming_hbf59bdyijwy3rtuu9.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Color(0xFF100A30),
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
  runApp(await CokiSwimmingCihhtnn535rfht8ub.cjaa8zsp5egzpw1cj4n5c());
}
