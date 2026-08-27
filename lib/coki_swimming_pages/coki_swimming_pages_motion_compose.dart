part of '../main.dart';

class CokiSwimmingMotionComposeScreen extends StatefulWidget {
  const CokiSwimmingMotionComposeScreen({super.key});

  @override
  State<CokiSwimmingMotionComposeScreen> createState() =>
      _CokiSwimmingMotionComposeScreenState();
}

class _CokiSwimmingMotionComposeScreenState
    extends State<CokiSwimmingMotionComposeScreen> {
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void dispose() {
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: [
              const CokiSwimmingTopBar(title: '', horizontalPadding: 18),
              Expanded(
                child: ListView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
                  children: [
                    SizedBox(
                      height: 174,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: TextField(
                              controller: _descriptionController,
                              expands: true,
                              minLines: null,
                              maxLines: null,
                              maxLength: 150,
                              textAlignVertical: TextAlignVertical.top,
                              onChanged: (_) => setState(() {}),
                              style: const TextStyle(
                                color: Color(0xFF100A30),
                                fontSize: 16,
                                height: 1.4,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Please enter',
                                hintStyle: TextStyle(
                                  color: const Color(
                                    0xFF100A30,
                                  ).withValues(alpha: 0.42),
                                  fontSize: 16,
                                  height: 1.4,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w400,
                                ),
                                counterText: '',
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: const EdgeInsets.fromLTRB(
                                  12,
                                  13,
                                  12,
                                  36,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 13,
                            bottom: 12,
                            child: IgnorePointer(
                              child: Text(
                                '${_descriptionController.text.characters.length}/150',
                                style: TextStyle(
                                  color: const Color(
                                    0xFF100A30,
                                  ).withValues(alpha: 0.42),
                                  fontSize: 16,
                                  height: 1.2,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 27),
                    const Text(
                      'Upload  (video)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        height: 1.2,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CokiSwimmingTap(
                        borderRadius: BorderRadius.circular(19),
                        onTap: () =>
                            CokiSwimmingToast.show(context, 'Select a source'),
                        child: Container(
                          width: 108,
                          height: 108,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(19),
                          ),
                          child: Image.asset(
                            'coki_swimming_assets/coki_swimming_video_glyph.png',
                            width: 32,
                            height: 32,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 45),
                child: SizedBox(
                  width: 230,
                  child: CokiSwimmingGradientButton(
                    label: 'Release',
                    height: 62,
                    fontSize: 22,
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
      ),
    );
  }
}
