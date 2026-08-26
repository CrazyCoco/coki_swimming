part of '../main.dart';

class CokiSwimmingInputDock extends StatelessWidget {
  const CokiSwimmingInputDock({super.key, this.controller, this.onSubmit});

  final TextEditingController? controller;
  final VoidCallback? onSubmit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 8, 15, 10),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              style: const TextStyle(
                color: Color(0xFF100A30),
                fontSize: 14,
                height: 1.2,
                letterSpacing: 0,
              ),
              decoration: InputDecoration(
                hintText: 'Say something',
                hintStyle: TextStyle(
                  color: const Color(0xFF100A30).withValues(alpha: 0.42),
                  fontSize: 12,
                  height: 1.2,
                  letterSpacing: 0,
                ),
                filled: true,
                fillColor: const Color(0xFFF4F5F7),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 11,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          CokiSwimmingTap(
            borderRadius: BorderRadius.circular(20),
            onTap: onSubmit ?? () => CokiSwimmingNotesSheet.show(context),
            child: Image.asset(
              'coki_swimming_assets/coki_swimming_check_disc.png',
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}
