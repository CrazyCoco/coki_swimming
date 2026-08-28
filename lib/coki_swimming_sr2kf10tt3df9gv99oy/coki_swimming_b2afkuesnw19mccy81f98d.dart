part of '../main.dart';

class CokiSwimmingEa33alie83a7ztht03ml6za {
  const CokiSwimmingEa33alie83a7ztht03ml6za._rn5cnuf3whskvouql1hhotvx();

  static void v8k18e1fwcihnfevusm4iq(
    BuildContext xcwzo7nkaif5, {
    String cokiSwimming2017dfe9792f0833 = 'unknown',
  }) {
    showGeneralDialog<void>(
      context: xcwzo7nkaif5,
      barrierDismissible: true,
      barrierLabel: 'Dismiss',
      barrierColor: const Color(0xA6000000),
      transitionDuration: const Duration(milliseconds: 180),
      pageBuilder: (kwdzmbvtmlcjpbfo85o, _, _) => SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 20),
            child: FittedBox(
              fit: BoxFit.contain,
              child: SizedBox(
                width: 329,
                height: 383,
                child: Material(
                  color: Colors.transparent,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_f0d365793a13c201a714.png',
                        fit: BoxFit.fill,
                      ),
                      Positioned(
                        left: 89,
                        top: 126,
                        width: 151,
                        height: 46,
                        child: CokiSwimmingKtoozpjuob7rods(
                          kvg85l6uieobzf: BorderRadius.circular(24),
                          gwrsyzojtp84oco1ldhaaw90: () {
                            Navigator.of(kwdzmbvtmlcjpbfo85o).pop();
                            Navigator.of(xcwzo7nkaif5).pushNamed(
                              CokiSwimmingXu1hfvhsqfkovamr518kcwz
                                  .oj8msxz451vkc9,
                              arguments: cokiSwimming2017dfe9792f0833,
                            );
                          },
                          v6j3bxo2dz4aevlmr: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x260F092F),
                                  blurRadius: 10,
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),
                            child: const Text(
                              'Report',
                              style: TextStyle(
                                color: Color(0xFF100A30),
                                fontSize: 16,
                                height: 1.2,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 89,
                        top: 188,
                        width: 151,
                        height: 46,
                        child: CokiSwimmingKtoozpjuob7rods(
                          kvg85l6uieobzf: BorderRadius.circular(24),
                          gwrsyzojtp84oco1ldhaaw90: () async {
                            Navigator.of(kwdzmbvtmlcjpbfo85o).pop();
                            await CokiSwimming4b37q42lzh8qku34.cokiSwimming06de00fa7aaf(
                              cokiSwimming2017dfe9792f0833,
                            );
                            if (!xcwzo7nkaif5.mounted) return;
                            CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
                              xcwzo7nkaif5,
                              'Shielded',
                            );
                          },
                          v6j3bxo2dz4aevlmr: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x260F092F),
                                  blurRadius: 10,
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),
                            child: const Text(
                              'Shield',
                              style: TextStyle(
                                color: Color(0xFF100A30),
                                fontSize: 16,
                                height: 1.2,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 81,
                        top: 257,
                        width: 167,
                        height: 48,
                        child: CokiSwimmingKtoozpjuob7rods(
                          kvg85l6uieobzf: BorderRadius.circular(25),
                          gwrsyzojtp84oco1ldhaaw90: () =>
                              Navigator.of(kwdzmbvtmlcjpbfo85o).pop(),
                          v6j3bxo2dz4aevlmr: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xFF100A30),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Text(
                              'Cancel',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                height: 1.2,
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
            ),
          ),
        ),
      ),
    );
  }
}
