import 'package:flutter/material.dart';

class AppColors {
  // === PRIMARY COLORS ===
  static const Color primary = Color(0xFFFF5722); // Main orange/coral
  static const Color primaryLight = Color(0xFFFF7043); // Lighter shade

  // === BACKGROUND COLORS ===
  static const Color background = Color(0xFFFAFAFA); // Screen background
  static const Color surface = Color(0xFFFFFFFF); // Cards, containers

  // === TEXT COLORS ===
  static const Color textPrimary = Color(0xFF212121); // Main text
  static const Color textSecondary = Color(0xFF757575); // Secondary text
  static const Color textHint = Color(0xFFBDBDBD); // Placeholder text

  // === ACCENT COLORS ===
  static const Color success = Color(
    0xFF4CAF50,
  ); // Green (delivered, free shipping)
  static const Color error = Color(0xFFFF5252); // Red (badges, errors)
  static const Color info = Color(0xFF2196F3); // Blue (shipped)
  static const Color warning = Color(0xFFFFC107); // Yellow/Orange (processing)

  // === UI ELEMENTS ===
  static const Color border = Color(0xFFE0E0E0); // Borders, dividers
  static const Color iconGray = Color(0xFF9E9E9E); // Inactive icons

  // === GRADIENT ===
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFFFF5722), Color(0xFFFF7043)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
