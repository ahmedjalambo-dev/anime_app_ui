import 'dart:ui';

import 'package:flutter/material.dart';

class PinkCircle extends StatelessWidget {
  const PinkCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 30, sigmaY: 15),
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: Color(0xFFC03D66).withAlpha(150),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
