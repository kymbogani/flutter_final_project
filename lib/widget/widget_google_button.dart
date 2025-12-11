import 'package:finalproject/theme/theme_colors.dart';
import 'package:flutter/material.dart';


class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.googleBorder),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Image(
            image: AssetImage("assets/google.png"),
            height: 22,
          ),
          SizedBox(width: 10),
          Text("Google", style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
