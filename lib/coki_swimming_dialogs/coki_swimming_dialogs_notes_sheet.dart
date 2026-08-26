part of '../main.dart';

class CokiSwimmingNotesSheet {
  const CokiSwimmingNotesSheet._();

  static void show(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.sizeOf(context).height * 0.45,
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
        decoration: const BoxDecoration(
          color: Color(0xFF100A30),
          borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
        ),
        child: const SafeArea(
          top: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Comments +',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      CokiSwimmingNoteTile(),
                      CokiSwimmingNoteTile(),
                      CokiSwimmingNoteTile(),
                    ],
                  ),
                ),
              ),
              CokiSwimmingInputDock(),
            ],
          ),
        ),
      ),
    );
  }
}
