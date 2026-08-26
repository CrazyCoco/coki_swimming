part of '../main.dart';

class CokiSwimmingTopBar extends StatelessWidget {
  const CokiSwimmingTopBar({
    super.key,
    required this.title,
    this.trailing,
    this.onReturn,
    this.dark = false,
    this.horizontalPadding = 15,
    this.showReturnButton = true,
    this.centerTitle = false,
  });

  final String title;
  final Widget? trailing;
  final VoidCallback? onReturn;
  final bool dark;
  final double horizontalPadding;
  final bool showReturnButton;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    final titleWidget = Text(
      title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textAlign: centerTitle ? TextAlign.center : TextAlign.start,
      style: TextStyle(
        color: dark ? const Color(0xFF100A30) : Colors.white,
        fontSize: 20,
        height: 1.2,
        letterSpacing: 0,
        fontWeight: FontWeight.w900,
      ),
    );

    return Padding(
      padding: EdgeInsets.fromLTRB(horizontalPadding, 8, horizontalPadding, 0),
      child: centerTitle
          ? Stack(
              alignment: Alignment.center,
              children: [
                if (title.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 52),
                    child: titleWidget,
                  ),
                Row(
                  children: [
                    if (showReturnButton)
                      CokiSwimmingBackButton(
                        onTap:
                            onReturn ?? () => Navigator.of(context).maybePop(),
                      ),
                    const Spacer(),
                    ?trailing,
                  ],
                ),
              ],
            )
          : Row(
              children: [
                if (showReturnButton)
                  CokiSwimmingBackButton(
                    onTap: onReturn ?? () => Navigator.of(context).maybePop(),
                  ),
                if (title.isNotEmpty) ...[
                  if (showReturnButton) const SizedBox(width: 12),
                  Expanded(child: titleWidget),
                ] else
                  const Spacer(),
                ?trailing,
              ],
            ),
    );
  }
}
