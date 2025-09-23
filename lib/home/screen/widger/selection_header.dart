import 'package:flutter/material.dart';

class SelectionHeader extends StatelessWidget {
  const SelectionHeader({super.key, required this.text, required this.ontap});
  final String text;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        TextButton(
          onPressed: ontap,
          child: Text(
            'see all',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
