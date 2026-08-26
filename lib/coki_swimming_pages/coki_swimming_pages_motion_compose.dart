part of '../main.dart';

class CokiSwimmingMotionComposeScreen extends StatelessWidget {
  const CokiSwimmingMotionComposeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: [
              const CokiSwimmingTopBar(title: ''),
              Expanded(
                child: ListView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  padding: const EdgeInsets.fromLTRB(16, 20, 16, 24),
                  children: [
                    const CokiSwimmingTextBox(),
                    const SizedBox(height: 20),
                    const Text(
                      'Upload (Video)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        height: 1.3,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CokiSwimmingTap(
                        borderRadius: BorderRadius.circular(12),
                        onTap: () =>
                            CokiSwimmingToast.show(context, 'Select a source'),
                        child: Container(
                          width: 66,
                          height: 66,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            'coki_swimming_assets/coki_swimming_video_glyph.png',
                            width: 32,
                            height: 32,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 118),
                    Center(
                      child: SizedBox(
                        width: 190,
                        child: CokiSwimmingGradientButton(
                          label: 'Release',
                          onTap: () {
                            CokiSwimmingToast.show(context, 'Released');
                            Navigator.of(context).maybePop();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
