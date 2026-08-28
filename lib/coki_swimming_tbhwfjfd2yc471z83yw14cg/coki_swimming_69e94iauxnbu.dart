part of '../main.dart';

class CokiSwimmingBb4vxo54q8ay6fa3w extends StatelessWidget {
  const CokiSwimmingBb4vxo54q8ay6fa3w({
    super.key,
    required this.iyzbn3eqestk94f2dz41,
  });

  final double iyzbn3eqestk94f2dz41;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          child: Image.asset(
            'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_9xf7k0zny5z102pg7.png',
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ),
        Positioned(
          right: 38 * iyzbn3eqestk94f2dz41,
          top: 92 * iyzbn3eqestk94f2dz41,
          child: Image.asset(
            'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_n9bdkwecb8mb.png',
            width: 179 * iyzbn3eqestk94f2dz41,
            height: 211 * iyzbn3eqestk94f2dz41,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          left: 23 * iyzbn3eqestk94f2dz41,
          top: 117 * iyzbn3eqestk94f2dz41,
          child: _CokiSwimmingDd1hzboag2zj9o8nye1un9q2(
            ohjpulrixccyge5et3: iyzbn3eqestk94f2dz41,
          ),
        ),
        Positioned(
          left: 110 * iyzbn3eqestk94f2dz41,
          right: 39 * iyzbn3eqestk94f2dz41,
          top: 264 * iyzbn3eqestk94f2dz41,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(23 * iyzbn3eqestk94f2dz41),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
              child: Container(
                height: 46 * iyzbn3eqestk94f2dz41,
                padding: EdgeInsets.symmetric(
                  horizontal: 8 * iyzbn3eqestk94f2dz41,
                ),
                alignment: Alignment.center,
                color: const Color(0xFFB5A4B9).withValues(alpha: 0.34),
                child: const Text(
                  'Chat with AI to unlock swimming tips,\ntechniques, and more.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    height: 1.25,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _CokiSwimmingDd1hzboag2zj9o8nye1un9q2 extends StatelessWidget {
  const _CokiSwimmingDd1hzboag2zj9o8nye1un9q2({
    required this.ohjpulrixccyge5et3,
  });

  final double ohjpulrixccyge5et3;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60 * ohjpulrixccyge5et3,
      height: 193 * ohjpulrixccyge5et3,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_q5w61qze4rfzcl2i.png',
              width: 18 * ohjpulrixccyge5et3,
              height: 18 * ohjpulrixccyge5et3,
            ),
          ),
          Positioned(
            left: 0,
            top: 23 * ohjpulrixccyge5et3,
            child: RotatedBox(
              quarterTurns: 1,
              child: Text(
                'Coki AI',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34 * ohjpulrixccyge5et3,
                  height: 1,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_9n0kiofpdcmc7.png',
              width: 36 * ohjpulrixccyge5et3,
              height: 18 * ohjpulrixccyge5et3,
            ),
          ),
        ],
      ),
    );
  }
}
