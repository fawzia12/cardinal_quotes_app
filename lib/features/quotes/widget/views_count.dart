import 'package:flutter/material.dart';

class ViewsCount extends StatelessWidget {
  const ViewsCount({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(width: 6),
          Text(text, style: TextStyle(fontSize: 17, color: Colors.white)),
        ],
      ),
    );
  }
}
