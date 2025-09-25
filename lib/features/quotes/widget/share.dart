import 'package:cardinal_quotes_app/features/quotes/widget/views_count.dart';
import 'package:flutter/material.dart';

class Share extends StatelessWidget {
  const Share({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            children: [
              ViewsCount(icon: Icons.remove_red_eye, text: '45K'),
              ViewsCount(icon: Icons.share, text: 'share '),
            ],
          );
        },
      ),
    );
  }
}
