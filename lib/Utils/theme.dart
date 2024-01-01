import 'package:find_the_match/Utils/colors.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  primaryColor: AppColors.PRIMARY_DARK,
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.PRIMARY_DARK),
  useMaterial3: true,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: AppColors.ACCENT_DARK,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
);
