part of '../main.dart';

class CokiSwimmingTextScreen extends StatelessWidget {
  const CokiSwimmingTextScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              CokiSwimmingTopBar(title: title),
              const Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
                  child: Text(
                    'Coki Swimming keeps the experience respectful, clear, and safe. Content that harms others, abuses personal data, or violates platform rules is not allowed. By continuing, you agree to use the app responsibly and respect other swimmers.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      height: 1.5,
                      letterSpacing: 0,
                    ),
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
