import 'package:cardinal_quotes_app/utilis/assets_path.dart';
import 'package:flutter/material.dart';

class WalpaperFeatures extends StatelessWidget {
  const WalpaperFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 130,
              width: 120,

              decoration: BoxDecoration(
                // color: AppColor.grayText, // background grey
                borderRadius: BorderRadius.circular(7),
                color: Colors.grey[300],
              ),
              child: Image.asset(AssetsPath.sleep, fit: BoxFit.cover),
            ),
          );
        },
      ),
    );
  }
}
