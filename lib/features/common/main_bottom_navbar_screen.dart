import 'package:cardinal_quotes_app/features/music/screen/music_screen.dart';
import 'package:cardinal_quotes_app/features/notes/screen/notes_screen.dart';
import 'package:cardinal_quotes_app/features/quotes/screen/quotes_screen.dart';
import 'package:flutter/material.dart';
import 'package:cardinal_quotes_app/features/home/screen/home_screen.dart';
import 'package:cardinal_quotes_app/utilis/app_colors.dart';
import 'package:cardinal_quotes_app/utilis/assets_path.dart';

class Mainbottomnavbar extends StatefulWidget {
  const Mainbottomnavbar({super.key});
  static String home = '/mainbottomnavbar';

  @override
  State<Mainbottomnavbar> createState() => _MainbottomnavbarState();
}

class _MainbottomnavbarState extends State<Mainbottomnavbar> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    Musicscreen(),
    QuotesScreen(),
    NotesScreen(),
    HomeScreen(),
  ];

  final List<String> _icons = [
    AssetsPath.home,
    AssetsPath.music,
    AssetsPath.person,
    AssetsPath.quotes,
    AssetsPath.more,
  ];

  final List<String> _labels = ['Home', 'Sounds', 'Soul', 'Top', 'More'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        height: 84,

        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 238, 226, 186),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            _icons.length,
            (index) => Expanded(
              child: _buildNavItem(_icons[index], _labels[index], index),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(String assetPath, String label, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            assetPath,
            width: 50,
            height: 28,
            color: _currentIndex == index
                ? AppColors.primary
                : const Color.fromARGB(255, 19, 19, 19),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: _currentIndex == index
                  ? AppColors.primary
                  : const Color.fromARGB(255, 127, 88, 80),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
