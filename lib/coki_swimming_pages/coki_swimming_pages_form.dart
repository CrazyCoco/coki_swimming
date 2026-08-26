part of '../main.dart';

class CokiSwimmingFormScreen extends StatelessWidget {
  const CokiSwimmingFormScreen({
    super.key,
    required this.fields,
    required this.buttonLabel,
    required this.onSubmit,
    this.lower,
  });

  final List<(String, String)> fields;
  final String buttonLabel;
  final VoidCallback onSubmit;
  final Widget? lower;

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
                  padding: const EdgeInsets.fromLTRB(20, 92, 20, 24),
                  children: [
                    for (final field in fields) ...[
                      Text(
                        field.$1,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          height: 25.2 / 18,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 9),
                      TextField(
                        obscureText: field.$1.contains('Password'),
                        style: const TextStyle(
                          color: Color(0xFF100A30),
                          fontSize: 16,
                          height: 22.4 / 16,
                          letterSpacing: 0,
                        ),
                        decoration: InputDecoration(
                          hintText: field.$2,
                          hintStyle: TextStyle(
                            color: const Color(
                              0xFF100A30,
                            ).withValues(alpha: 0.42),
                            fontSize: 10,
                            height: 1.2,
                            letterSpacing: 0,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 15,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26),
                            borderSide: const BorderSide(
                              color: Color(0xFFD43161),
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26),
                            borderSide: const BorderSide(
                              color: Color(0xFF60D0EE),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 17),
                    ],
                    ?lower,
                    const SizedBox(height: 72),
                    Center(
                      child: SizedBox(
                        width: 190,
                        child: CokiSwimmingGradientButton(
                          label: buttonLabel,
                          onTap: onSubmit,
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
