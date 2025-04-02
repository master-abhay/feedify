import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:feedify/core/themes/themes.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  // textTheme: GoogleFonts.poppinsTextTheme(),
  textTheme: TextTheme(
    displayLarge: GoogleFonts.poppins(
      fontSize: 57.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.25,
      color: Colors.black,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 45.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      color: Colors.black,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 36.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      color: Colors.black,
    ),
    headlineLarge: GoogleFonts.poppins(
      fontSize: 32.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      color: Colors.black,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 28.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      color: Colors.black,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      color: Colors.black,
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: 22.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.0,
      color: Colors.black,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      color: Colors.black,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: Colors.black,
    ),
    bodyLarge: GoogleFonts.poppins(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: Colors.black,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.black,
    ),
    bodySmall: GoogleFonts.poppins(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: Colors.black,
    ),
    labelLarge: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
      color: Colors.black,
    ),
    labelMedium: GoogleFonts.poppins(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.5,
      color: Colors.black,
    ),
    labelSmall: GoogleFonts.poppins(
      fontSize: 11.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.5,
      color: Colors.black,
    ),
  ),
  iconTheme: const IconThemeData(
    color: AppColors.warmGray,
  ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(iconColor: WidgetStateProperty.resolveWith((state){
      return AppColors.warmGray;
    }))
  ),
  colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.brightRed,
      onPrimary: AppColors.lightPink,
      secondary: AppColors.brightRed,
      onSecondary: AppColors.brightRed,
      error: AppColors.brightRed,
      onError: AppColors.brightRed,
      surface: AppColors.brightRed,
      onSurface: AppColors.brightRed,
  ),
  scaffoldBackgroundColor: Colors.white,
);
