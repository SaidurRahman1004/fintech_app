import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppTheme {
  // Use 'static' to access it without creating an instance
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.scaffoldBG,
    useMaterial3: true,

    // AppBar Theme (Home screen top section)
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),

    // Elevated Button Theme (Login screen 'Next' button)
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius
              .zero, // Rectangular button as per screenshot
        ),
      ),
    ),

    // Custom Font Family (If you use Google fonts later)
    fontFamily: 'Roboto',
  );
}