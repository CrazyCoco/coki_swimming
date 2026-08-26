import 'dart:io';

import 'package:flutter/material.dart';

class CokiSwimmingAvatarImage extends StatelessWidget {
  const CokiSwimmingAvatarImage({
    super.key,
    required this.path,
    required this.size,
  });

  final String path;
  final double size;

  @override
  Widget build(BuildContext context) {
    final placeholder = Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [Color(0xFF60D0EE), Color(0xFFD43161)],
        ),
      ),
      child: Icon(Icons.person_rounded, color: Colors.white, size: size * 0.62),
    );
    if (!File(path).isAbsolute) {
      if (path.endsWith('coki_swimming_avatar_placeholder.png')) {
        return placeholder;
      }
      return Image.asset(
        path,
        width: size,
        height: size,
        fit: BoxFit.cover,
        errorBuilder: (_, _, _) => placeholder,
      );
    }
    return Image.file(
      File(path),
      width: size,
      height: size,
      fit: BoxFit.cover,
      errorBuilder: (_, _, _) => placeholder,
    );
  }
}
