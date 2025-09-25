import 'package:flutter/material.dart';

class HasTag extends StatelessWidget {
  const HasTag({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              '#motivation',
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
