import 'package:flutter/material.dart';
import 'package:new_project/core/constants/colors.dart';


class AppTheme {
  static ColorScheme lightTheme = ColorScheme.light(
    primary: AppColors.primaryColor!
  );
  static final light = ThemeData(
    useMaterial3: true,
    colorScheme: lightTheme,
  );
}
