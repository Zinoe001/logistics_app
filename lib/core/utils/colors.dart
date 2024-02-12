import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = const Color(0xFF07C816);
  static Color secondaryColor = const Color(0xFF02A602);
  static MaterialColor white = MaterialColor(0xFFFFFFFF, _whiteColor);
  static MaterialColor black = MaterialColor(0xff000000, _blackColor);
  static MaterialColor grey = MaterialColor(0xFF1D3A70, _greyColor);
}
Map<int, Color> _whiteColor = {
 50: const Color(0xFFFFFFFF).withOpacity(0.1),
  100: const Color(0xFFFFFFFF).withOpacity(0.2),
  200: const Color(0xFFFFFFFF).withOpacity(0.3),
  300: const Color(0xFFFFFFFF).withOpacity(0.4),
  400: const Color(0xFFFFFFFF).withOpacity(0.5),
  500: const Color(0xFFFFFFFF).withOpacity(0.6),
  600: const Color(0xFFFFFFFF).withOpacity(0.7),
  700: const Color(0xFFFFFFFF).withOpacity(0.8),
  800: const Color(0xFFFFFFFF).withOpacity(0.9),
  900: const Color(0xFFFFFFFF),
};
Map<int, Color> _blackColor = {
  50: const Color(0xff000000).withOpacity(0.1),
  100: const Color(0xff000000).withOpacity(0.2),
  200: const Color(0xff000000).withOpacity(0.3),
  300: const Color(0xff000000).withOpacity(0.4),
  400: const Color(0xff000000).withOpacity(0.5),
  500: const Color(0xff000000).withOpacity(0.6),
  600: const Color(0xff000000).withOpacity(0.7),
  700: const Color(0xff000000).withOpacity(0.8),
  800: const Color(0xff000000).withOpacity(0.9),
  900: const Color(0xff000000),
};
 Map<int, Color> _greyColor = {
  50: const Color(0xFF8A8D8A).withOpacity(0.1),
  100: const Color(0xFF8A8D8A).withOpacity(0.2),
  200: const Color(0xFF8A8D8A).withOpacity(0.3),
  300: const Color(0xFF8A8D8A).withOpacity(0.4),
  400: const Color(0xFF8A8D8A).withOpacity(0.5),
  500: const Color(0xFF8A8D8A).withOpacity(0.6),
  600: const Color(0xFF8A8D8A).withOpacity(0.7),
  700: const Color(0xFF8A8D8A).withOpacity(0.8),
  800: const Color(0xFF8A8D8A).withOpacity(0.9),
  900: const Color(0xFF8A8D8A),
};
