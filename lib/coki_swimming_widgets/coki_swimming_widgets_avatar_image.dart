import 'dart:io';

import 'package:flutter/material.dart';

class CokiSwimmingAvatarImage extends StatelessWidget {
  const CokiSwimmingAvatarImage({
    super.key,
    required this.path,
    required this.width,
    required this.height,
    this.circularPlaceholder = true,
  });

  final String path;
  final double width;
  final double height;
  final bool circularPlaceholder;

  @override
  Widget build(BuildContext context) {
    final placeholder = Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: circularPlaceholder ? BoxShape.circle : BoxShape.rectangle,
        border: circularPlaceholder
            ? const Border.fromBorderSide(BorderSide(color: Colors.white))
            : null,
        gradient: const LinearGradient(
          colors: [Color(0xFF60D0EE), Color(0xFFAD99C2), Color(0xFFD43161)],
          stops: [0, 0.4704, 1],
        ),
      ),
      child: Icon(
        Icons.person_rounded,
        color: Colors.white,
        size: (width < height ? width : height) * 0.62,
      ),
    );
    if (!File(path).isAbsolute) {
      if (path.endsWith('coki_swimming_avatar_placeholder.png')) {
        return placeholder;
      }
      return Image.asset(
        path,
        width: width,
        height: height,
        fit: BoxFit.cover,
        errorBuilder: (_, _, _) => placeholder,
      );
    }
    return Image.file(
      File(path),
      width: width,
      height: height,
      fit: BoxFit.cover,
      errorBuilder: (_, _, _) => placeholder,
    );
  }
}
