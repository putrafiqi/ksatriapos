import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract final class AppTextTheme {
  const AppTextTheme._();

  static final plusJakartaSans = GoogleFonts.plusJakartaSansTextTheme();
  static final inter = GoogleFonts.interTextTheme();

  static final textTheme = TextTheme(
    displayLarge: plusJakartaSans.displayLarge,
    displayMedium: plusJakartaSans.displayMedium,
    displaySmall: plusJakartaSans.displaySmall,
    headlineLarge: plusJakartaSans.headlineLarge,
    headlineMedium: plusJakartaSans.headlineMedium,
    headlineSmall: plusJakartaSans.headlineSmall,
    titleLarge: plusJakartaSans.titleLarge,
    titleMedium: plusJakartaSans.titleMedium,
    titleSmall: plusJakartaSans.titleSmall,
    bodyLarge: inter.bodyLarge,
    bodyMedium: inter.bodyMedium,
    bodySmall: inter.bodySmall,
    labelLarge: inter.labelLarge,
    labelMedium: inter.labelMedium,
    labelSmall: inter.labelSmall,
  );
}
