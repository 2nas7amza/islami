import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:islami/uitles/App_Colors.dart';

class AppTextStyle{
  static TextStyle bold16White = GoogleFonts.elMessiri(
    color: AppColors.whiteColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle bold124White = GoogleFonts.elMessiri(
    color: AppColors.whiteColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static TextStyle bold16black = GoogleFonts.elMessiri(
    color: AppColors.blackColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle bold24Black = GoogleFonts.elMessiri(
    color: AppColors.blackColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static TextStyle bold16Primary = GoogleFonts.elMessiri(
    color: AppColors.primaryColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle bold12white = GoogleFonts.elMessiri(
    color: AppColors.whiteColor,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
  static TextStyle bold24Primary = GoogleFonts.elMessiri(
    color: AppColors.primaryColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );


}