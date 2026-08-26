part of '../main.dart';

class CokiSwimmingCallScreen extends StatelessWidget {
  const CokiSwimmingCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingMediaScreen(
      image: 'coki_swimming_assets/coki_swimming_aqua_portrait.png',
      bottomCard: true,
      trailing: Image.asset(
        'coki_swimming_assets/coki_swimming_call_end.png',
        width: 56,
        height: 56,
      ),
    );
  }
}
