import 'package:flutter/material.dart';
import 'package:islami/uitles/App_Colors.dart';

class AppTheme{
  static final ThemeData darkTheme=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.whiteColor,
      unselectedItemColor: AppColors.blackColor,
      ),
    );

}