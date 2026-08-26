part of '../main.dart';

class CokiSwimmingFormScreen extends StatefulWidget {
  const CokiSwimmingFormScreen({
    super.key,
    required this.fields,
    required this.buttonLabel,
    required this.onSubmit,
    this.lower,
  });

  final List<(String, String)> fields;
  final String buttonLabel;
  final Future<void> Function(List<String> values) onSubmit;
  final Widget? lower;

  @override
  State<CokiSwimmingFormScreen> createState() => _CokiSwimmingFormScreenState();
}

class _CokiSwimmingFormScreenState extends State<CokiSwimmingFormScreen> {
  late final List<TextEditingController> _controllers = List.generate(
    widget.fields.length,
    (_) => TextEditingController(),
  );
  bool _isSubmitting = false;

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  Future<void> _submit() async {
    if (_isSubmitting) return;
    FocusManager.instance.primaryFocus?.unfocus();
    setState(() => _isSubmitting = true);
    try {
      await widget.onSubmit(
        _controllers.map((controller) => controller.text).toList(),
      );
    } on CokiSwimmingStorageException catch (error) {
      if (mounted) CokiSwimmingToast.show(context, error.message);
    } catch (_) {
      if (mounted) CokiSwimmingToast.show(context, 'Please try again');
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
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
              const CokiSwimmingTopBar(title: ''),
              Expanded(
                child: ListView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  padding: const EdgeInsets.fromLTRB(20, 92, 20, 24),
                  children: [
                    for (
                      var index = 0;
                      index < widget.fields.length;
                      index++
                    ) ...[
                      Text(
                        widget.fields[index].$1,
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
                        controller: _controllers[index],
                        enabled: !_isSubmitting,
                        obscureText: widget.fields[index].$1.contains(
                          'Password',
                        ),
                        keyboardType: index == 0
                            ? TextInputType.emailAddress
                            : TextInputType.text,
                        textInputAction: index == widget.fields.length - 1
                            ? TextInputAction.done
                            : TextInputAction.next,
                        autofillHints: index == 0
                            ? const [AutofillHints.email]
                            : const [AutofillHints.password],
                        onSubmitted: index == widget.fields.length - 1
                            ? (_) => _submit()
                            : null,
                        style: const TextStyle(
                          color: Color(0xFF100A30),
                          fontSize: 16,
                          height: 22.4 / 16,
                          letterSpacing: 0,
                        ),
                        decoration: InputDecoration(
                          hintText: widget.fields[index].$2,
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
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26),
                            borderSide: BorderSide(
                              color: const Color(
                                0xFFD43161,
                              ).withValues(alpha: 0.5),
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
                    ?widget.lower,
                    const SizedBox(height: 72),
                    Center(
                      child: SizedBox(
                        width: 190,
                        child: CokiSwimmingGradientButton(
                          label: _isSubmitting
                              ? 'Loading...'
                              : widget.buttonLabel,
                          onTap: _isSubmitting ? () {} : _submit,
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
