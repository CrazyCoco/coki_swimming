part of '../main.dart';

class CokiSwimmingHubScreen extends StatefulWidget {
  const CokiSwimmingHubScreen({
    super.key,
    required this.isVisitor,
    required this.onExit,
    this.member,
  });

  final bool isVisitor;
  final VoidCallback onExit;
  final CokiSwimmingMember? member;

  @override
  State<CokiSwimmingHubScreen> createState() => _CokiSwimmingHubScreenState();
}

class _CokiSwimmingHubScreenState extends State<CokiSwimmingHubScreen> {
  int _index = 0;

  void _select(int index) {
    if (index >= 2) {
      CokiSwimmingAccessGate.run(
        context,
        isVisitor: widget.isVisitor,
        action: () => setState(() => _index = index),
      );
      return;
    }
    setState(() => _index = index);
  }

  @override
  Widget build(BuildContext context) {
    final panes = [
      CokiSwimmingLandingPane(isVisitor: widget.isVisitor),
      CokiSwimmingHomePane(isVisitor: widget.isVisitor),
      const CokiSwimmingInboxPane(),
      CokiSwimmingPersonaPane(member: widget.member),
    ];
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: panes[_index],
        bottomNavigationBar: ColoredBox(
          color: Colors.white,
          child: SafeArea(
            top: false,
            minimum: EdgeInsets.zero,
            child: SizedBox(
              height: 44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CokiSwimmingTab(
                    image: _index == 0
                        ? 'coki_swimming_assets/coki_swimming_tab_inbox_idle.png'
                        : 'coki_swimming_assets/coki_swimming_tab_inbox_on.png',
                    active: _index == 0,
                    onTap: () => _select(0),
                  ),
                  CokiSwimmingTab(
                    image: _index == 1
                        ? 'coki_swimming_assets/coki_swimming_tab_wave_idle.png'
                        : 'coki_swimming_assets/coki_swimming_tab_wave_on.png',
                    active: _index == 1,
                    onTap: () => _select(1),
                  ),
                  CokiSwimmingTab(
                    image: _index == 2
                        ? 'coki_swimming_assets/coki_swimming_tab_bubble_idle.png'
                        : 'coki_swimming_assets/coki_swimming_tab_bubble_on.png',
                    active: _index == 2,
                    onTap: () => _select(2),
                  ),
                  CokiSwimmingTab(
                    image: _index == 3
                        ? 'coki_swimming_assets/coki_swimming_tab_persona_idle.png'
                        : 'coki_swimming_assets/coki_swimming_tab_persona_on.png',
                    active: _index == 3,
                    onTap: () => _select(3),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
