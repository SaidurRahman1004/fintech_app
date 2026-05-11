import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  // Headings
  static const TextStyle headingLarge = TextStyle(
      fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.textBlack);

  // Titles
  static const TextStyle titleMedium = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.textBlack);

  static const TextStyle titleSmall = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.textBlack);

  // Labels
  static const TextStyle labelMedium = TextStyle(
      fontSize: 13, fontWeight: FontWeight.w400, color: AppColors.textGrey);

  // Body
  static const TextStyle bodyBold = TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.textBlack);

  static const TextStyle bodyRegular = TextStyle(
      fontSize: 15, fontWeight: FontWeight.normal, color: AppColors.textBlack);

  // Keypad or Special
  static const TextStyle keypadStyle = TextStyle(
      fontSize: 28, fontWeight: FontWeight.w400, color: AppColors.textBlack);

  static const TextStyle buttonText = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.white);

  static const TextStyle linkStyle = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.primary);
}
