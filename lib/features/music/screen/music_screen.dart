import 'package:cardinal_quotes_app/features/common/main_bottom_navbar_screen.dart';
import 'package:cardinal_quotes_app/features/quotes/widget/has_tag.dart';
import 'package:cardinal_quotes_app/features/quotes/widget/motivational_image.dart';
import 'package:cardinal_quotes_app/features/quotes/widget/share.dart';
import 'package:cardinal_quotes_app/features/quotes/widget/views_count.dart';
import 'package:cardinal_quotes_app/utilis/assets_path.dart';
import 'package:flutter/material.dart';

class Musicscreen extends StatelessWidget {
  const Musicscreen({super.key});
  static String home = '/home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Quotes"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(
              context,
              Mainbottomnavbar.home,
            ); // 🔙 back এ চলে যাবে
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Stack(
                alignment: Alignment.center, // child image center করবে
                children: [
                  // Background image
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    height: 300,
                    width: 380,
                    child: Image.asset(AssetsPath.madi, fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Image.asset(AssetsPath.vibe),
                  ),

                  // Centered image
                  Stack(
                    children: [
                      Image.asset(AssetsPath.transparent, scale: 1.50),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
