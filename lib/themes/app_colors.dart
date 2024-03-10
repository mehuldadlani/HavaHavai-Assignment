import 'package:flutter/material.dart';

extension ColorSchemeExtension on ColorScheme {
  Color get primaryVariant => brightness == Brightness.dark
      ? const Color(0xFF6A1B9A)
      : const Color(0xFF6A1B9A);
  Color get secondaryVariant => const Color(0xFFD50000);

  Color get background => brightness == Brightness.dark
      ? const Color(0xFF000000)
      : const Color(0xFFFFFFFF);
}
