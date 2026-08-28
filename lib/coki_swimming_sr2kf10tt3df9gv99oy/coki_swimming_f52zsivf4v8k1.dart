part of '../main.dart';

class CokiSwimmingTq92zenanm7d {
  const CokiSwimmingTq92zenanm7d._aw8y72muqa1ehnn9();

  static void sb454b7g1kkew(
    BuildContext rit32841a2gi7hmc,
    Future<void> Function() iksozah0n8tar,
  ) {
    showGeneralDialog<void>(
      context: rit32841a2gi7hmc,
      barrierDismissible: false,
      barrierLabel: 'Delete account',
      barrierColor: Colors.black.withValues(alpha: 0.55),
      pageBuilder: (jsu2231s0mxhmmisgksdr, _, _) => Center(
        child: _CokiSwimmingMbfy6ps8qiu42u3p2ee(
          m2hdvf138fqerrs92ehnpkrq: 'Delete account',
          gdkfmzxfd079dmiyq8jeqp:
              'This permanently deletes your account and its associated data. This action cannot be undone.',
          jmll04xhs2fggyyd: 'OK',
          r8er3mm25rwi2rrumx: () async {
            Navigator.of(jsu2231s0mxhmmisgksdr).pop();
            try {
              await iksozah0n8tar();
              if (!jsu2231s0mxhmmisgksdr.mounted) return;
              Navigator.of(jsu2231s0mxhmmisgksdr).pushNamedAndRemoveUntil(
                CokiSwimmingXu1hfvhsqfkovamr518kcwz.kbjrfu57dlohydfrf39b,
                (wxffns1c0tckcm0a) => false,
              );
            } catch (_) {
              if (jsu2231s0mxhmmisgksdr.mounted) {
                CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
                  jsu2231s0mxhmmisgksdr,
                  'Unable to delete account',
                );
              }
            }
          },
        ),
      ),
    );
  }

  static void cokiSwimming9e422d9ca2b283fe4a(
    BuildContext cokiSwimminge1dede58be386fa349,
    Future<void> Function() cokiSwimmingc9668b22bf91528b64,
  ) {
    showGeneralDialog<void>(
      context: cokiSwimminge1dede58be386fa349,
      barrierDismissible: false,
      barrierLabel: 'Delete post',
      barrierColor: Colors.black.withValues(alpha: 0.55),
      pageBuilder: (cokiSwimming597ed34abe4d6bef16, _, _) => Center(
        child: _CokiSwimmingMbfy6ps8qiu42u3p2ee(
          m2hdvf138fqerrs92ehnpkrq: 'Delete post?',
          gdkfmzxfd079dmiyq8jeqp:
              'This post will be permanently removed. This action cannot be undone.',
          jmll04xhs2fggyyd: 'Delete',
          r8er3mm25rwi2rrumx: () async {
            Navigator.of(cokiSwimming597ed34abe4d6bef16).pop();
            try {
              await cokiSwimmingc9668b22bf91528b64();
            } catch (_) {
              if (!cokiSwimminge1dede58be386fa349.mounted) return;
              CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
                cokiSwimminge1dede58be386fa349,
                'Unable to delete post',
                isError: true,
              );
            }
          },
        ),
      ),
    );
  }
}
