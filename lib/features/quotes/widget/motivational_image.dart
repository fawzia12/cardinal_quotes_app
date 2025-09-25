import 'package:cardinal_quotes_app/utilis/assets_path.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class MotivationalImage extends StatelessWidget {
  final String imagePath; // ✅ dynamic path
  const MotivationalImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
      child: Image.asset(imagePath, scale: 1),
    );
  }
}
