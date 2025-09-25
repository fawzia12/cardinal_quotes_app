import 'package:cardinal_quotes_app/features/categtory/category_screen.dart';
import 'package:cardinal_quotes_app/features/home/screen/widger/drawers.dart';
import 'package:cardinal_quotes_app/features/quotes/screen/quotes_screen.dart';
import 'package:cardinal_quotes_app/features/quotes/widget/featured%20quotes.dart';
import 'package:cardinal_quotes_app/features/quotes/widget/memorial%20cards.dart';
import 'package:cardinal_quotes_app/features/home/screen/widger/selection_header.dart';
import 'package:cardinal_quotes_app/features/home/screen/widger/top_bar.dart';
import 'package:cardinal_quotes_app/utilis/assets_path.dart';
import 'package:cardinal_quotes_app/walpaper/widget/walpaper_features.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String home = '/homescreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const TopBar(), backgroundColor: Colors.red),
      drawer: Drawers(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 6),
              CategoryScreen(),
              const SizedBox(height: 12),
              SelectionHeader(text: 'Features', ontap: () {}),
              const SizedBox(height: 6),
              WalpaperFeatures(),
              const SizedBox(height: 12),
              SelectionHeader(
                text: 'Featured Quotes',
                ontap: () {
                  Navigator.pushNamed(context, QuotesScreen.home);
                },
              ),
              const SizedBox(height: 6),
              Featuredquotes(),
              const SizedBox(height: 12),
              SelectionHeader(text: 'Featured Memorial Cards', ontap: () {}),
              const SizedBox(height: 6),
              Memorialcards(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
