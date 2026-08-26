part of '../main.dart';

class CokiSwimmingComposeScreen extends StatefulWidget {
  const CokiSwimmingComposeScreen({super.key});

  @override
  State<CokiSwimmingComposeScreen> createState() =>
      _CokiSwimmingComposeScreenState();
}

class _CokiSwimmingComposeScreenState extends State<CokiSwimmingComposeScreen> {
  int _selected = 0;

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
                    const SizedBox(height: 18),
                    const Text(
                      'Theme',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        height: 1.3,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 8,
                      children: [
                        for (var i = 0; i < 3; i++)
                          ChoiceChip(
                            selected: _selected == i,
                            label: Text(
                              ['Training', 'Lifestyle', 'Community'][i],
                            ),
                            onSelected: (_) => setState(() => _selected = i),
                            labelStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              height: 1.2,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w700,
                            ),
                            selectedColor: const Color(0xFFD43161),
                            backgroundColor: const Color(0xFF2B254D),
                            side: BorderSide.none,
                          ),
                      ],
                    ),
                    const SizedBox(height: 22),
                    const Text(
                      'Upload (Pic)',
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
                            'coki_swimming_assets/coki_swimming_image_glyph.png',
                            width: 32,
                            height: 32,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 96),
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
