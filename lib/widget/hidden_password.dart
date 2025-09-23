import 'package:flutter/material.dart';

class HiddenPassword extends StatefulWidget {
  const HiddenPassword({super.key});

  @override
  State<HiddenPassword> createState() => _HiddenPasswordState();
}

class _HiddenPasswordState extends State<HiddenPassword> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
      onPressed: () {
        setState(() {
          obscureText = !obscureText;
        });
      },
    );
  }
}
