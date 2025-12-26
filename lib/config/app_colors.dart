import 'package:flutter/material.dart';

/// Application color palette for visual identity
/// This file contains the official color palette to be used throughout the Mziba application.
class AppColors {
  // Primary color palette - from darkest to lightest
  static const Color primary1 = Color(0xFF7400B8);  // #7400B8
  static const Color primary2 = Color(0xFF6930C3);  // #6930C3
  static const Color primary3 = Color(0xFF5E60CE);  // #5E60CE
  static const Color primary4 = Color(0xFF5390D9);  // #5390D9
  static const Color primary5 = Color(0xFF4EA8DE);  // #4EA8DE
  static const Color primary6 = Color(0xFF48BFE3);  // #48BFE3
  static const Color primary7 = Color(0xFF56CFE1);  // #56CFE1
  static const Color primary8 = Color(0xFF64DFDF);  // #64DFDF
  static const Color primary9 = Color(0xFF72EFDD);  // #72EFDD
  static const Color primary10 = Color(0xFF80FFDB); // #80FFDB

  // Main application colors
  static const Color primaryColor = primary1;       // Main brand color
  static const Color secondaryColor = primary4;     // Secondary brand color
  static const Color accentColor = primary7;        // Accent color for highlights

  // Gradient colors
  static const List<Color> primaryGradient = [
    primary1,
    primary5,
    primary10,
  ];

  static const List<Color> fullGradient = [
    primary1,
    primary2,
    primary3,
    primary4,
    primary5,
    primary6,
    primary7,
    primary8,
    primary9,
    primary10,
  ];

  // Color scheme for light theme
  static ColorScheme get lightColorScheme => ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        tertiary: accentColor,
        surface: Colors.white,
        error: Colors.red,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.black87,
        onError: Colors.white,
      );

  // Color scheme for dark theme
  static ColorScheme get darkColorScheme => ColorScheme.dark(
        primary: primary7,
        secondary: primary5,
        tertiary: primary9,
        surface: const Color(0xFF121212),
        error: Colors.redAccent,
        onPrimary: Colors.black,
        onSecondary: Colors.black,
        onSurface: Colors.white,
        onError: Colors.black,
      );

  // Utility method to create a linear gradient
  static LinearGradient createGradient({
    List<Color>? colors,
    AlignmentGeometry begin = Alignment.topLeft,
    AlignmentGeometry end = Alignment.bottomRight,
  }) {
    return LinearGradient(
      colors: colors ?? primaryGradient,
      begin: begin,
      end: end,
    );
  }

  // Prevent instantiation
  AppColors._();
}
