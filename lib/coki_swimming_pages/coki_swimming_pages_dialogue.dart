part of '../main.dart';

class CokiSwimmingDialogueScreen extends StatefulWidget {
  const CokiSwimmingDialogueScreen({super.key});

  @override
  State<CokiSwimmingDialogueScreen> createState() =>
      _CokiSwimmingDialogueScreenState();
}

class _CokiSwimmingDialogueScreenState
    extends State<CokiSwimmingDialogueScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _lines = [
    'Hi, I am interested in your stuff.',
    'OK, if you have anything you want to know, you can ask me.',
    'That sounds awesome.',
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _appendLine() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;
    setState(() {
      _lines.add(text);
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEEF2),
      body: SafeArea(
        child: Column(
          children: [
            CokiSwimmingTopBar(
              title: 'Apien',
              dark: true,
              trailing: CokiSwimmingCircle(
                color: Colors.transparent,
                onTap: () => Navigator.of(
                  context,
                ).pushNamed(CokiSwimmingRoutesPaths.call),
                child: const Icon(
                  Icons.videocam_outlined,
                  color: Color(0xFF100A30),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                itemCount: _lines.length,
                itemBuilder: (context, index) {
                  final mine = index.isOdd;
                  return Align(
                    alignment: mine
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 14),
                      constraints: const BoxConstraints(maxWidth: 230),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 13,
                        vertical: 9,
                      ),
                      decoration: BoxDecoration(
                        color: mine
                            ? const Color(0xFFD43161)
                            : const Color(0xFF60D0EE),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        _lines[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          height: 1.35,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            CokiSwimmingInputDock(
              controller: _controller,
              onSubmit: _appendLine,
            ),
          ],
        ),
      ),
    );
  }
}
