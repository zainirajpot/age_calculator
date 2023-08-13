import 'package:age_calculator/Custom_Widgets/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllTextCalculte extends StatelessWidget {
  final String text;

  const AllTextCalculte({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.textcolor),
    );
  }
}
