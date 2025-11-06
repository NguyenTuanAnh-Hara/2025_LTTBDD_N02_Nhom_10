import 'package:flutter/material.dart';
    import 'package:google_fonts/google_fonts.dart';
    
    class AppTheme {
      static const Color primaryColor = Color(0xFFF28944);
      static const Color backgroundColor = Color(0xFFF9F9F9);
      static const Color textColor = Color(0xFF333333);
      static const Color subTextColor = Color(0xFF8A8A8A);
    
      static ThemeData get lightTheme {
        final baseTheme = ThemeData(
          brightness: Brightness.light,
          primaryColor: primaryColor,
          scaffoldBackgroundColor: backgroundColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: backgroundColor,
            elevation: 0,
            iconTheme: IconThemeData(color: textColor),
          ),
          colorScheme: const ColorScheme.light(
            primary: primaryColor,
            secondary: primaryColor,
            surface: backgroundColor,
          ),
        );
    
        return baseTheme.copyWith(
          textTheme: GoogleFonts.poppinsTextTheme(baseTheme.textTheme).copyWith(
            displayLarge: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
            titleLarge: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
            titleMedium: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
            bodyMedium: GoogleFonts.poppins(
              fontSize: 14,
              color: textColor,
            ),
            bodySmall: GoogleFonts.poppins(
              fontSize: 12,
              color: subTextColor,
            ),
          ),
        );
      }
    }