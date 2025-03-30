import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:feedify/core/themes/themes.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  textTheme: GoogleFonts.poppinsTextTheme(),
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: AppColors.brightRed,
    primary: AppColors.brightRed,
    onPrimary: AppColors.lightPink,
  ),
  scaffoldBackgroundColor: Colors.white
);
