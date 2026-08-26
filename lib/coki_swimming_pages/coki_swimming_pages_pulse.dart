part of '../main.dart';

class CokiSwimmingPulsePane extends StatelessWidget {
  const CokiSwimmingPulsePane({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        padding: const EdgeInsets.fromLTRB(16, 13, 16, 20),
        children: const [
          Row(
            children: [
              CokiSwimmingChip(text: 'For you'),
              SizedBox(width: 12),
              Text(
                'Trending',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          SizedBox(height: 18),
          CokiSwimmingEntryCard(),
          SizedBox(height: 16),
          CokiSwimmingEntryCard(second: true),
        ],
      ),
    );
  }
}
