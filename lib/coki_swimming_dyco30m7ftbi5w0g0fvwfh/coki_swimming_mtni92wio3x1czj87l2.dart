part of '../main.dart';

class CokiSwimmingY0xjkmeiuq6voxj extends StatefulWidget {
  const CokiSwimmingY0xjkmeiuq6voxj({
    super.key,
    required this.jx274n7jr0p2wegi,
    required this.y2n8ygz4vgxfeobjo9c,
    required this.kcen2xc7mh38,
    this.gcp6y024togfbxt6h8jx,
  });

  final List<(String, String)> jx274n7jr0p2wegi;
  final String y2n8ygz4vgxfeobjo9c;
  final Future<void> Function(List<String> lv3h5diwlpxxt) kcen2xc7mh38;
  final Widget? gcp6y024togfbxt6h8jx;

  @override
  State<CokiSwimmingY0xjkmeiuq6voxj> createState() =>
      _CokiSwimmingVnevkfs71xcthudgcbe();
}

class _CokiSwimmingVnevkfs71xcthudgcbe
    extends State<CokiSwimmingY0xjkmeiuq6voxj> {
  late final List<TextEditingController> _z0mlr5dsgn6u3ek1ljh6mi =
      List.generate(
        widget.jx274n7jr0p2wegi.length,
        (_) => TextEditingController(),
      );
  bool _t9jkcz195rald69rhq = false;

  @override
  void dispose() {
    for (final o5ymv5wb38spe12ee7aat in _z0mlr5dsgn6u3ek1ljh6mi) {
      o5ymv5wb38spe12ee7aat.dispose();
    }
    super.dispose();
  }

  Future<void> _t4w48u83qtskd() async {
    if (_t9jkcz195rald69rhq) return;
    FocusManager.instance.primaryFocus?.unfocus();
    setState(() => _t9jkcz195rald69rhq = true);
    try {
      await widget.kcen2xc7mh38(
        _z0mlr5dsgn6u3ek1ljh6mi
            .map((ifu1tpe7g7vfjdqlge) => ifu1tpe7g7vfjdqlge.text)
            .toList(),
      );
    } on CokiSwimmingVgf5z8lwah8pc429uyoylrwv catch (error) {
      if (mounted) {
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          error.c4iyezrax5jry9k38j7kkbr,
        );
      }
    } catch (_) {
      if (mounted) {
        CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
          context,
          'Please try again',
        );
      }
    } finally {
      if (mounted) setState(() => _t9jkcz195rald69rhq = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingAgdqi717f62hphbv7l95r8v(
      o1wq5mwul0ckiwligeu: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: [
              const CokiSwimmingMerb0wr4ijwluplbh(s0dnsxzte0kvc8: ''),
              Expanded(
                child: ListView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  padding: const EdgeInsets.fromLTRB(20, 92, 20, 24),
                  children: [
                    for (
                      var q8el8ctpk4a52 = 0;
                      q8el8ctpk4a52 < widget.jx274n7jr0p2wegi.length;
                      q8el8ctpk4a52++
                    ) ...[
                      Text(
                        widget.jx274n7jr0p2wegi[q8el8ctpk4a52].$1,
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
                        controller: _z0mlr5dsgn6u3ek1ljh6mi[q8el8ctpk4a52],
                        enabled: !_t9jkcz195rald69rhq,
                        obscureText: widget.jx274n7jr0p2wegi[q8el8ctpk4a52].$1
                            .contains('Password'),
                        keyboardType: q8el8ctpk4a52 == 0
                            ? TextInputType.emailAddress
                            : TextInputType.text,
                        textInputAction:
                            q8el8ctpk4a52 == widget.jx274n7jr0p2wegi.length - 1
                            ? TextInputAction.done
                            : TextInputAction.next,
                        autofillHints: q8el8ctpk4a52 == 0
                            ? const [AutofillHints.email]
                            : const [AutofillHints.password],
                        onSubmitted:
                            q8el8ctpk4a52 == widget.jx274n7jr0p2wegi.length - 1
                            ? (_) => _t4w48u83qtskd()
                            : null,
                        style: const TextStyle(
                          color: Color(0xFF100A30),
                          fontSize: 16,
                          height: 22.4 / 16,
                          letterSpacing: 0,
                        ),
                        decoration: InputDecoration(
                          hintText: widget.jx274n7jr0p2wegi[q8el8ctpk4a52].$2,
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
                    ?widget.gcp6y024togfbxt6h8jx,
                    const SizedBox(height: 72),
                    Center(
                      child: SizedBox(
                        width: 190,
                        child: CokiSwimmingXjx1kxye89zenp9u(
                          vnjrt3g80paath: _t9jkcz195rald69rhq
                              ? 'Loading...'
                              : widget.y2n8ygz4vgxfeobjo9c,
                          ouj1nn8u7hkigj89bhzhbjn: _t9jkcz195rald69rhq
                              ? () {}
                              : _t4w48u83qtskd,
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
