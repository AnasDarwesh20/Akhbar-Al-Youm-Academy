import 'package:akbar_al_youm_app/mobile_app/core/style/colors/light_colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() =>
    ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: AppPrimaryThemeColors.appBarPrimaryColor,
          elevation: 0.0
      ),
      textTheme: const TextTheme(
        labelSmall: TextStyle(
          color: AppPrimaryThemeColors.textPrimaryColor,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      scaffoldBackgroundColor: AppPrimaryThemeColors.backgroundPrimaryColor,
    );
