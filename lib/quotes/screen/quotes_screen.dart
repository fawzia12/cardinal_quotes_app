import 'package:cardinal_quotes_app/utilis/assets_path.dart';
import 'package:flutter/material.dart';

class QuotesScreen extends StatelessWidget {
  const QuotesScreen({super.key});
  static String home = '/home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
            child: Image.asset(AssetsPath.positive, scale: 1),
          ),
          Column(children: [
           
            ],
          ),
        ],
      ),
    );
  }
}
