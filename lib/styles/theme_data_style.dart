import 'package:flutter/material.dart';

class ThemeDataStyle {
  
  static ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: Color(0xFFF7F7F7),  // Light grey background
      primary: Color(0xFF6200EA),     // Modern deep purple
      secondary: Color(0xFF03DAC6),   // Teal accent
      surface: Color(0xFFFFFFFF),     // White surface
      onPrimary: Color(0xFFFFFFFF),   // White text on primary color
      onSecondary: Color(0xFF000000), // Black text on secondary color
      onBackground: Color(0xFF000000),// Black text on background
      onSurface: Color(0xFF000000),   // Black text on surface
    ),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: Color(0xFF121212),  // Dark grey background
      primary: Color(0xFFBB86FC),     // Light purple
      secondary: Color(0xFF03DAC6),   // Teal accent
      surface: Color(0xFF1E1E1E),     // Darker surface
      onPrimary: Color(0xFF000000),   // Black text on primary color
      onSecondary: Color(0xFF000000), // Black text on secondary color
      onBackground: Color(0xFFFFFFFF),// White text on background
      onSurface: Color(0xFFFFFFFF),   // White text on surface
    ),
  );

}
