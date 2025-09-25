import 'package:cardinal_quotes_app/features/common/main_bottom_navbar_screen.dart';
import 'package:cardinal_quotes_app/features/home/screen/home_screen.dart';
import 'package:cardinal_quotes_app/features/home/screen/sign_up_screen.dart';
import 'package:cardinal_quotes_app/features/quotes/screen/quotes_screen.dart';
import 'package:cardinal_quotes_app/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class cardinal_quotes_app extends StatelessWidget {
  const cardinal_quotes_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SignUpScreen(),

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red,
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.outline, // Normal (enabled) border color
              width: 2,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 30),
          fillColor: AppColors.lightBackground,
          filled: true,

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.outline, // Focused (active) border color
              width: 2,
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        late Widget widget;
        if (settings.name == HomeScreen.home) {
          widget = HomeScreen();
        } else if (settings.name == Mainbottomnavbar.home) {
          widget = Mainbottomnavbar();
        } else if (settings.name == QuotesScreen.home) {
          widget = QuotesScreen();
        } else {
          widget = const HomeScreen();
        }
        return MaterialPageRoute(builder: (context) => widget);
      },
    );
  }
}
