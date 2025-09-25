import 'package:cardinal_quotes_app/utilis/app_colors.dart';
import 'package:cardinal_quotes_app/utilis/assets_path.dart';
import 'package:flutter/material.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  TextEditingController _tittle = TextEditingController();
  TextEditingController _note = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightBackground,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      backgroundColor: AppColors.lightBackground,
      body: Padding(
        padding: const EdgeInsets.only(top: 17, left: 20, right: 20),
        child: Column(
          children: [
            TextField(
              controller: _tittle,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              decoration: InputDecoration(
                hintText: 'Title',
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              flex: 5,
              child: TextField(
                controller: _tittle,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                decoration: InputDecoration(
                  hintText: 'Note',
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
