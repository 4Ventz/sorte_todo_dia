import 'package:flutter/material.dart';
import 'package:sorte_todo_dia/src/shared/theme/app_colors.dart';
import 'package:sorte_todo_dia/src/shared/theme/app_text_theme.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    useMaterial3: true,
    textTheme: AppTextTheme.appTextTheme,
    primarySwatch: AppColors.primarySwatch,
  );
}
