import 'package:cardinal_quotes_app/utilis/assets_path.dart';
import 'package:flutter/material.dart';

class DrawerHead extends StatelessWidget {
  const DrawerHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 80),
        const Text(
          '"Peace comes from within\nDo not seek it without\nBudha."',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),

        Row(
          children: [
            Image.asset(
              AssetsPath.bird1,
              width: 150,
              height: 120,
              fit: BoxFit.cover,
            ),
            Image.asset(
              AssetsPath.bird2,
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ],
    );
  }
}
