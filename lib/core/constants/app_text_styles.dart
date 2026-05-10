import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  // Headings
  static const TextStyle headingLarge = TextStyle(
      fontSize: 24, fontWeight: FontWeight.w600, color: AppColors.textBlack);


  // Titles
  static const TextStyle titleMedium = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.textBlack);

  // Body
  static const TextStyle bodyRegular = TextStyle(
      fontSize: 14, fontWeight: FontWeight.normal, color: AppColors.textGrey);

  // Keypad or Special
  static const TextStyle keypadStyle = TextStyle(
      fontSize: 24, fontWeight: FontWeight.w500, color: AppColors.textBlack);
}
