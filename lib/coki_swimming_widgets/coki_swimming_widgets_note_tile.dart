part of '../main.dart';

class CokiSwimmingNoteTile extends StatelessWidget {
  const CokiSwimmingNoteTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        color: const Color(0xFF2B254D),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Row(
        children: [
          const CokiSwimmingAvatar(
            image: 'coki_swimming_assets/coki_swimming_avatar_apien.png',
            size: 30,
          ),
          const SizedBox(width: 8),
          const Expanded(
            child: Text(
              'Stella\nI love it!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                height: 1.35,
                letterSpacing: 0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Icon(Icons.more_horiz, color: Colors.white),
        ],
      ),
    );
  }
}
