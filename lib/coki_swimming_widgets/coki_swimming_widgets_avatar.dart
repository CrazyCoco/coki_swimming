part of '../main.dart';

class CokiSwimmingAvatar extends StatelessWidget {
  const CokiSwimmingAvatar({
    super.key,
    required this.image,
    required this.size,
    this.onTap,
  });

  final String image;
  final double size;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final face = ClipOval(
      child: CokiSwimmingAvatarImage(path: image, width: size, height: size),
    );
    if (onTap == null) return face;
    return CokiSwimmingTap(
      borderRadius: BorderRadius.circular(size / 2),
      onTap: onTap!,
      child: face,
    );
  }
}
