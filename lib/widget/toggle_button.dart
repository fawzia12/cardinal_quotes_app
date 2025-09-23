import 'package:cardinal_quotes_app/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class ToggleButton extends StatelessWidget {
  final String text;
  final bool isActive;
  final VoidCallback onTap;

  const ToggleButton({
    super.key,
    required this.text,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        backgroundColor: isActive ? AppColors.primary : Colors.transparent,
        foregroundColor: isActive ? Colors.white : AppColors.outline,
        side: isActive ? null : BorderSide(color: AppColors.primary, width: 2),
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 13),
      ),
      child: Text(text),
    );
  }
}
