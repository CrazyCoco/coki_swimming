part of '../main.dart';

class CokiSwimmingConcernScreen extends StatefulWidget {
  const CokiSwimmingConcernScreen({super.key});

  @override
  State<CokiSwimmingConcernScreen> createState() =>
      _CokiSwimmingConcernScreenState();
}

class _CokiSwimmingConcernScreenState extends State<CokiSwimmingConcernScreen> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    const reasons = [
      'Harassment',
      'Malicious fraud',
      'Pornography',
      'Malicious insults',
      'False information',
    ];
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
                  padding: const EdgeInsets.fromLTRB(16, 18, 16, 24),
                  children: [
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        for (var index = 0; index < reasons.length; index++)
                          SizedBox(
                            width: (MediaQuery.sizeOf(context).width - 44) / 2,
                            child: CokiSwimmingTap(
                              borderRadius: BorderRadius.circular(8),
                              onTap: () => setState(() => _selected = index),
                              child: Container(
                                height: 70,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: _selected == index
                                      ? Border.all(
                                          color: const Color(0xFFD43161),
                                          width: 2,
                                        )
                                      : null,
                                ),
                                child: Text(
                                  reasons[index],
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Color(0xFF100A30),
                                    fontSize: 13,
                                    height: 1.3,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 28),
                    const Text(
                      'Supplementary description',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        height: 1.2,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const CokiSwimmingTextBox(),
                    const SizedBox(height: 72),
                    Center(
                      child: SizedBox(
                        width: 190,
                        child: CokiSwimmingGradientButton(
                          label: 'Submit',
                          onTap: () {
                            CokiSwimmingToast.show(context, 'Submitted');
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
