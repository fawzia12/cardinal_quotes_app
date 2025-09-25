import 'package:cardinal_quotes_app/features/common/main_bottom_navbar_screen.dart';

import 'package:cardinal_quotes_app/utilis/app_colors.dart';
import 'package:cardinal_quotes_app/utilis/assets_path.dart';
import 'package:cardinal_quotes_app/widget/toggle_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isLoginSelected = true;
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      body: SingleChildScrollView(
        // Added here
        child: Column(
          children: [
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Image.asset(AssetsPath.logo, scale: 2)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ToggleButton(
                  text: ('Sign Up'),
                  isActive: isLoginSelected,
                  onTap: () {
                    isLoginSelected = true;
                    setState(() {});
                  },
                ),
                ToggleButton(
                  text: ('Log In'),
                  isActive: !isLoginSelected,
                  onTap: () {
                    isLoginSelected = false;
                    setState(() {});
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  isLoginSelected ? _SignUpForm() : _SignIn(),
                  const SizedBox(height: 9),
                ],
              ),
            ),

            Image.asset(AssetsPath.background, scale: 1),
          ],
        ),
      ),
    );
  }

  Widget _SignUpForm() {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(labelText: 'Enter Your user name'),
        ),
        const SizedBox(height: 10),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            labelText: 'Create a password',
            suffixIcon: IconButton(
              icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
            ),
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            labelText: 'Confirm password',
            suffixIcon: IconButton(
              icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
            ),
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: const InputDecoration(
            labelText: 'Enter Your email address',
          ),
        ),
        const SizedBox(height: 5),
        ElevatedButton(onPressed: () {}, child: const Text("Next")),
      ],
    );
  }

  Widget _SignIn() {
    return Column(
      children: [
        SizedBox(height: 20),
        TextField(
          decoration: const InputDecoration(
            labelText: 'Enter Your email address',
          ),
        ),
        const SizedBox(height: 15),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            labelText: 'Enter password',
            suffixIcon: IconButton(
              icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
            ),
          ),
        ),
        const SizedBox(height: 10),

        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, Mainbottomnavbar.home);
          },
          child: const Text("Next"),
        ),
        SizedBox(height: 100),
        Image.asset(AssetsPath.background, scale: 1),
      ],
    );
  }
}
