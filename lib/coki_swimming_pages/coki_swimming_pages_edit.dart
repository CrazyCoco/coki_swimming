part of '../main.dart';

class CokiSwimmingEditScreen extends StatelessWidget {
  const CokiSwimmingEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CokiSwimmingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: [
              const CokiSwimmingTopBar(title: 'Edit'),
              Expanded(
                child: ListView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
                  children: [
                    Center(
                      child: Stack(
                        children: [
                          const CokiSwimmingAvatar(
                            image:
                                'coki_swimming_assets/coki_swimming_avatar_coki.png',
                            size: 78,
                          ),
                          Positioned(
                            right: 0,
                            bottom: 2,
                            child: Image.asset(
                              'coki_swimming_assets/coki_swimming_camera_round.png',
                              width: 25,
                              height: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    const CokiSwimmingNamedField(label: 'Name', maxLines: 1),
                    const SizedBox(height: 20),
                    const CokiSwimmingNamedField(
                      label: 'About me',
                      maxLines: 4,
                    ),
                    const SizedBox(height: 96),
                    Center(
                      child: SizedBox(
                        width: 190,
                        child: CokiSwimmingGradientButton(
                          label: 'Save',
                          onTap: () =>
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                CokiSwimmingRoutesPaths.hub,
                                (route) => false,
                              ),
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
