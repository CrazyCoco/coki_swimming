part of '../main.dart';

class CokiSwimmingZtyxfp3lq31l2w0fhshj {
  const CokiSwimmingZtyxfp3lq31l2w0fhshj._ujx8k7214i86iv86iy6v8od3();

  static Future<bool> mvi1nb3x272ot04klo34qq(
    BuildContext nkwxkrvwvgpqal,
    int j1111pzsls37ycodixj,
  ) async {
    final dcmoxrzh772m0rak = await showGeneralDialog<bool>(
      context: nkwxkrvwvgpqal,
      barrierDismissible: false,
      barrierLabel: 'Enter Coki AI',
      barrierColor: Colors.black.withValues(alpha: 0.55),
      pageBuilder: (b8c7goyq8fh4iesmg, _, _) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Center(
          child: _CokiSwimmingMbfy6ps8qiu42u3p2ee(
            m2hdvf138fqerrs92ehnpkrq: 'Enter Coki AI?',
            gdkfmzxfd079dmiyq8jeqp:
                'This entry costs 100 coins. Your current balance is $j1111pzsls37ycodixj.',
            jmll04xhs2fggyyd: 'Enter',
            r8er3mm25rwi2rrumx: () => Navigator.of(b8c7goyq8fh4iesmg).pop(true),
          ),
        ),
      ),
    );
    return dcmoxrzh772m0rak ?? false;
  }

  static Future<void> fz66oygb8ileijuc(
    BuildContext m27ufhdk6w1mlmcg,
    int lrvsxrq8dv7yp,
  ) {
    final zsvbu7i9t8k5vx88av = Navigator.of(m27ufhdk6w1mlmcg);
    return showGeneralDialog<void>(
      context: m27ufhdk6w1mlmcg,
      barrierDismissible: false,
      barrierLabel: 'Insufficient balance',
      barrierColor: Colors.black.withValues(alpha: 0.55),
      pageBuilder: (u35xmnb2yq0663, _, _) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Center(
          child: _CokiSwimmingNzot2biolb4f18ofqcvx19oe(
            vefb676hu48svoca6qor4r3v: lrvsxrq8dv7yp,
            fdppf5wm5esxmuyganes: () {
              zsvbu7i9t8k5vx88av.pop();
              zsvbu7i9t8k5vx88av.pushNamed(
                CokiSwimmingXu1hfvhsqfkovamr518kcwz.tsux9v3xzdp79n2vwllqrjd9,
              );
            },
          ),
        ),
      ),
    );
  }
}

class _CokiSwimmingNzot2biolb4f18ofqcvx19oe extends StatelessWidget {
  const _CokiSwimmingNzot2biolb4f18ofqcvx19oe({
    required this.vefb676hu48svoca6qor4r3v,
    required this.fdppf5wm5esxmuyganes,
  });

  final int vefb676hu48svoca6qor4r3v;
  final VoidCallback fdppf5wm5esxmuyganes;

  @override
  Widget build(BuildContext context) {
    final zuxza5zkk0syibr65v2zc52 = MediaQuery.sizeOf(context).width;
    final exgh8rfp4xo16zc14qtgygnk = math.min(
      329.0,
      zuxza5zkk0syibr65v2zc52 - 24,
    );
    final b8jjale43q1xu = exgh8rfp4xo16zc14qtgygnk * 1149 / 987;
    final fn8sym217ub7dh9t39midf4o = exgh8rfp4xo16zc14qtgygnk / 329;

    return Semantics(
      label:
          'Sorry, your current balance is insufficient. Current balance is $vefb676hu48svoca6qor4r3v.',
      child: Material(
        color: Colors.transparent,
        child: SizedBox(
          width: exgh8rfp4xo16zc14qtgygnk,
          height: b8jjale43q1xu,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned.fill(
                child: Image.asset(
                  'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_8o37xayrgti5l72p2mrcc7me.png',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_xvzezn556el2gm7vqoph8.png',
                        width: 66 * fn8sym217ub7dh9t39midf4o,
                        height: 64 * fn8sym217ub7dh9t39midf4o,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 11 * fn8sym217ub7dh9t39midf4o),
                      SizedBox(
                        width: 233 * fn8sym217ub7dh9t39midf4o,
                        child: Text(
                          'Sorry',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25 * fn8sym217ub7dh9t39midf4o,
                            height: 1.12,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(height: 15 * fn8sym217ub7dh9t39midf4o),
                      SizedBox(
                        width: 225 * fn8sym217ub7dh9t39midf4o,
                        child: Text(
                          'your current balance\nis insufficient',
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16 * fn8sym217ub7dh9t39midf4o,
                            height: 1.45,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 20 * fn8sym217ub7dh9t39midf4o),
                      SizedBox(
                        width: 166 * fn8sym217ub7dh9t39midf4o,
                        height: 57 * fn8sym217ub7dh9t39midf4o,
                        child: CokiSwimmingKtoozpjuob7rods(
                          kvg85l6uieobzf: BorderRadius.circular(
                            29 * fn8sym217ub7dh9t39midf4o,
                          ),
                          gwrsyzojtp84oco1ldhaaw90: fdppf5wm5esxmuyganes,
                          v6j3bxo2dz4aevlmr: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xFF100A30),
                              borderRadius: BorderRadius.circular(
                                29 * fn8sym217ub7dh9t39midf4o,
                              ),
                            ),
                            child: Text(
                              'Recharge',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22 * fn8sym217ub7dh9t39midf4o,
                                height: 1,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
