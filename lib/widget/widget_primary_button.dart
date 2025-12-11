import 'package:finalproject/theme/theme_colors.dart';
import 'package:finalproject/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;

  const PrimaryButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 15),
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: const LinearGradient(
          colors: [AppColors.gradientStart, AppColors.gradientEnd],
        ),
      ),
      alignment: Alignment.center,
      child: Text(text, style: AppTextStyles.button),
    );
  }
}
