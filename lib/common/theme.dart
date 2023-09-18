import 'package:flutter/material.dart';

final appTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  fontFamily: 'Montserrat',
  textTheme: const TextTheme(
    titleLarge: TextStyle(fontFamily: 'MontserratSemiBold'),
    titleMedium: TextStyle(fontFamily: 'MontserratSemiBold'),
    titleSmall: TextStyle(fontFamily: 'MontserratSemiBold'),
    labelLarge: TextStyle(fontFamily: 'MontserratSemiBold'),
    labelMedium: TextStyle(fontFamily: 'MontserratSemiBold'),
    labelSmall: TextStyle(fontFamily: 'MontserratSemiBold'),
  ),
  colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFFa04025),
      onPrimary: Color(0xFFffffff),
      secondary: Color(0xFF77574e),
      onSecondary: Color(0xFFffffff),
      tertiary: Color(0xFF6c5d2e),
      onTertiary: Color(0xFFffffff),
      error: Color(0xFFba1a1a),
      onError: Color(0xFFffffff),
      background: Color(0xFFfffbff),
      onBackground: Color(0xFF201a19),
      surface: Color(0xFFfffbff),
      onSurface: Color(0xFF201a19),
      errorContainer: Color(0xFFffdad6),
      onErrorContainer: Color(0xFF410002),
      outline: Color(0xFF85736e)),
);
