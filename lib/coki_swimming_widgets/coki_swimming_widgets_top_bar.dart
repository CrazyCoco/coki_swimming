part of '../main.dart';

class CokiSwimmingTopBar extends StatelessWidget {
  const CokiSwimmingTopBar({
    super.key,
    required this.title,
    this.trailing,
    this.onReturn,
    this.dark = false,
    this.horizontalPadding = 15,
  });

  final String title;
  final Widget? trailing;
  final VoidCallback? onReturn;
  final bool dark;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(horizontalPadding, 8, horizontalPadding, 0),
      child: Row(
        children: [
          CokiSwimmingBackButton(
            onTap: onReturn ?? () => Navigator.of(context).maybePop(),
          ),
          if (title.isNotEmpty) ...[
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: dark ? const Color(0xFF100A30) : Colors.white,
                  fontSize: 20,
                  height: 1.2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ] else
            const Spacer(),
          ?trailing,
        ],
      ),
    );
  }
}
