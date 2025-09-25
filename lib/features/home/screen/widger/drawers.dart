import 'package:cardinal_quotes_app/utilis/assets_path.dart';
import 'package:flutter/material.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 238, 226, 186),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                '"Peace comes from within\nDo not seek it without\nBudha."',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Image.asset(
                    AssetsPath.bird1,
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    AssetsPath.bird2,
                    height: 140,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.mediation),
            ),
            ListTile(
              title: const Text('Music'),
              leading: const Icon(Icons.music_note_outlined),
            ),
            ListTile(
              title: const Text('Explore'),
              leading: const Icon(Icons.explore),
            ),
            ListTile(
              title: const Text('Popular'),
              leading: const Icon(Icons.star),
            ),
            ListTile(
              title: const Text('Latest'),
              leading: const Icon(Icons.new_releases),
            ),
            ListTile(
              title: const Text('Wallpaper'),
              leading: const Icon(Icons.wallpaper),
            ),
          ],
        ),
      ),
    );
  }
}
